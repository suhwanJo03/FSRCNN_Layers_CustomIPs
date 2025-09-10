def reorder_data_bottom_up_keep_indices(input_file, output_file, width=320, height=180):
    with open(input_file, 'r') as f:
        lines = f.readlines()

    # 헤더 처리
    if lines[0].strip().startswith("#"):
        header = lines[0]
        lines = lines[1:]
    else:
        header = ""

    if len(lines) != width * height:
        raise ValueError(f"입력 줄 수({len(lines)})가 {width}x{height}와 일치하지 않습니다.")

    # 2D 데이터 배열 생성: data[y][x] = HEX
    data_grid = [[None for _ in range(width)] for _ in range(height)]
    for line in lines:
        parts = line.strip().split()
        if len(parts) != 3:
            continue
        x, y, data = int(parts[0]), int(parts[1]), parts[2]
        data_grid[y][x] = data

    # 기존 인덱스를 유지하고, 데이터만 y축 반전
    reordered_lines = []
    for line in lines:
        x, y, _ = line.strip().split()
        x = int(x)
        y = int(y)
        flipped_y = height - 1 - y  # bottom-up 매핑
        new_data = data_grid[flipped_y][x]
        reordered_lines.append(f"{x} {y} {new_data}")

    # 출력 저장
    with open(output_file, 'w') as f:
        if header:
            f.write(header)
        for line in reordered_lines:
            f.write(line + "\n")

# 사용 예시
reorder_data_bottom_up_keep_indices("input_pixels1.txt", "input_pixels2.txt")

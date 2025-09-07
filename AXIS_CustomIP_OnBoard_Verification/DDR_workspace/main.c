/*
 * main.c
 *
 * Created on: 2025. 7. 22.
 * Author: JSH
 */

#include "xil_printf.h"
#include "xil_cache.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "sleep.h"
#include "xuartps.h"
#include "platform.h"
#include "frame1.h"
#include "frame2.h"

#define IN_WIDTH    320
#define IN_HEIGHT   180
#define OUT_WIDTH    1280
#define OUT_HEIGHT   720
#define INPUT_CHANNEL 16
#define OUTPUT_CHANNEL 1
#define IN_PIXELS   (IN_WIDTH * IN_HEIGHT)
#define OUT_PIXELS   (OUT_WIDTH * OUT_HEIGHT)
#define IN_FRAME_BYTES  (IN_PIXELS * INPUT_CHANNEL)
#define OUT_FRAME_BYTES  (OUT_PIXELS * OUTPUT_CHANNEL)

u32 checkHalted(u32 baseAddress, u32 offset);

int main() {
    XAxiDma_Config *myDmaConfig;
    XAxiDma myDma;
    u32 status;
    static u8 rx_buffer1[OUT_FRAME_BYTES] __attribute__((aligned(64)));
    static u8 rx_buffer2[OUT_FRAME_BYTES] __attribute__((aligned(64)));

    init_platform();

    myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
    status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
    if (status != XST_SUCCESS) {
        xil_printf("DMA initialization failed\r\n");
        return -1;
    }
    xil_printf("DMA initialization success..\r\n");

    xil_printf("Starting in:\r\n");
    for (int t = 1; t <= 20; ++t) {
        sleep(1);
        xil_printf("  %2d sec\r\n", t);
    }

    status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x4);
    xil_printf("Status before data transfer: %0x\r\n", status);

    /************* FRAME 1 *************/
    xil_printf("=== FRAME 1 START ===\r\n");

    // Cache flush
    Xil_DCacheFlushRange((UINTPTR)frame1_data, IN_FRAME_BYTES);

    // S2MM
    status = XAxiDma_SimpleTransfer(&myDma, (UINTPTR)rx_buffer1, OUT_FRAME_BYTES, XAXIDMA_DEVICE_TO_DMA);
    if (status != XST_SUCCESS) {
        xil_printf("FRAME 1 DMA Transfer setup failed (channel: S2MM)\r\n");
    }
    // MM2S
    status = XAxiDma_SimpleTransfer(&myDma, (UINTPTR)frame1_data, IN_FRAME_BYTES, XAXIDMA_DMA_TO_DEVICE);
    if (status != XST_SUCCESS) {
        xil_printf("FRAME 1 DMA Transfer setup failed (channel: MM2S)\r\n");
    }

    // Busy
    xil_printf("Waiting for FRAME 1 DMA completion...\r\n");
    while(XAxiDma_Busy(&myDma, XAXIDMA_DMA_TO_DEVICE));
    while(XAxiDma_Busy(&myDma, XAXIDMA_DEVICE_TO_DMA));
    xil_printf("MM2S Busy? %d  S2MM Busy? %d\r\n",
               XAxiDma_Busy(&myDma, XAXIDMA_DMA_TO_DEVICE),
               XAxiDma_Busy(&myDma, XAXIDMA_DEVICE_TO_DMA));

    Xil_DCacheInvalidateRange((UINTPTR)rx_buffer1, OUT_FRAME_BYTES);

    xil_printf("=== FRAME 1 RX DATA ===\r\n");
    for (int i = 0; i < 32; i++) {
        xil_printf("[%d] received: %0x\r\n", i, rx_buffer1[i]);
    }
    for (int i = 921568; i < 921600; i++) {
        xil_printf("[%d] received: %0x\r\n", i, rx_buffer1[i]);
    }

    xil_printf("Starting in:\r\n");
    for (int t = 1; t <= 20; ++t) {
        sleep(1);
        xil_printf("  %2d sec\r\n", t);
    }

    /************* FRAME 2 *************/
    xil_printf("=== FRAME 2 START ===\r\n");
    // Cache flush
    Xil_DCacheFlushRange((UINTPTR)frame2_data, IN_FRAME_BYTES);

    // S2MM
    status = XAxiDma_SimpleTransfer(&myDma, (UINTPTR)rx_buffer2, OUT_FRAME_BYTES, XAXIDMA_DEVICE_TO_DMA);
    if (status != XST_SUCCESS) {
        xil_printf("FRAME 2 DMA Transfer setup failed (channel: S2MM)\r\n");
    }
    // MM2S
    status = XAxiDma_SimpleTransfer(&myDma, (UINTPTR)frame2_data, IN_FRAME_BYTES, XAXIDMA_DMA_TO_DEVICE);
    if (status != XST_SUCCESS) {
        xil_printf("FRAME 2 DMA Transfer setup failed (channel: MM2S)\r\n");
    }
    // Busy
    xil_printf("Waiting for FRAME 2 DMA completion...\r\n");
    while(XAxiDma_Busy(&myDma, XAXIDMA_DMA_TO_DEVICE));
    while(XAxiDma_Busy(&myDma, XAXIDMA_DEVICE_TO_DMA));
    xil_printf("MM2S Busy? %d  S2MM Busy? %d\r\n",
               XAxiDma_Busy(&myDma, XAXIDMA_DMA_TO_DEVICE),
               XAxiDma_Busy(&myDma, XAXIDMA_DEVICE_TO_DMA));

    Xil_DCacheInvalidateRange((UINTPTR)rx_buffer2, OUT_FRAME_BYTES);

    xil_printf("=== FRAME 2 RX DATA ===\r\n");
    for (int i = 0; i < 32; i++) {
        xil_printf("[%d] received: %0x\r\n", i, rx_buffer2[i]);
    }
    for (int i = 921568; i < 921600; i++) {
        xil_printf("[%d] received: %0x\r\n", i, rx_buffer2[i]);
    }

    xil_printf("=== ALL FRAMES DONE ===\r\n");

    cleanup_platform();
    return 0;
}

u32 checkHalted(u32 baseAddress, u32 offset) {
    u32 status;
    status = (XAxiDma_ReadReg(baseAddress, offset)) & XAXIDMA_HALTED_MASK;
    return status;
}

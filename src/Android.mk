# Copyright 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

###############################################
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
        dsp/cost.c \
        dsp/cost_mips32.c \
        dsp/cost_mips_dsp_r2.c \
        dsp/cost_neon.c \
        dsp/cost_sse2.c \
        dsp/cpu.c \
        dsp/enc.c \
        dsp/enc_mips32.c \
        dsp/enc_mips_dsp_r2.c \
        dsp/enc_msa.c \
        dsp/enc_neon.c \
        dsp/enc_sse2.c \
        dsp/enc_sse41.c \
        dsp/lossless_enc.c \
        dsp/lossless_enc_mips32.c \
        dsp/lossless_enc_mips_dsp_r2.c \
        dsp/lossless_enc_msa.c \
        dsp/lossless_enc_neon.c \
        dsp/lossless_enc_sse2.c \
        dsp/lossless_enc_sse41.c \
        dsp/ssim.c \
        dsp/ssim_sse2.c \
        enc/alpha_enc.c \
        enc/analysis_enc.c \
        enc/backward_references_cost_enc.c \
        enc/backward_references_enc.c \
        enc/config_enc.c \
        enc/cost_enc.c \
        enc/filter_enc.c \
        enc/frame_enc.c \
        enc/histogram_enc.c \
        enc/iterator_enc.c \
        enc/near_lossless_enc.c \
        enc/picture_csp_enc.c \
        enc/picture_enc.c \
        enc/picture_psnr_enc.c \
        enc/picture_rescale_enc.c \
        enc/picture_tools_enc.c \
        enc/predictor_enc.c \
        enc/quant_enc.c \
        enc/syntax_enc.c \
        enc/token_enc.c \
        enc/tree_enc.c \
        enc/vp8l_enc.c \
        enc/webp_enc.c \
        mux/anim_encode.c \
        mux/muxedit.c \
        mux/muxinternal.c \
        mux/muxread.c \
        utils/bit_writer_utils.c \
        utils/filters_utils.c \
        utils/huffman_encode_utils.c \
        utils/quant_levels_utils.c

LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -O2 -DANDROID -DWEBP_SWAP_16BIT_CSP -DWEBP_USE_THREAD

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/enc \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../include

LOCAL_MODULE := libwebp-encode

LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk

include $(BUILD_STATIC_LIBRARY)

###############################################

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
        dec/alpha_dec.c \
        dec/buffer_dec.c \
        dec/frame_dec.c \
        dec/idec_dec.c \
        dec/io_dec.c \
        dec/quant_dec.c \
        dec/tree_dec.c \
        dec/vp8_dec.c \
        dec/vp8l_dec.c \
        dec/webp_dec.c \
        demux/anim_decode.c \
        demux/demux.c \
        dsp/alpha_processing.c \
        dsp/alpha_processing_mips_dsp_r2.c \
        dsp/alpha_processing_neon.c \
        dsp/alpha_processing_sse2.c \
        dsp/alpha_processing_sse41.c \
        dsp/cpu.c \
        dsp/dec.c \
        dsp/dec_clip_tables.c \
        dsp/dec_mips32.c \
        dsp/dec_mips_dsp_r2.c \
        dsp/dec_msa.c \
        dsp/dec_neon.c \
        dsp/dec_sse2.c \
        dsp/dec_sse41.c \
        dsp/filters.c \
        dsp/filters_mips_dsp_r2.c \
        dsp/filters_msa.c \
        dsp/filters_neon.c \
        dsp/filters_sse2.c \
        dsp/lossless.c \
        dsp/lossless_mips_dsp_r2.c \
        dsp/lossless_msa.c \
        dsp/lossless_neon.c \
        dsp/lossless_sse2.c \
        dsp/rescaler.c \
        dsp/rescaler_mips32.c \
        dsp/rescaler_mips_dsp_r2.c \
        dsp/rescaler_msa.c \
        dsp/rescaler_neon.c \
        dsp/rescaler_sse2.c \
        dsp/upsampling.c \
        dsp/upsampling_mips_dsp_r2.c \
        dsp/upsampling_msa.c \
        dsp/upsampling_neon.c \
        dsp/upsampling_sse2.c \
        dsp/upsampling_sse41.c \
        dsp/yuv.c \
        dsp/yuv_mips32.c \
        dsp/yuv_mips_dsp_r2.c \
        dsp/yuv_neon.c \
        dsp/yuv_sse2.c \
        dsp/yuv_sse41.c \
        utils/bit_reader_utils.c \
        utils/color_cache_utils.c \
        utils/filters_utils.c \
        utils/huffman_utils.c \
        utils/quant_levels_dec_utils.c \
        utils/random_utils.c \
        utils/rescaler_utils.c \
        utils/thread_utils.c \
        utils/utils.c

LOCAL_ARM_MODE := arm
LOCAL_CFLAGS := -O2 -DANDROID -DWEBP_SWAP_16BIT_CSP -DWEBP_USE_THREAD

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/dec \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../include

LOCAL_SDK_VERSION := 9

LOCAL_MODULE := libwebp-decode

LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.mk

include $(BUILD_STATIC_LIBRARY)

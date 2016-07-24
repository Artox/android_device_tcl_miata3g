LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET) $(INSTALLED_DTIMAGE_TARGET)

# include the non-open-source counterpart to this file
-include vendor/tcl/miata3g/AndroidBoardVendor.mk

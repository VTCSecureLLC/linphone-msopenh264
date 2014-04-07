LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libmsopenh264


LOCAL_SRC_FILES = src/msopenh264.cpp src/msopenh264dec.cpp src/msopenh264enc.cpp


LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../linphone/oRTP/include \
	$(LOCAL_PATH)/../linphone/mediastreamer2/include \
	$(LOCAL_PATH)/../externals/build/openh264/include

LOCAL_CFLAGS += -DVERSION=\"android\"

include $(BUILD_STATIC_LIBRARY)



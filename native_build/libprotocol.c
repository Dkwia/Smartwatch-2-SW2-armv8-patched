#include <jni.h>
#include <stdint.h>
#include <stdlib.h>
#include "my_string.h"

static const jint s_cids[43] = {
    2521, 2509, 2517, 2501, 7114, 7130, 7131, 7133, 7140, 7124,
    7121, 7122, 7125, 7126, 7139, 7128, 457, 9418, 0, 1,
    6, 0, 7501, 7509, 7510, 7502, 7503, 7504, 7505, 7508,
    7506, 7507, 7511, 7512, 7513, 7514, 900, 901, 902, 903,
    904, 905, 906
};

static inline uint32_t read_u32_le(const uint8_t *p) {
    return (uint32_t)p[0] | ((uint32_t)p[1] << 8) | ((uint32_t)p[2] << 16) | ((uint32_t)p[3] << 24);
}

static inline void write_u32_le(uint8_t *p, uint32_t v) {
    p[0] = (uint8_t)(v & 0xff);
    p[1] = (uint8_t)((v >> 8) & 0xff);
    p[2] = (uint8_t)((v >> 16) & 0xff);
    p[3] = (uint8_t)((v >> 24) & 0xff);
}

static inline uint16_t read_u16_le(const uint8_t *p) {
    return (uint16_t)p[0] | ((uint16_t)p[1] << 8);
}

static inline void write_u16_le(uint8_t *p, uint16_t v) {
    p[0] = (uint8_t)(v & 0xff);
    p[1] = (uint8_t)((v >> 8) & 0xff);
}

static inline uint64_t read_u64_le(const uint8_t *p) {
    return (uint64_t)read_u32_le(p) | ((uint64_t)read_u32_le(p + 4) << 32);
}

static inline void write_u64_le(uint8_t *p, uint64_t v) {
    write_u32_le(p, (uint32_t)(v & 0xffffffff));
    write_u32_le(p + 4, (uint32_t)((v >> 32) & 0xffffffff));
}

JNIEXPORT void JNICALL Java_com_sonymobile_smartconnect_hostapp_Dbg_setDebugLogsEnabled(JNIEnv *env, jclass clazz, jboolean enabled) {
    (void)env; (void)clazz; (void)enabled;
}

JNIEXPORT jintArray JNICALL Java_com_sonymobile_smartconnect_hostapp_protocol_NativeCids_getNativeCids(JNIEnv *env, jclass clazz) {
    (void)clazz;
    jintArray arr = (*env)->NewIntArray(env, 43);
    if (arr) {
        (*env)->SetIntArrayRegion(env, arr, 0, 43, s_cids);
    }
    return arr;
}

JNIEXPORT void JNICALL Java_com_sonymobile_smartconnect_hostapp_protocol_Proto_init(JNIEnv *env, jobject thiz) {
    (void)env; (void)thiz;
}

static jobject create_msg_by_name(JNIEnv *env, const char *className, jint msgId) {
    jclass clazz = (*env)->FindClass(env, className);
    if (!clazz) {
        (*env)->ExceptionClear(env);
        return NULL;
    }
    jmethodID init = (*env)->GetMethodID(env, clazz, "<init>", "(I)V");
    if (!init) {
        (*env)->ExceptionClear(env);
        return NULL;
    }
    return (*env)->NewObject(env, clazz, init, msgId);
}

static void set_int_field(JNIEnv *env, jobject obj, const char *fieldName, jint val) {
    if (!obj) return;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "I");
    if (fid) {
        (*env)->SetIntField(env, obj, fid, val);
    } else {
        (*env)->ExceptionClear(env);
    }
}

static void set_long_field(JNIEnv *env, jobject obj, const char *fieldName, jlong val) {
    if (!obj) return;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "J");
    if (fid) {
        (*env)->SetLongField(env, obj, fid, val);
    } else {
        (*env)->ExceptionClear(env);
    }
}

static void set_boolean_field(JNIEnv *env, jobject obj, const char *fieldName, jboolean val) {
    if (!obj) return;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "Z");
    if (fid) {
        (*env)->SetBooleanField(env, obj, fid, val);
    } else {
        (*env)->ExceptionClear(env);
    }
}

static void set_object_field(JNIEnv *env, jobject obj, const char *fieldName, const char *sig, jobject val) {
    if (!obj) return;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, sig);
    if (fid) {
        (*env)->SetObjectField(env, obj, fid, val);
    } else {
        (*env)->ExceptionClear(env);
    }
}

static void set_string_field(JNIEnv *env, jobject obj, const char *fieldName, const char *val) {
    if (!obj) return;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "Ljava/lang/String;");
    if (fid) {
        jstring str = val ? (*env)->NewStringUTF(env, val) : NULL;
        (*env)->SetObjectField(env, obj, fid, str);
        if (str) (*env)->DeleteLocalRef(env, str);
    } else {
        (*env)->ExceptionClear(env);
    }
}

static jint get_int_field_safe(JNIEnv *env, jobject obj, const char *fieldName, jint def) {
    if (!obj) return def;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "I");
    if (fid) {
        return (*env)->GetIntField(env, obj, fid);
    }
    (*env)->ExceptionClear(env);
    return def;
}

static jlong get_long_field_safe(JNIEnv *env, jobject obj, const char *fieldName, jlong def) {
    if (!obj) return def;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "J");
    if (fid) {
        return (*env)->GetLongField(env, obj, fid);
    }
    (*env)->ExceptionClear(env);
    return def;
}

static jboolean get_boolean_field_safe(JNIEnv *env, jobject obj, const char *fieldName, jboolean def) {
    if (!obj) return def;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "Z");
    if (fid) {
        return (*env)->GetBooleanField(env, obj, fid);
    }
    (*env)->ExceptionClear(env);
    return def;
}

static jobject get_object_field_safe(JNIEnv *env, jobject obj, const char *fieldName, const char *sig) {
    if (!obj) return NULL;
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, sig);
    if (fid) {
        return (*env)->GetObjectField(env, obj, fid);
    }
    (*env)->ExceptionClear(env);
    return NULL;
}

static jobjectArray wrap_in_2d_byte_array(JNIEnv *env, const uint8_t *buffer, uint32_t totalLen, uint32_t msgId) {
    jclass byteArrayClass = (*env)->FindClass(env, "[B");
    if (!byteArrayClass) return NULL;

    if (totalLen <= 512) {
        jobjectArray res = (*env)->NewObjectArray(env, 1, byteArrayClass, NULL);
        if (!res) return NULL;
        jbyteArray b = (*env)->NewByteArray(env, totalLen);
        if (b) {
            (*env)->SetByteArrayRegion(env, b, 0, totalLen, (const jbyte*)buffer);
            (*env)->SetObjectArrayElement(env, res, 0, b);
            (*env)->DeleteLocalRef(env, b);
        }
        return res;
    }

    const uint32_t maxChunk = 492;
    uint32_t numChunks = (totalLen + maxChunk - 1) / maxChunk;
    jobjectArray res = (*env)->NewObjectArray(env, numChunks, byteArrayClass, NULL);
    if (!res) return NULL;

    uint32_t offset = 0;
    uint8_t fragHdr[512];
    for (uint32_t i = 0; i < numChunks; i++) {
        uint32_t chunkLen = (totalLen - offset > maxChunk) ? maxChunk : (totalLen - offset);
        uint32_t fragLen = chunkLen + 20;

        write_u32_le(fragHdr, fragLen);
        write_u32_le(fragHdr + 4, 11);
        write_u32_le(fragHdr + 8, msgId);
        write_u16_le(fragHdr + 12, (uint16_t)i);
        write_u16_le(fragHdr + 14, (uint16_t)numChunks);
        write_u32_le(fragHdr + 16, chunkLen);
        my_memcpy(fragHdr + 20, buffer + offset, chunkLen);

        jbyteArray b = (*env)->NewByteArray(env, fragLen);
        if (b) {
            (*env)->SetByteArrayRegion(env, b, 0, fragLen, (const jbyte*)fragHdr);
            (*env)->SetObjectArrayElement(env, res, i, b);
            (*env)->DeleteLocalRef(env, b);
        }
        offset += chunkLen;
    }
    return res;
}

static uint8_t s_frag_buf[65536];
static uint32_t s_frag_total = 0;
static uint32_t s_frag_received = 0;
static uint32_t s_frag_orig_len = 0;

static jobject unpack_internal(JNIEnv *env, const uint8_t *data, uint32_t len) {
    if (len < 12) return NULL;

    uint32_t totalLen = read_u32_le(data);
    uint32_t type = read_u32_le(data + 4);
    uint32_t msgId = read_u32_le(data + 8);
    if (totalLen >= 12 && totalLen <= len) {
        len = totalLen;
    }

    if (type == 11) {
        if (len < 20) return NULL;
        uint16_t fragIdx = read_u16_le(data + 12);
        uint16_t totalFrags = read_u16_le(data + 14);
        uint32_t payloadLen = len > 20 ? (len - 20) : 0;

        if (fragIdx == 0) {
            s_frag_total = totalFrags;
            s_frag_received = 0;
            s_frag_orig_len = 0;
        }
        if (fragIdx * 492 + payloadLen <= sizeof(s_frag_buf)) {
            my_memcpy(s_frag_buf + fragIdx * 492, data + 20, payloadLen);
            s_frag_received++;
            s_frag_orig_len += payloadLen;
        }
        if (s_frag_received >= s_frag_total && s_frag_total > 0) {
            uint32_t assembledLen = s_frag_orig_len;
            s_frag_total = 0;
            s_frag_received = 0;
            s_frag_orig_len = 0;
            return unpack_internal(env, s_frag_buf, assembledLen);
        }
        return NULL;
    }

    jobject result = NULL;

    switch (type) {
        case 4:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestVersion", msgId);
            break;
        case 5:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseVersion", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mProtocolVersion", (jint)read_u32_le(data + 12));
                if (len > 16) {
                    char fw[32];
                    my_memset(fw, 0, sizeof(fw));
                    uint32_t strLen = len - 16;
                    if (strLen > 31) strLen = 31;
                    for (uint32_t i = 0; i < strLen; i++) {
                        if (data[16 + i] == 0) {
                            strLen = i;
                            break;
                        }
                        fw[i] = (char)data[16 + i];
                    }
                    while (strLen > 0 && ((uint8_t)fw[strLen - 1] <= ' ' || (uint8_t)fw[strLen - 1] > 126)) {
                        strLen--;
                    }
                    fw[strLen] = '\0';
                    set_string_field(env, result, "mFirmwareVersion", fw);
                }
            }
            break;
        case 6:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestFota", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mAction", (jint)read_u32_le(data + 12));
                set_int_field(env, result, "mValue", (jint)read_u32_le(data + 16));
            }
            break;
        case 7:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseFota", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mAction", (jint)read_u32_le(data + 12));
                set_int_field(env, result, "mValue", (jint)read_u32_le(data + 16));
            }
            break;
        case 9:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mAckMessageId", (jint)read_u32_le(data + 12));
            }
            break;
        case 10:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ControlMessageNack", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mNackMessageId", (jint)read_u32_le(data + 12));
            }
            break;
        case 16:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mLocale", (jint)read_u32_le(data + 12));
            }
            break;
        case 18:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel", msgId);
            if (result && len >= 14) {
                set_int_field(env, result, "mPercentage", (jint)read_u16_le(data + 12));
            }
            break;
        case 20:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mStatus", (jint)read_u32_le(data + 14));
            }
            break;
        case 21:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset", msgId);
            if (result && len >= 14) {
                set_int_field(env, result, "mStatus", (jint)read_u16_le(data + 12));
            }
            break;
        case 22:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq", msgId);
            if (result && len >= 20) {
                set_long_field(env, result, "mTime", (jlong)read_u64_le(data + 12));
            }
            break;
        case 104:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestExtension", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mValue", (jint)read_u32_le(data + 14));
            }
            break;
        case 105:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseExtension", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mExtensionCid", (jint)read_u32_le(data + 14));
                set_int_field(env, result, "mValue", (jint)read_u16_le(data + 18));
            }
            break;
        case 106:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestCtrl", msgId);
            break;
        case 107:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mValue", (jint)read_u32_le(data + 14));
            }
            break;
        case 108:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mCid", (jint)read_u32_le(data + 14));
            }
            break;
        case 110:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestNotification", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mValue", (jint)read_u32_le(data + 14));
            }
            break;
        case 112:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationNotification", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mValue", (jint)read_u32_le(data + 14));
            }
            break;
        case 114:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationKey", msgId);
            if (result && len >= 24) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mCode", (jint)read_u16_le(data + 14));
                set_long_field(env, result, "mTimestamp", (jlong)read_u64_le(data + 16));
            }
            break;
        case 115:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationTouch", msgId);
            if (result && len >= 28) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mKey", (jint)read_u16_le(data + 14));
                set_long_field(env, result, "mTimestamp", (jlong)read_u64_le(data + 16));
                set_int_field(env, result, "mX", (jint)read_u16_le(data + 24));
                set_int_field(env, result, "mY", (jint)read_u16_le(data + 26));
            }
            break;
        case 116:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mDirection", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mKey", (jint)read_u16_le(data + 14));
                set_int_field(env, result, "mX", (jint)read_u16_le(data + 16));
                set_int_field(env, result, "mY", (jint)read_u16_le(data + 18));
            }
            break;
        case 117:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mCidToDelete", (jint)read_u32_le(data + 12));
                set_int_field(env, result, "mCidType", (jint)read_u16_le(data + 16));
            }
            break;
        case 124:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/DebugEvent", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mEventId", (jint)read_u16_le(data + 14));
            }
            break;
        case 125:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestSensorData", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mSensorType", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mRate", (jint)read_u16_le(data + 14));
                set_int_field(env, result, "mMode", (jint)read_u16_le(data + 16));
            }
            break;
        case 126:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseSensorData", msgId);
            if (result && len >= 14) {
                set_int_field(env, result, "mStatus", (jint)read_u16_le(data + 12));
            }
            break;
        case 127:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData", msgId);
            if (result && len >= 26) {
                set_int_field(env, result, "mSensorType", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mAccuracy", (jint)read_u16_le(data + 14));
                set_long_field(env, result, "mTimestamp", (jlong)read_u64_le(data + 16));
                set_int_field(env, result, "mDataSize", (jint)read_u16_le(data + 24));
            }
            break;
        case 128:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ConfirmationSensorData", msgId);
            if (result && len >= 14) {
                set_int_field(env, result, "mStatus", (jint)read_u16_le(data + 12));
            }
            break;
        case 129:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestVibration", msgId);
            if (result && len >= 24) {
                set_int_field(env, result, "mOnDuration", (jint)read_u32_le(data + 12));
                set_int_field(env, result, "mOffDuration", (jint)read_u32_le(data + 16));
                set_int_field(env, result, "mRepeats", (jint)read_u32_le(data + 20));
            }
            break;
        case 130:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestSyncTime", msgId);
            break;
        case 131:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mResourceId", (jint)read_u32_le(data + 12));
            }
            break;
        case 132:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mStatus", (jint)read_u32_le(data + 12));
            }
            break;
        case 133:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mTimeZoneOffset", (jint)(int32_t)read_u32_le(data + 12));
            }
            break;
        case 134:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead", msgId);
            if (result && len >= 17) {
                set_int_field(env, result, "mNotificationCid", (jint)read_u32_le(data + 12));
                set_boolean_field(env, result, "mRead", (jboolean)data[16]);
            }
            break;
        case 135:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestNotificationList", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mExtensionCid", (jint)read_u32_le(data + 12));
            }
            break;
        case 136:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mExtensionCid", (jint)read_u32_le(data + 12));
            }
            break;
        case 139:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace", msgId);
            if (result && len >= 30) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                jintArray arr = (*env)->NewIntArray(env, 3);
                if (arr) {
                    jint vals[3];
                    vals[0] = (jint)read_u32_le(data + 14);
                    vals[1] = (jint)read_u32_le(data + 18);
                    vals[2] = (jint)read_u32_le(data + 22);
                    (*env)->SetIntArrayRegion(env, arr, 0, 3, vals);
                    set_object_field(env, result, "mValues", "[I", arr);
                    (*env)->DeleteLocalRef(env, arr);
                }
                set_int_field(env, result, "mTimestamp", (jint)read_u32_le(data + 26));
            }
            break;
        case 140:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mResult", (jint)read_u16_le(data + 14));
                if (len > 16) {
                    int count = (len - 16) / 4;
                    if (count > 0 && count <= 16384) {
                        jintArray arr = (*env)->NewIntArray(env, count);
                        if (arr) {
                            jint chunk[256];
                            int processed = 0;
                            while (processed < count) {
                                int toCopy = count - processed;
                                if (toCopy > 256) toCopy = 256;
                                for (int i = 0; i < toCopy; i++) {
                                    chunk[i] = (jint)read_u32_le(data + 16 + (processed + i) * 4);
                                }
                                (*env)->SetIntArrayRegion(env, arr, processed, toCopy, chunk);
                                processed += toCopy;
                            }
                            set_object_field(env, result, "mValues", "[I", arr);
                            (*env)->DeleteLocalRef(env, arr);
                        }
                    }
                }
            }
            break;
        case 141:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mExtensionCid", (jint)read_u32_le(data + 12));
            }
            break;
        case 142:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestRender", msgId);
            if (result && len >= 24) {
                set_int_field(env, result, "mType", (jint)read_u32_le(data + 12));
                set_int_field(env, result, "mTag", (jint)read_u32_le(data + 16));
                set_int_field(env, result, "mExtensionCid", (jint)read_u32_le(data + 20));
            }
            break;
        case 143:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWidget", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mTag", (jint)read_u16_le(data + 14));
                set_int_field(env, result, "mExtensionCid", (jint)read_u16_le(data + 16));
            }
            break;
        case 144:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch", msgId);
            if (result && len >= 34) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mTag", (jint)read_u16_le(data + 14));
                set_int_field(env, result, "mKey", (jint)read_u16_le(data + 16));
                set_int_field(env, result, "mExtensionCid", (jint)read_u32_le(data + 18));
                set_long_field(env, result, "mTimestamp", (jlong)read_u64_le(data + 22));
                set_int_field(env, result, "mX", (jint)read_u16_le(data + 30));
                set_int_field(env, result, "mY", (jint)read_u16_le(data + 32));
            }
            break;
        case 145:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mCidRangeFirst", (jint)read_u32_le(data + 12));
                set_int_field(env, result, "mCidRangeLast", (jint)read_u32_le(data + 16));
            }
            break;
        case 146:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources", msgId);
            if (result && len >= 22) {
                set_int_field(env, result, "mStatus", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mCidRangeFirst", (jint)read_u32_le(data + 14));
                set_int_field(env, result, "mCidRangeLast", (jint)read_u32_le(data + 18));
            }
            break;
        case 149:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mCid", (jint)read_u32_le(data + 14));
            }
            break;
        case 150:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper", msgId);
            if (result && len >= 22) {
                uint16_t action = read_u16_le(data + 12);
                set_int_field(env, result, "mAction", (jint)action);
                set_int_field(env, result, "mWallpaperCid", (jint)read_u32_le(data + 14));
                if (action == 0) {
                    set_int_field(env, result, "mThumbnailCid", (jint)read_u32_le(data + 18));
                } else {
                    set_int_field(env, result, "mTimestamp", (jint)read_u32_le(data + 18));
                }
            }
            break;
        case 151:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mResult", (jint)read_u16_le(data + 14));
                if (len > 16) {
                    int count = (len - 16) / 4;
                    if (count > 0 && count <= 16384) {
                        jintArray arr = (*env)->NewIntArray(env, count);
                        if (arr) {
                            jint chunk[256];
                            int processed = 0;
                            while (processed < count) {
                                int toCopy = count - processed;
                                if (toCopy > 256) toCopy = 256;
                                for (int i = 0; i < toCopy; i++) {
                                    chunk[i] = (jint)read_u32_le(data + 16 + (processed + i) * 4);
                                }
                                (*env)->SetIntArrayRegion(env, arr, processed, toCopy, chunk);
                                processed += toCopy;
                            }
                            set_object_field(env, result, "mValues", "[I", arr);
                            (*env)->DeleteLocalRef(env, arr);
                        }
                    }
                }
            }
            break;
        case 152:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mCid", (jint)read_u32_le(data + 14));
            }
            break;
        case 153:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps", msgId);
            if (result && len >= 14) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                if (len > 14) {
                    int count = (len - 14) / 4;
                    if (count > 0 && count <= 16384) {
                        jintArray arr = (*env)->NewIntArray(env, count);
                        if (arr) {
                            jint chunk[256];
                            int processed = 0;
                            while (processed < count) {
                                int toCopy = count - processed;
                                if (toCopy > 256) toCopy = 256;
                                for (int i = 0; i < toCopy; i++) {
                                    chunk[i] = (jint)read_u32_le(data + 14 + (processed + i) * 4);
                                }
                                (*env)->SetIntArrayRegion(env, arr, processed, toCopy, chunk);
                                processed += toCopy;
                            }
                            set_object_field(env, result, "mAppsCids", "[I", arr);
                            (*env)->DeleteLocalRef(env, arr);
                        }
                    }
                }
            }
            break;
        case 154:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mResult", (jint)read_u16_le(data + 14));
                uint16_t count = read_u16_le(data + 16);
                set_int_field(env, result, "mCount", (jint)count);
                if (count > 0 && len >= 18 + count * 4 && count <= 16384) {
                    jintArray arr = (*env)->NewIntArray(env, count);
                    if (arr) {
                        jint chunk[256];
                        int processed = 0;
                        while (processed < count) {
                            int toCopy = count - processed;
                            if (toCopy > 256) toCopy = 256;
                            for (int i = 0; i < toCopy; i++) {
                                chunk[i] = (jint)read_u32_le(data + 18 + (processed + i) * 4);
                            }
                            (*env)->SetIntArrayRegion(env, arr, processed, toCopy, chunk);
                            processed += toCopy;
                        }
                        set_object_field(env, result, "mAppsCids", "[I", arr);
                        (*env)->DeleteLocalRef(env, arr);
                    }
                }
            }
            break;
        case 155:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps", msgId);
            if (result && len >= 18) {
                set_int_field(env, result, "mAction", (jint)read_u16_le(data + 12));
                set_int_field(env, result, "mAppCid", (jint)read_u32_le(data + 14));
            }
            break;
        case 666:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mMagic", (jint)read_u32_le(data + 12));
            }
            break;
        case 1:
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/CostanzaResource", msgId);
            if (result && len >= 32) {
                set_int_field(env, result, "cid", (jint)read_u32_le(data + 12));
                set_int_field(env, result, "cidType", (jint)read_u32_le(data + 28));
            }
            break;
        default:
            break;
    }

    return result;
}

JNIEXPORT jobject JNICALL Java_com_sonymobile_smartconnect_hostapp_protocol_Proto_unpack(JNIEnv *env, jobject thiz, jbyteArray bArr) {
    (void)thiz;
    if (!bArr) return NULL;
    jsize len = (*env)->GetArrayLength(env, bArr);
    if (len < 12) return NULL;

    jbyte *data = (*env)->GetByteArrayElements(env, bArr, NULL);
    if (!data) return NULL;

    jobject result = unpack_internal(env, (const uint8_t*)data, (uint32_t)len);

    (*env)->ReleaseByteArrayElements(env, bArr, data, JNI_ABORT);
    return result;
}

JNIEXPORT jobjectArray JNICALL Java_com_sonymobile_smartconnect_hostapp_protocol_Proto_pack(JNIEnv *env, jobject thiz, jobject msg) {
    (void)thiz;
    if (!msg) return NULL;

    jclass msgClass = (*env)->GetObjectClass(env, msg);
    jmethodID getTypeMethod = (*env)->GetMethodID(env, msgClass, "getType", "()I");
    jmethodID getMsgIdMethod = (*env)->GetMethodID(env, msgClass, "getMessageId", "()I");

    jint type = getTypeMethod ? (*env)->CallIntMethod(env, msg, getTypeMethod) : 0;
    jint msgId = getMsgIdMethod ? (*env)->CallIntMethod(env, msg, getMsgIdMethod) : 0;

    uint8_t buffer[65536];
    my_memset(buffer, 0, sizeof(buffer));
    uint32_t packetLen = 12;

    write_u32_le(buffer + 4, (uint32_t)type);
    write_u32_le(buffer + 8, (uint32_t)msgId);

    switch (type) {
        case 4:
            packetLen = 12;
            break;
        case 5: {
            packetLen = 40;
            jint protoVer = get_int_field_safe(env, msg, "mProtocolVersion", 1048679);
            write_u32_le(buffer + 12, (uint32_t)protoVer);
            jfieldID fwFid = (*env)->GetFieldID(env, msgClass, "mFirmwareVersion", "Ljava/lang/String;");
            jstring fwStr = fwFid ? (jstring)(*env)->GetObjectField(env, msg, fwFid) : NULL;
            if (fwStr) {
                const char *s = (*env)->GetStringUTFChars(env, fwStr, NULL);
                if (s) {
                    my_strncpy((char*)(buffer + 16), s, 23);
                    (*env)->ReleaseStringUTFChars(env, fwStr, s);
                }
            }
            break;
        }
        case 6: {
            packetLen = 20;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 16, (uint32_t)get_int_field_safe(env, msg, "mValue", 0));
            break;
        }
        case 7: {
            packetLen = 20;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 16, (uint32_t)get_int_field_safe(env, msg, "mValue", 0));
            break;
        }
        case 9: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mAckMessageId", 0));
            break;
        }
        case 10: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mNackMessageId", 0));
            break;
        }
        case 16: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mLocale", 0));
            break;
        }
        case 18: {
            packetLen = 14;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mPercentage", 0));
            break;
        }
        case 20: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mStatus", 0));
            break;
        }
        case 21: {
            packetLen = 14;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mStatus", 0));
            break;
        }
        case 22: {
            packetLen = 20;
            write_u64_le(buffer + 12, (uint64_t)get_long_field_safe(env, msg, "mTime", 0));
            break;
        }
        case 104: {
            packetLen = 20;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mValue", 0));
            break;
        }
        case 105: {
            packetLen = 20;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mExtensionCid", 0));
            write_u16_le(buffer + 18, (uint16_t)get_int_field_safe(env, msg, "mValue", 0));
            break;
        }
        case 106: {
            packetLen = 18;
            break;
        }
        case 107: {
            packetLen = 20;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mValue", 0));
            break;
        }
        case 108: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mCid", 0));
            break;
        }
        case 110: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mValue", 0));
            break;
        }
        case 112: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mValue", 0));
            break;
        }
        case 114: {
            packetLen = 24;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mCode", 0));
            write_u64_le(buffer + 16, (uint64_t)get_long_field_safe(env, msg, "mTimestamp", 0));
            break;
        }
        case 115: {
            packetLen = 30;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mKey", 0));
            write_u64_le(buffer + 16, (uint64_t)get_long_field_safe(env, msg, "mTimestamp", 0));
            write_u16_le(buffer + 24, (uint16_t)get_int_field_safe(env, msg, "mX", 0));
            write_u16_le(buffer + 26, (uint16_t)get_int_field_safe(env, msg, "mY", 0));
            break;
        }
        case 116: {
            packetLen = 22;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mDirection", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mKey", 0));
            write_u16_le(buffer + 16, (uint16_t)get_int_field_safe(env, msg, "mX", 0));
            write_u16_le(buffer + 18, (uint16_t)get_int_field_safe(env, msg, "mY", 0));
            break;
        }
        case 117: {
            packetLen = 20;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mCidToDelete", 0));
            write_u16_le(buffer + 16, (uint16_t)get_int_field_safe(env, msg, "mCidType", 0));
            break;
        }
        case 124: {
            packetLen = 16;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mEventId", 0));
            break;
        }
        case 125: {
            packetLen = 24;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mSensorType", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mRate", 0));
            write_u16_le(buffer + 16, (uint16_t)get_int_field_safe(env, msg, "mMode", 0));
            break;
        }
        case 126: {
            packetLen = 14;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mStatus", 0));
            break;
        }
        case 127: {
            packetLen = 26;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mSensorType", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mAccuracy", 0));
            write_u64_le(buffer + 16, (uint64_t)get_long_field_safe(env, msg, "mTimestamp", 0));
            write_u16_le(buffer + 24, (uint16_t)get_int_field_safe(env, msg, "mDataSize", 0));
            break;
        }
        case 128: {
            packetLen = 14;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mStatus", 0));
            break;
        }
        case 129: {
            packetLen = 24;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mOnDuration", 0));
            write_u32_le(buffer + 16, (uint32_t)get_int_field_safe(env, msg, "mOffDuration", 0));
            write_u32_le(buffer + 20, (uint32_t)get_int_field_safe(env, msg, "mRepeats", 0));
            break;
        }
        case 130: {
            packetLen = 12;
            break;
        }
        case 131: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mResourceId", 0));
            break;
        }
        case 132: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mStatus", 0));
            break;
        }
        case 133: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)(int32_t)get_int_field_safe(env, msg, "mTimeZoneOffset", 0));
            break;
        }
        case 134: {
            packetLen = 18;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mNotificationCid", 0));
            buffer[16] = get_boolean_field_safe(env, msg, "mRead", 0) ? 1 : 0;
            break;
        }
        case 135: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mExtensionCid", 0));
            break;
        }
        case 136: {
            packetLen = 18;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mExtensionCid", 0));
            break;
        }
        case 139: {
            packetLen = 30;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            jintArray arr = (jintArray)get_object_field_safe(env, msg, "mValues", "[I");
            if (arr) {
                jsize arrLen = (*env)->GetArrayLength(env, arr);
                jint *elems = (*env)->GetIntArrayElements(env, arr, NULL);
                if (elems) {
                    for (jsize i = 0; i < 3 && i < arrLen; i++) {
                        write_u32_le(buffer + 14 + i * 4, (uint32_t)elems[i]);
                    }
                    (*env)->ReleaseIntArrayElements(env, arr, elems, JNI_ABORT);
                }
                (*env)->DeleteLocalRef(env, arr);
            }
            write_u32_le(buffer + 26, (uint32_t)get_int_field_safe(env, msg, "mTimestamp", 0));
            break;
        }
        case 140: {
            packetLen = 16;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mResult", 0));
            jintArray arr = (jintArray)get_object_field_safe(env, msg, "mValues", "[I");
            if (arr) {
                jsize arrLen = (*env)->GetArrayLength(env, arr);
                jint *elems = (*env)->GetIntArrayElements(env, arr, NULL);
                if (elems) {
                    for (jsize i = 0; i < arrLen && (16 + (i + 1) * 4) <= (jsize)sizeof(buffer); i++) {
                        write_u32_le(buffer + 16 + i * 4, (uint32_t)elems[i]);
                    }
                    packetLen = 16 + arrLen * 4;
                    (*env)->ReleaseIntArrayElements(env, arr, elems, JNI_ABORT);
                }
                (*env)->DeleteLocalRef(env, arr);
            }
            break;
        }
        case 141: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mExtensionCid", 0));
            break;
        }
        case 142: {
            packetLen = 24;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mType", 0));
            write_u32_le(buffer + 16, (uint32_t)get_int_field_safe(env, msg, "mTag", 0));
            write_u32_le(buffer + 20, (uint32_t)get_int_field_safe(env, msg, "mExtensionCid", 0));
            break;
        }
        case 143: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mTag", 0));
            write_u16_le(buffer + 16, (uint16_t)get_int_field_safe(env, msg, "mExtensionCid", 0));
            break;
        }
        case 144: {
            packetLen = 38;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mTag", 0));
            write_u16_le(buffer + 16, (uint16_t)get_int_field_safe(env, msg, "mKey", 0));
            write_u32_le(buffer + 18, (uint32_t)get_int_field_safe(env, msg, "mExtensionCid", 0));
            write_u64_le(buffer + 22, (uint64_t)get_long_field_safe(env, msg, "mTimestamp", 0));
            write_u16_le(buffer + 30, (uint16_t)get_int_field_safe(env, msg, "mX", 0));
            write_u16_le(buffer + 32, (uint16_t)get_int_field_safe(env, msg, "mY", 0));
            break;
        }
        case 145: {
            packetLen = 20;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mCidRangeFirst", 0));
            write_u32_le(buffer + 16, (uint32_t)get_int_field_safe(env, msg, "mCidRangeLast", 0));
            break;
        }
        case 146: {
            packetLen = 24;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mStatus", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mCidRangeFirst", 0));
            write_u32_le(buffer + 18, (uint32_t)get_int_field_safe(env, msg, "mCidRangeLast", 0));
            break;
        }
        case 149: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mCid", 0));
            break;
        }
        case 150: {
            packetLen = 22;
            int action = get_int_field_safe(env, msg, "mAction", 0);
            write_u16_le(buffer + 12, (uint16_t)action);
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mWallpaperCid", 0));
            if (action == 0) {
                write_u32_le(buffer + 18, (uint32_t)get_int_field_safe(env, msg, "mThumbnailCid", 0));
            } else {
                write_u32_le(buffer + 18, (uint32_t)get_int_field_safe(env, msg, "mTimestamp", 0));
            }
            break;
        }
        case 151: {
            packetLen = 16;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mResult", 0));
            jintArray arr = (jintArray)get_object_field_safe(env, msg, "mValues", "[I");
            if (arr) {
                jsize arrLen = (*env)->GetArrayLength(env, arr);
                jint *elems = (*env)->GetIntArrayElements(env, arr, NULL);
                if (elems) {
                    for (jsize i = 0; i < arrLen && (16 + (i + 1) * 4) <= (jsize)sizeof(buffer); i++) {
                        write_u32_le(buffer + 16 + i * 4, (uint32_t)elems[i]);
                    }
                    packetLen = 16 + arrLen * 4;
                    (*env)->ReleaseIntArrayElements(env, arr, elems, JNI_ABORT);
                }
                (*env)->DeleteLocalRef(env, arr);
            }
            break;
        }
        case 152: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mCid", 0));
            break;
        }
        case 153: {
            packetLen = 14;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            jintArray arr = (jintArray)get_object_field_safe(env, msg, "mAppsCids", "[I");
            if (arr) {
                jsize arrLen = (*env)->GetArrayLength(env, arr);
                jint *elems = (*env)->GetIntArrayElements(env, arr, NULL);
                if (elems) {
                    for (jsize i = 0; i < arrLen && (14 + (i + 1) * 4) <= (jsize)sizeof(buffer); i++) {
                        write_u32_le(buffer + 14 + i * 4, (uint32_t)elems[i]);
                    }
                    packetLen = 14 + arrLen * 4;
                    (*env)->ReleaseIntArrayElements(env, arr, elems, JNI_ABORT);
                }
                (*env)->DeleteLocalRef(env, arr);
            }
            break;
        }
        case 154: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u16_le(buffer + 14, (uint16_t)get_int_field_safe(env, msg, "mResult", 0));
            write_u16_le(buffer + 16, (uint16_t)get_int_field_safe(env, msg, "mCount", 0));
            jintArray arr = (jintArray)get_object_field_safe(env, msg, "mAppsCids", "[I");
            if (arr) {
                jsize arrLen = (*env)->GetArrayLength(env, arr);
                jint *elems = (*env)->GetIntArrayElements(env, arr, NULL);
                if (elems) {
                    for (jsize i = 0; i < arrLen && (18 + (i + 1) * 4) <= (jsize)sizeof(buffer); i++) {
                        write_u32_le(buffer + 18 + i * 4, (uint32_t)elems[i]);
                    }
                    packetLen = 18 + arrLen * 4;
                    (*env)->ReleaseIntArrayElements(env, arr, elems, JNI_ABORT);
                }
                (*env)->DeleteLocalRef(env, arr);
            }
            break;
        }
        case 155: {
            packetLen = 18;
            write_u16_le(buffer + 12, (uint16_t)get_int_field_safe(env, msg, "mAction", 0));
            write_u32_le(buffer + 14, (uint32_t)get_int_field_safe(env, msg, "mAppCid", 0));
            break;
        }
        case 666: {
            packetLen = 16;
            write_u32_le(buffer + 12, (uint32_t)get_int_field_safe(env, msg, "mMagic", 0));
            break;
        }
        case 1: {
            jint cid = get_int_field_safe(env, msg, "cid", 0);
            jint cidType = get_int_field_safe(env, msg, "cidType", 0);
            jboolean onlyRenderOnce = get_boolean_field_safe(env, msg, "onlyRenderOnce", 0);

            packetLen = 32;
            if (cidType == 6) {
                jint w = get_int_field_safe(env, msg, "mWidth", 0);
                jint h = get_int_field_safe(env, msg, "mHeight", 0);
                jint colType = get_int_field_safe(env, msg, "mColorType", 0);
                jint compType = get_int_field_safe(env, msg, "mCompressType", 0);
                jint flags = get_int_field_safe(env, msg, "mFlags", 0);

                write_u16_le(buffer + 32, (uint16_t)w);
                write_u16_le(buffer + 34, (uint16_t)h);
                write_u16_le(buffer + 36, (uint16_t)colType);
                write_u16_le(buffer + 38, (uint16_t)compType);
                write_u32_le(buffer + 40, (uint32_t)flags);
                packetLen = 44;

                jfieldID dataFid = (*env)->GetFieldID(env, msgClass, "mData", "[B");
                jbyteArray dataArr = dataFid ? (jbyteArray)(*env)->GetObjectField(env, msg, dataFid) : NULL;
                if (dataArr) {
                    jsize dlen = (*env)->GetArrayLength(env, dataArr);
                    if (dlen > 0 && packetLen + (uint32_t)dlen <= sizeof(buffer)) {
                        (*env)->GetByteArrayRegion(env, dataArr, 0, dlen, (jbyte*)(buffer + packetLen));
                        packetLen += (uint32_t)dlen;
                    }
                }
            } else if (cidType == 1) {
                jint textColor = get_int_field_safe(env, msg, "mTextColor", 0);
                jint fontCid = get_int_field_safe(env, msg, "mFontCid", 0);
                jint hAlign = get_int_field_safe(env, msg, "mTextHAlignment", 0);
                jint vAlign = get_int_field_safe(env, msg, "mTextVAlignment", 0);

                write_u32_le(buffer + 32, (uint32_t)textColor);
                write_u32_le(buffer + 36, (uint32_t)fontCid);
                write_u16_le(buffer + 40, (uint16_t)hAlign);
                write_u16_le(buffer + 42, (uint16_t)vAlign);
                packetLen = 44;

                jfieldID textFid = (*env)->GetFieldID(env, msgClass, "mText", "Ljava/lang/String;");
                jstring textStr = textFid ? (jstring)(*env)->GetObjectField(env, msg, textFid) : NULL;
                if (textStr) {
                    const char *ts = (*env)->GetStringUTFChars(env, textStr, NULL);
                    if (ts) {
                        uint32_t slen = (uint32_t)my_strlen(ts);
                        if (packetLen + slen + 1 <= sizeof(buffer)) {
                            my_memcpy(buffer + packetLen, ts, slen);
                            buffer[packetLen + slen] = 0;
                            packetLen += slen + 1;
                        }
                        (*env)->ReleaseStringUTFChars(env, textStr, ts);
                    }
                }
            } else {
                jfieldID dataFid = (*env)->GetFieldID(env, msgClass, "mData", "[B");
                if (dataFid) {
                    jbyteArray dataArr = (jbyteArray)(*env)->GetObjectField(env, msg, dataFid);
                    if (dataArr) {
                        jsize dlen = (*env)->GetArrayLength(env, dataArr);
                        if (dlen > 0 && packetLen + (uint32_t)dlen <= sizeof(buffer)) {
                            (*env)->GetByteArrayRegion(env, dataArr, 0, dlen, (jbyte*)(buffer + packetLen));
                            packetLen += (uint32_t)dlen;
                        }
                    }
                } else {
                    (*env)->ExceptionClear(env);
                }
            }

            write_u32_le(buffer + 12, (uint32_t)cid);
            write_u32_le(buffer + 16, 0);
            write_u32_le(buffer + 20, onlyRenderOnce ? 1 : 0);
            write_u32_le(buffer + 24, packetLen >= 32 ? (packetLen - 32) : 0);
            write_u32_le(buffer + 28, (uint32_t)cidType);
            break;
        }
        default:
            packetLen = 12;
            break;
    }

    write_u32_le(buffer, packetLen);
    return wrap_in_2d_byte_array(env, buffer, packetLen, (uint32_t)msgId);
}

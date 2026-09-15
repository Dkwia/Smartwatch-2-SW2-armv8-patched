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
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "I");
    if (fid) {
        (*env)->SetIntField(env, obj, fid, val);
    } else {
        (*env)->ExceptionClear(env);
    }
}

static jint get_int_field_safe(JNIEnv *env, jobject obj, const char *fieldName, jint def) {
    jclass clazz = (*env)->GetObjectClass(env, obj);
    jfieldID fid = (*env)->GetFieldID(env, clazz, fieldName, "I");
    if (fid) {
        return (*env)->GetIntField(env, obj, fid);
    }
    (*env)->ExceptionClear(env);
    return def;
}

JNIEXPORT jobject JNICALL Java_com_sonymobile_smartconnect_hostapp_protocol_Proto_unpack(JNIEnv *env, jobject thiz, jbyteArray bArr) {
    (void)thiz;
    if (!bArr) return NULL;
    jsize len = (*env)->GetArrayLength(env, bArr);
    if (len < 12) return NULL;

    jbyte *data = (*env)->GetByteArrayElements(env, bArr, NULL);
    if (!data) return NULL;

    uint32_t totalLen = read_u32_le((const uint8_t*)data);
    uint32_t type = read_u32_le((const uint8_t*)(data + 4));
    uint32_t msgId = read_u32_le((const uint8_t*)(data + 8));

    jobject result = NULL;

    switch (type) {
        case 4: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/RequestVersion", msgId);
            break;
        case 5: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseVersion", msgId);
            if (result && len >= 16) {
                uint32_t protoVer = read_u32_le((const uint8_t*)(data + 12));
                set_int_field(env, result, "mProtocolVersion", protoVer);
                if (len > 16) {
                    jstring fwStr = (*env)->NewStringUTF(env, (const char*)(data + 16));
                    jclass clazz = (*env)->GetObjectClass(env, result);
                    jfieldID fid = (*env)->GetFieldID(env, clazz, "mFirmwareVersion", "Ljava/lang/String;");
                    if (fid) {
                        (*env)->SetObjectField(env, result, fid, fwStr);
                    } else {
                        (*env)->ExceptionClear(env);
                    }
                }
            }
            break;
        }
        case 7: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseFota", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mAction", read_u32_le((const uint8_t*)(data + 12)));
                set_int_field(env, result, "mValue", read_u32_le((const uint8_t*)(data + 16)));
            }
            break;
        }
        case 9: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mAckMessageId", read_u32_le((const uint8_t*)(data + 12)));
            }
            break;
        }
        case 10: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ControlMessageNack", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mNackMessageId", read_u32_le((const uint8_t*)(data + 12)));
            }
            break;
        }
        case 18: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel", msgId);
            if (result && len >= 16) {
                set_int_field(env, result, "mPercentage", read_u32_le((const uint8_t*)(data + 12)));
            }
            break;
        }
        case 108: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mCid", read_u32_le((const uint8_t*)(data + 12)));
                set_int_field(env, result, "mAction", read_u32_le((const uint8_t*)(data + 16)));
            }
            break;
        }
        case 114: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationKey", msgId);
            if (result && len >= 20) {
                set_int_field(env, result, "mAction", read_u32_le((const uint8_t*)(data + 12)));
                set_int_field(env, result, "mCode", read_u32_le((const uint8_t*)(data + 16)));
            }
            break;
        }
        case 115: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationTouch", msgId);
            if (result && len >= 28) {
                set_int_field(env, result, "mAction", read_u32_le((const uint8_t*)(data + 12)));
                set_int_field(env, result, "mX", read_u32_le((const uint8_t*)(data + 16)));
                set_int_field(env, result, "mY", read_u32_le((const uint8_t*)(data + 20)));
            }
            break;
        }
        case 116: { 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe", msgId);
            if (result && len >= 24) {
                set_int_field(env, result, "mDirection", read_u32_le((const uint8_t*)(data + 12)));
                set_int_field(env, result, "mX", read_u32_le((const uint8_t*)(data + 16)));
                set_int_field(env, result, "mY", read_u32_le((const uint8_t*)(data + 20)));
            }
            break;
        }
        case 124: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/DebugEvent", msgId);
            break;
        case 127: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData", msgId);
            break;
        case 131: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource", msgId);
            break;
        case 134: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead", msgId);
            break;
        case 136: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList", msgId);
            break;
        case 141: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead", msgId);
            break;
        case 143: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWidget", msgId);
            break;
        case 144: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch", msgId);
            break;
        case 149: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace", msgId);
            break;
        case 152: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper", msgId);
            break;
        case 155: 
            result = create_msg_by_name(env, "com/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps", msgId);
            break;
        default:
            break;
    }

    (*env)->ReleaseByteArrayElements(env, bArr, data, JNI_ABORT);
    return result;
}

static jobjectArray wrap_in_2d_byte_array(JNIEnv *env, const uint8_t *buffer, uint32_t totalLen) {
    jclass byteArrayClass = (*env)->FindClass(env, "[B");
    if (!byteArrayClass) return NULL;

    const uint32_t maxChunk = 512;
    if (totalLen <= maxChunk) {
        jobjectArray res = (*env)->NewObjectArray(env, 1, byteArrayClass, NULL);
        jbyteArray b = (*env)->NewByteArray(env, totalLen);
        (*env)->SetByteArrayRegion(env, b, 0, totalLen, (const jbyte*)buffer);
        (*env)->SetObjectArrayElement(env, res, 0, b);
        (*env)->DeleteLocalRef(env, b);
        return res;
    }

    uint32_t numChunks = (totalLen + maxChunk - 1) / maxChunk;
    jobjectArray res = (*env)->NewObjectArray(env, numChunks, byteArrayClass, NULL);
    uint32_t offset = 0;
    for (uint32_t i = 0; i < numChunks; i++) {
        uint32_t chunkLen = (totalLen - offset > maxChunk) ? maxChunk : (totalLen - offset);
        jbyteArray b = (*env)->NewByteArray(env, chunkLen);
        (*env)->SetByteArrayRegion(env, b, 0, chunkLen, (const jbyte*)(buffer + offset));
        (*env)->SetObjectArrayElement(env, res, i, b);
        (*env)->DeleteLocalRef(env, b);
        offset += chunkLen;
    }
    return res;
}

JNIEXPORT jobjectArray JNICALL Java_com_sonymobile_smartconnect_hostapp_protocol_Proto_pack(JNIEnv *env, jobject thiz, jobject msg) {
    (void)thiz;
    if (!msg) return NULL;

    jclass msgClass = (*env)->GetObjectClass(env, msg);
    jmethodID getTypeMethod = (*env)->GetMethodID(env, msgClass, "getType", "()I");
    jmethodID getMsgIdMethod = (*env)->GetMethodID(env, msgClass, "getMessageId", "()I");

    jint type = getTypeMethod ? (*env)->CallIntMethod(env, msg, getTypeMethod) : 0;
    jint msgId = getMsgIdMethod ? (*env)->CallIntMethod(env, msg, getMsgIdMethod) : 0;

    uint8_t buffer[4096];
    my_memset(buffer, 0, sizeof(buffer));
    uint32_t packetLen = 12;

    write_u32_le(buffer + 4, type);
    write_u32_le(buffer + 8, msgId);

    switch (type) {
        case 5: { 
            packetLen = 40;
            write_u32_le(buffer, packetLen);
            jfieldID protoFid = (*env)->GetFieldID(env, msgClass, "mProtocolVersion", "I");
            jint protoVer = protoFid ? (*env)->GetIntField(env, msg, protoFid) : 1048679;
            write_u32_le(buffer + 12, protoVer);
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
        case 9: { 
            packetLen = 16;
            write_u32_le(buffer, packetLen);
            jfieldID ackFid = (*env)->GetFieldID(env, msgClass, "mAckMessageId", "I");
            jint ackId = ackFid ? (*env)->GetIntField(env, msg, ackFid) : 0;
            write_u32_le(buffer + 12, ackId);
            break;
        }
        case 10: { 
            packetLen = 16;
            write_u32_le(buffer, packetLen);
            jfieldID nackFid = (*env)->GetFieldID(env, msgClass, "mNackMessageId", "I");
            jint nackId = nackFid ? (*env)->GetIntField(env, msg, nackFid) : 0;
            write_u32_le(buffer + 12, nackId);
            break;
        }
        case 1: { 
            jfieldID cidFid = (*env)->GetFieldID(env, msgClass, "cid", "I");
            jfieldID cidTypeFid = (*env)->GetFieldID(env, msgClass, "cidType", "I");
            jint cid = cidFid ? (*env)->GetIntField(env, msg, cidFid) : 0;
            jint cidType = cidTypeFid ? (*env)->GetIntField(env, msg, cidTypeFid) : 0;
            packetLen = 32;
            write_u32_le(buffer, packetLen);
            write_u32_le(buffer + 12, cidType);
            write_u32_le(buffer + 16, cid);
            break;
        }
        default: {
            packetLen = 12;
            write_u32_le(buffer, packetLen);
            break;
        }
    }

    return wrap_in_2d_byte_array(env, buffer, packetLen);
}

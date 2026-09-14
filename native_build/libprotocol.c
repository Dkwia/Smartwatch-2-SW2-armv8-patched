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

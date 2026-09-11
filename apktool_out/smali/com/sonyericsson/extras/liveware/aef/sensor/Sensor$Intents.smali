.class public interface abstract Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor$Intents;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Intents"
.end annotation


# static fields
.field public static final EXTRA_AEA_PACKAGE_NAME:Ljava/lang/String; = "aea_package_name"

.field public static final EXTRA_AHA_PACKAGE_NAME:Ljava/lang/String; = "aha_package_name"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_SENSOR_ID:Ljava/lang/String; = "sensor_id"

.field public static final EXTRA_SENSOR_INTERRUPT_MODE:Ljava/lang/String; = "interrupt_mode"

.field public static final EXTRA_SENSOR_LOCAL_SERVER_SOCKET_NAME:Ljava/lang/String; = "local_server_socket_name"

.field public static final EXTRA_SENSOR_REQUESTED_RATE:Ljava/lang/String; = "requested_rate"

.field public static final SENSOR_ERROR_MESSAGE_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.sensor.ERROR_MESSSAGE"

.field public static final SENSOR_REGISTER_LISTENER_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.sensor.REGISTER_LISTENER"

.field public static final SENSOR_UNREGISTER_LISTENER_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.sensor.UNREGISTER_LISTENER"

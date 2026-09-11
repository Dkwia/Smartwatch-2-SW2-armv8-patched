.class public Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor$SensorApiErrorCodes;,
        Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor$SensorInterruptMode;,
        Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor$SensorAccuracy;,
        Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor$SensorRates;,
        Lcom/sonyericsson/extras/liveware/aef/sensor/Sensor$Intents;
    }
.end annotation


# static fields
.field public static final SENSOR_TYPE_ACCELEROMETER:Ljava/lang/String; = "Accelerometer"

.field public static final SENSOR_TYPE_LIGHT:Ljava/lang/String; = "Light"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

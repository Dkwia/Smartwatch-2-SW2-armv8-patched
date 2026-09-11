.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestSensorData.java"


# static fields
.field public static final MODE_OFF:I = 0x0

.field public static final MODE_ON:I = 0x1

.field public static final RATE_FASTEST:I = 0x64

.field public static final RATE_GAME:I = 0x64

.field public static final RATE_NORMAL:I = 0x1f4

.field public static final RATE_UI:I = 0x3e8

.field public static final RATE_USE_INTERRUPT:I = 0x0

.field public static final TYPE_ACCELEROMETER:I = 0x0

.field public static final TYPE_BATTERY:I = 0x3

.field public static final TYPE_COMPASS:I = 0x1

.field public static final TYPE_SENSOR_LIGHT:I = 0x5

.field public static final TYPE_SINGLE_TAP:I = 0x4

.field public static final TYPE_TEMPERATURE:I = 0x2


# instance fields
.field private mMode:I

.field private mRate:I

.field private mSensorType:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "newMessageId"    # I
    .param p2, "sensorType"    # I
    .param p3, "mode"    # I
    .param p4, "rate"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 37
    const/16 v0, 0x7d

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->type:I

    .line 38
    invoke-virtual {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->setSensorType(I)V

    .line 39
    invoke-virtual {p0, p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->setMode(I)V

    .line 40
    invoke-virtual {p0, p4}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->setRate(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->mMode:I

    return v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->mRate:I

    return v0
.end method

.method public getSensorType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->mSensorType:I

    return v0
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->mMode:I

    .line 57
    return-void
.end method

.method public setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->mRate:I

    .line 65
    return-void
.end method

.method public setSensorType(I)V
    .locals 0
    .param p1, "sensorType"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;->mSensorType:I

    .line 49
    return-void
.end method

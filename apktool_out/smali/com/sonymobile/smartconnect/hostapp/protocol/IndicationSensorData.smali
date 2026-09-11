.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationSensorData.java"


# static fields
.field public static final STATUS_ACCURACY_HIGH:I = 0x3

.field public static final STATUS_ACCURACY_LOW:I = 0x1

.field public static final STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final STATUS_UNRELIABLE:I


# instance fields
.field private mAccuracy:I

.field private mData:[I

.field private mDataSize:I

.field private mSensorType:I

.field private mTimestamp:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 25
    const/16 v0, 0x7f

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->type:I

    .line 26
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mAccuracy:I

    return v0
.end method

.method public getData()[I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mData:[I

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mDataSize:I

    return v0
.end method

.method public getSensorType()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mSensorType:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mTimestamp:J

    return-wide v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .param p1, "accuracy"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mAccuracy:I

    .line 42
    return-void
.end method

.method public setData([I)V
    .locals 0
    .param p1, "data"    # [I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mData:[I

    .line 66
    return-void
.end method

.method public setDataSize(I)V
    .locals 0
    .param p1, "dataSize"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mDataSize:I

    .line 58
    return-void
.end method

.method public setSensorType(I)V
    .locals 0
    .param p1, "sensorType"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mSensorType:I

    .line 34
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->mTimestamp:J

    .line 50
    return-void
.end method

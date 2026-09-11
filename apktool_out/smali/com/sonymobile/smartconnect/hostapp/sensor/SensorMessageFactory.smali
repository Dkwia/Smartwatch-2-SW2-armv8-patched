.class public Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;
.super Ljava/lang/Object;
.source "SensorMessageFactory.java"


# instance fields
.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V
    .locals 0
    .param p1, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 18
    return-void
.end method


# virtual methods
.method public createConfirmationSensorMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationSensorData;
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationSensorData;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;->newMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationSensorData;-><init>(I)V

    .line 30
    .local v0, "data":Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationSensorData;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationSensorData;->setStatus(I)V

    .line 31
    return-object v0
.end method

.method public createRegisterSensorMsg(II)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "rate"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;-><init>(IIII)V

    return-object v0
.end method

.method public createUnregisterSensorMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;
    .locals 3
    .param p1, "sensorId"    # I

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;->newMessageId()I

    move-result v1

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;-><init>(IIII)V

    return-object v0
.end method

.method protected newMessageId()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v0

    return v0
.end method

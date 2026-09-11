.class public Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;
.super Ljava/lang/Object;
.source "SensorResponseMessageListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V
    .locals 0
    .param p1, "sensorManager"    # Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .line 20
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x7e

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 29
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSensorData;

    .line 30
    .local v0, "sensorData":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSensorData;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSensorData;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getLastExtensionPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getLastExtensionPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getLastSensorId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->sendSensorErrorIntent(Ljava/lang/String;II)V

    .line 35
    :cond_0
    return-void
.end method

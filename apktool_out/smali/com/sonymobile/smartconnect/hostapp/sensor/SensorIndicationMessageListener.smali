.class public Lcom/sonymobile/smartconnect/hostapp/sensor/SensorIndicationMessageListener;
.super Ljava/lang/Object;
.source "SensorIndicationMessageListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V
    .locals 0
    .param p1, "sensorManager"    # Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorIndicationMessageListener;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .line 19
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x7f

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorIndicationMessageListener;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;

    .end local p1    # "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->sendSensorData(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;)V

    .line 29
    return-void
.end method

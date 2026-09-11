.class public Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;
.super Ljava/lang/Object;
.source "SensorHandlerFactory.java"


# instance fields
.field private final mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V
    .locals 0
    .param p1, "sensorManager"    # Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .line 17
    return-void
.end method


# virtual methods
.method public createRegisterSensorHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V

    return-object v0
.end method

.method public createUnregisterSensorHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V

    return-object v0
.end method

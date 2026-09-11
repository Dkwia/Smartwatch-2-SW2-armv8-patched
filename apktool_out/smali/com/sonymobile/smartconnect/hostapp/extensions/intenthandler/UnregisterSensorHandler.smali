.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;
.source "UnregisterSensorHandler.java"


# instance fields
.field private final mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V
    .locals 0
    .param p1, "sensorManager"    # Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .line 19
    return-void
.end method

.method private sendSensorDataConfigRequest(Ljava/lang/String;I)V
    .locals 2
    .param p1, "extensionPackageName"    # Ljava/lang/String;
    .param p2, "sensorId"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v1, p2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getRequestSensorId(I)I

    move-result v0

    .line 39
    .local v0, "id":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v1, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->unregisterSensor(Ljava/lang/String;I)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected extractRelevantIntentInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "sourceIntent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 28
    const-string v0, "sensor_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mSensorId:I

    .line 29
    return-void
.end method

.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.sonyericsson.extras.aef.sensor.UNREGISTER_LISTENER"

    return-object v0
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 34
    iget-object v0, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    iget v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mSensorId:I

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;->sendSensorDataConfigRequest(Ljava/lang/String;I)V

    .line 35
    return-void
.end method

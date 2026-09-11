.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;
.source "RegisterSensorHandler.java"


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
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .line 19
    return-void
.end method

.method private sendSensorDataConfigRequest(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "extensionPackageName"    # Ljava/lang/String;
    .param p2, "sensorId"    # I
    .param p3, "interruptMode"    # I
    .param p4, "requestedRate"    # I
    .param p5, "socketName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 50
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v1, p2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getRequestSensorId(I)I

    move-result v2

    .line 51
    .local v2, "id":I
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v1, p4}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getRequestRate(I)I

    move-result v4

    .line 52
    .local v4, "rate":I
    if-ne p3, v3, :cond_1

    .line 54
    .local v3, "interruptOn":Z
    :goto_0
    if-eq v2, v5, :cond_2

    if-eq v4, v5, :cond_2

    if-eqz p5, :cond_2

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->isSensorTypeUsed(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->registerSensor(Ljava/lang/String;IZILjava/lang/String;)V

    .line 61
    :cond_0
    :goto_1
    return-void

    .end local v3    # "interruptOn":Z
    :cond_1
    move v3, v0

    .line 52
    goto :goto_0

    .line 56
    .restart local v3    # "interruptOn":Z
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getLastExtensionPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getLastExtensionPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getLastSensorId()I

    move-result v6

    invoke-virtual {v1, v5, v6, v0}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->sendSensorErrorIntent(Ljava/lang/String;II)V

    goto :goto_1
.end method


# virtual methods
.method protected extractRelevantIntentInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "sourceIntent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "sensor_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mSensorId:I

    .line 29
    const-string v0, "local_server_socket_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mLocalServerSocketName:Ljava/lang/String;

    .line 31
    const-string v0, "interrupt_mode"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mInterruptMode:I

    .line 34
    const-string v0, "requested_rate"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mRequestedRate:I

    .line 36
    return-void
.end method

.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.sonyericsson.extras.aef.sensor.REGISTER_LISTENER"

    return-object v0
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 6
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->setLastExtensionPackageName(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    iget v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mSensorId:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->setLastSensorId(I)V

    .line 43
    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mSensorId:I

    iget v3, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mInterruptMode:I

    iget v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mRequestedRate:I

    iget-object v5, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mLocalServerSocketName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;->sendSensorDataConfigRequest(Ljava/lang/String;IIILjava/lang/String;)V

    .line 46
    return-void
.end method

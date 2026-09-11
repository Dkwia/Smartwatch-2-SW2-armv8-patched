.class public Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
.super Ljava/lang/Object;
.source "SensorExtension.java"


# instance fields
.field private mExtensionPackageName:Ljava/lang/String;

.field private final mInterruptOn:Z

.field private mOldTimeStamp:J

.field private mSensorRate:I

.field private mSensorType:I

.field private mSocketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 0
    .param p1, "extensionPackageName"    # Ljava/lang/String;
    .param p2, "sensorType"    # I
    .param p3, "interruptOn"    # Z
    .param p4, "sensorRate"    # I
    .param p5, "socketName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mExtensionPackageName:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSensorType:I

    .line 22
    iput-boolean p3, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mInterruptOn:Z

    .line 23
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSensorRate:I

    .line 24
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSocketName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getExtensionPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mExtensionPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOldTimeStamp()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mOldTimeStamp:J

    return-wide v0
.end method

.method public getSensorRate()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSensorRate:I

    return v0
.end method

.method public getSensorType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSensorType:I

    return v0
.end method

.method public getSocketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSocketName:Ljava/lang/String;

    return-object v0
.end method

.method public isInterruptOn()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mInterruptOn:Z

    return v0
.end method

.method public isTimeToUpdate(J)Z
    .locals 7
    .param p1, "newTimeStamp"    # J

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mInterruptOn:Z

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getOldTimeStamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorRate()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtensionPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionPackageName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mExtensionPackageName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setOldTimeStamp(J)V
    .locals 1
    .param p1, "oldTimeStamp"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mOldTimeStamp:J

    .line 69
    return-void
.end method

.method public setSensorRate(I)V
    .locals 0
    .param p1, "sensorRate"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSensorRate:I

    .line 53
    return-void
.end method

.method public setSensorType(I)V
    .locals 0
    .param p1, "sensorType"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSensorType:I

    .line 41
    return-void
.end method

.method public setSocketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "socketName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->mSocketName:Ljava/lang/String;

    .line 61
    return-void
.end method

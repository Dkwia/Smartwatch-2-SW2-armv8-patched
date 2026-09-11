.class public Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
.super Ljava/lang/Object;
.source "HostAppAefConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sensor"
.end annotation


# instance fields
.field private mDeviceId:I

.field private mId:I

.field private final mMaximumRange:D

.field private final mMinimumDelay:I

.field private final mName:Ljava/lang/String;

.field private final mResolution:D

.field private final mSensorId:I

.field private final mSensorInterrupt:Z

.field private final mSensorTypeId:I


# direct methods
.method public constructor <init>(IIIDIDLjava/lang/String;IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "deviceId"    # I
    .param p3, "sensorTypeId"    # I
    .param p4, "resolution"    # D
    .param p6, "minimumDelay"    # I
    .param p7, "maximumRange"    # D
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "sensorId"    # I
    .param p11, "sensorInterrupt"    # Z

    .prologue
    .line 1275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mId:I

    .line 1277
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mDeviceId:I

    .line 1278
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorTypeId:I

    .line 1279
    iput-wide p4, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mResolution:D

    .line 1280
    iput p6, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mMinimumDelay:I

    .line 1281
    iput-wide p7, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mMaximumRange:D

    .line 1282
    iput-object p9, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mName:Ljava/lang/String;

    .line 1283
    iput p10, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorId:I

    .line 1284
    iput-boolean p11, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorInterrupt:Z

    .line 1285
    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;I)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    .param p1, "x1"    # I

    .prologue
    .line 1263
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->getInsertOperation(I)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private getInsertContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 1341
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1342
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sensorTypeId"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorTypeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1343
    const-string v1, "resolution"

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mResolution:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1344
    const-string v1, "minimumDelay"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mMinimumDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1345
    const-string v1, "maximumRange"

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mMaximumRange:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1346
    const-string v1, "name"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v1, "sensorId"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1348
    const-string v1, "sensorInterrupt"

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorInterrupt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1349
    return-object v0
.end method

.method private getInsertOperation(I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "deviceIndex"    # I

    .prologue
    .line 1332
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Sensor;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1334
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->getInsertContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1335
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "deviceId"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1336
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .prologue
    .line 1300
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mDeviceId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1296
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mId:I

    return v0
.end method

.method public getMaximumRange()D
    .locals 2

    .prologue
    .line 1316
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mMaximumRange:D

    return-wide v0
.end method

.method public getMinimumDelay()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mMinimumDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()D
    .locals 2

    .prologue
    .line 1308
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mResolution:D

    return-wide v0
.end method

.method public getSensorId()I
    .locals 1

    .prologue
    .line 1324
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorId:I

    return v0
.end method

.method public getSensorInterrupt()Z
    .locals 1

    .prologue
    .line 1328
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorInterrupt:Z

    return v0
.end method

.method public getSensorTypeId()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mSensorTypeId:I

    return v0
.end method

.method setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 1292
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mDeviceId:I

    .line 1293
    return-void
.end method

.method setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1288
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->mId:I

    .line 1289
    return-void
.end method

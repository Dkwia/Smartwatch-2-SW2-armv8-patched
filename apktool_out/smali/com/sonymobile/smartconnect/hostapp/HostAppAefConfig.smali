.class public Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
.super Ljava/lang/Object;
.source "HostAppAefConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    }
.end annotation


# static fields
.field private static sKeyPads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSensorTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mControlApiVersion:I

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private final mNotificationApiVersion:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSensorApiVersion:I

.field private final mVersion:Ljava/lang/String;

.field private final mWidgetApiVersion:I

.field private final mWidgetRefreshRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->sSensorTypes:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->sKeyPads:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "widgetApiVersion"    # I
    .param p5, "controlApiVersion"    # I
    .param p6, "sensorApiVersion"    # I
    .param p7, "notificationApiVersion"    # I
    .param p8, "widgetRefreshRate"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    .line 50
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    .line 51
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mVersion:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetApiVersion:I

    .line 54
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mControlApiVersion:I

    .line 55
    iput p6, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mSensorApiVersion:I

    .line 56
    iput p7, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mNotificationApiVersion:I

    .line 57
    iput p8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetRefreshRate:I

    .line 58
    return-void
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->sKeyPads:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->sSensorTypes:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addDevices(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)V
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "hostApp"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    .prologue
    .line 224
    const/4 v11, 0x0

    .line 226
    .local v11, "cur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Device;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "hostAppId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 228
    :goto_0
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const-string v0, "model"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "subType"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "marketingName"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "vendor"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "firmwareVersion"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "widgetImageHeight"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v0, "widgetImageWidtht"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v0, "vibrator"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x0

    :goto_1
    const-string v0, "layoutSupport"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZI)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    move-result-object v12

    .line 244
    .local v12, "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->setId(I)V

    .line 245
    invoke-static {p0, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addDisplay(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 246
    invoke-static {p0, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addLed(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 247
    invoke-static {p0, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addSensor(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V

    .line 248
    invoke-static {p0, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addInput(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 251
    .end local v12    # "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_0

    .line 252
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 232
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 251
    :cond_2
    if-eqz v11, :cond_3

    .line 252
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_3
    return-void
.end method

.method private static addDisplay(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .prologue
    .line 258
    const/4 v11, 0x0

    .line 260
    .local v11, "cur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Display;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "deviceId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 262
    :goto_0
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    const-string v0, "width"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "height"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v0, "colors"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "refreshRate"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "latency"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v0, "tapTouch"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    :goto_1
    const-string v0, "motionTouch"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v7, 0x0

    :goto_2
    const-string v0, "isEmulated"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v8, 0x0

    :goto_3
    const-string v0, "menuItems"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "supportsLowPowerMode"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v10, 0x0

    :goto_4
    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addDisplay(IIIIIZZZIZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    move-result-object v12

    .line 280
    .local v12, "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->setId(I)V

    .line 282
    invoke-static {p0, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addWidget(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 285
    .end local v12    # "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_0

    .line 286
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 265
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x1

    goto :goto_4

    .line 285
    :cond_5
    if-eqz v11, :cond_6

    .line 286
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_6
    return-void
.end method

.method private static addInput(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 333
    const/4 v6, 0x0

    .line 335
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Input;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "deviceId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 337
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    const-string v0, "keyPadId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addInput(IZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;

    move-result-object v7

    .line 341
    .local v7, "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 344
    .end local v7    # "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    move v0, v9

    .line 338
    goto :goto_1

    .line 344
    :cond_2
    if-eqz v6, :cond_3

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_3
    return-void
.end method

.method private static addLed(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .prologue
    .line 316
    const/4 v6, 0x0

    .line 318
    .local v6, "cur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Led;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "deviceId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "colors"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addLed(I)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;

    move-result-object v7

    .line 323
    .local v7, "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 326
    .end local v7    # "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 326
    :cond_1
    if-eqz v6, :cond_2

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_2
    return-void
.end method

.method private static addSensor(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;)V
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "device"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 351
    const/4 v10, 0x0

    .line 353
    .local v10, "cur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Sensor;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "deviceId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 355
    :goto_0
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    const-string v0, "sensorTypeId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "resolution"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-string v0, "minimumDelay"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "maximumRange"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    const-string v0, "name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "sensorId"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v0, "sensorInterrupt"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v9, v12

    :goto_1
    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->addSensor(IDIDLjava/lang/String;IZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    move-result-object v11

    .line 364
    .local v11, "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 367
    .end local v11    # "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_0

    .line 368
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    move v9, v13

    .line 356
    goto :goto_1

    .line 367
    :cond_2
    if-eqz v10, :cond_3

    .line 368
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_3
    return-void
.end method

.method private static addWidget(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;)V
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "display"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    .prologue
    .line 292
    const/4 v7, 0x0

    .line 294
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Widget;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "displayId= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 296
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "cellWidth"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "cellHeight"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v0, "maxWidth"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "maxHeight"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "displayMode"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->addWidget(IIIIILjava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;

    move-result-object v8

    .line 306
    .local v8, "widget":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 309
    .end local v8    # "widget":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 310
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 309
    :cond_1
    if-eqz v7, :cond_2

    .line 310
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_2
    return-void
.end method

.method public static declared-synchronized getHostAppByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v12, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    monitor-enter v12

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 195
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 196
    .local v10, "cur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 198
    .local v11, "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :try_start_1
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$HostApp;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "packageName= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 200
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "packageName"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "widgetApiVersion"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "controlApiVersion"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "sensorApiVersion"

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "notificationApiVersion"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "widgetRefreshrate"

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;-><init>(ILjava/lang/String;Ljava/lang/String;IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v11    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .local v1, "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :try_start_2
    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->addDevices(Landroid/content/ContentResolver;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 216
    :goto_0
    if-eqz v10, :cond_0

    .line 217
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    :cond_0
    monitor-exit v12

    return-object v1

    .line 216
    .end local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .restart local v11    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :catchall_0
    move-exception v2

    move-object v1, v11

    .end local v11    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .restart local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :goto_1
    if-eqz v10, :cond_1

    .line 217
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .end local v10    # "cur":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v12

    throw v2

    .line 216
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .restart local v10    # "cur":Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    goto :goto_1

    .end local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .restart local v11    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :cond_2
    move-object v1, v11

    .end local v11    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .restart local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    goto :goto_0
.end method

.method private getInsertContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 667
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 668
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v1, "controlApiVersion"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mControlApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string v1, "widgetApiVersion"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string v1, "sensorApiVersion"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mSensorApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v1, "notificationApiVersion"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mNotificationApiVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string v1, "widgetRefreshrate"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetRefreshRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string v1, "version"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-object v0
.end method

.method private getInsertOperation()Landroid/content/ContentProviderOperation;
    .locals 3

    .prologue
    .line 659
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$HostApp;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 661
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getInsertContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 662
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method

.method private static getPreRegisteredKeyPads(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 487
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPad;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 488
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 490
    .local v8, "id":I
    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 491
    .local v9, "type":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->sKeyPads:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 493
    .end local v8    # "id":I
    .end local v9    # "type":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 494
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 495
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Error when reading pre-registered keypad data."

    invoke-static {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    :cond_0
    if-eqz v6, :cond_1

    .line 498
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 497
    :cond_2
    if-eqz v6, :cond_1

    .line 498
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 497
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 498
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static getPreRegisteredTypes(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 428
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 429
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 431
    .local v8, "id":I
    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 432
    .local v9, "type":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->sSensorTypes:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 434
    .end local v8    # "id":I
    .end local v9    # "type":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 435
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 436
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Error when reading pre-registered sensor data."

    invoke-static {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    :cond_0
    if-eqz v6, :cond_1

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 442
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 438
    :cond_2
    if-eqz v6, :cond_1

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 439
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static initData(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 510
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->preRegisterTypes(Landroid/content/Context;)V

    .line 511
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getPreRegisteredTypes(Landroid/content/Context;)V

    .line 512
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->preRegisterKeyPads(Landroid/content/Context;)V

    .line 513
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getPreRegisteredKeyPads(Landroid/content/Context;)V

    .line 514
    return-void
.end method

.method public static declared-synchronized isRegistered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 595
    const-class v8, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    monitor-enter v8

    const/4 v7, 0x0

    .line 596
    .local v7, "reg":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 597
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$HostApp;->URI:Landroid/net/Uri;

    .line 598
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "packageName =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 602
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    .line 603
    const/4 v7, 0x1

    .line 606
    :cond_0
    if-eqz v6, :cond_1

    .line 607
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 610
    :cond_1
    monitor-exit v8

    return v7

    .line 606
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 607
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 595
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v8

    throw v2
.end method

.method private static preRegisterKeyPads(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 454
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v8, "val":Landroid/content/ContentValues;
    const-string v3, "type= \'Back\'"

    .line 457
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPad;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 458
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v9, :cond_0

    .line 459
    const-string v1, "type"

    const-string v2, "Back"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPad;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 462
    :cond_0
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 463
    const-string v3, "type= \'Action\'"

    .line 464
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPad;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 465
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v9, :cond_1

    .line 466
    const-string v1, "type"

    const-string v2, "Action"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPad;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_1
    if-eqz v6, :cond_2

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "val":Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v7

    .line 470
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 471
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Error in sensor pre-registration."

    invoke-static {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :cond_3
    if-eqz v6, :cond_2

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 473
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private static preRegisterTypes(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 381
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 384
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v8, "val":Landroid/content/ContentValues;
    const-string v3, "type= \'Accelerometer\'"

    .line 388
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v9, :cond_0

    .line 390
    const-string v1, "type"

    const-string v2, "Accelerometer"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "delicate_data"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 394
    :cond_0
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 395
    const-string v3, "type= \'Light\'"

    .line 396
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 397
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v9, :cond_1

    .line 398
    const-string v1, "type"

    const-string v2, "Light"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "delicate_data"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 400
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 402
    :cond_1
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 403
    const-string v3, "type= \'MagneticField\'"

    .line 404
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 405
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v9, :cond_2

    .line 406
    const-string v1, "type"

    const-string v2, "MagneticField"

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "delicate_data"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_2
    if-eqz v6, :cond_3

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 418
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "val":Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v7

    .line 411
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 412
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Error in sensor pre-registration."

    invoke-static {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :cond_4
    if-eqz v6, :cond_3

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 414
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static declared-synchronized registerHostApp(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .locals 26
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hostApp"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    .prologue
    .line 520
    const-class v23, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    monitor-enter v23

    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v17, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getInsertOperation()Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 522
    .local v16, "op":Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    const/4 v9, 0x0

    .line 524
    .local v9, "hostAppIndex":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_7

    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getDevices()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .line 526
    .local v4, "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    invoke-static {v4, v9}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->access$000(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;I)Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 527
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v5, v22, -0x1

    .line 529
    .local v5, "deviceOperationIndex":I
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getDisplays()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    .line 530
    .local v6, "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    invoke-static {v6, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->access$100(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;I)Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 531
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding display: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Operation: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 534
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v7, v22, -0x1

    .line 535
    .local v7, "displayOperationIndex":I
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->getWidgets()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;

    .line 536
    .local v21, "widget":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->access$200(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;I)Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 537
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Adding widget: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " Operation: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 520
    .end local v4    # "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .end local v5    # "deviceOperationIndex":I
    .end local v6    # "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    .end local v7    # "displayOperationIndex":I
    .end local v9    # "hostAppIndex":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "op":Landroid/content/ContentProviderOperation;
    .end local v17    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v21    # "widget":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 542
    .restart local v4    # "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .restart local v5    # "deviceOperationIndex":I
    .restart local v9    # "hostAppIndex":I
    .restart local v16    # "op":Landroid/content/ContentProviderOperation;
    .restart local v17    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getLeds()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;

    .line 543
    .local v14, "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    invoke-static {v14, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->access$300(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;I)Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 544
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 546
    .end local v14    # "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    :cond_3
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getInputs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;

    .line 547
    .local v13, "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    invoke-static {v13, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->access$400(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;I)Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 548
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 550
    .end local v13    # "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    :cond_4
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getSensors()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    .line 551
    .local v20, "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->access$500(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;I)Landroid/content/ContentProviderOperation;

    move-result-object v16

    .line 552
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 556
    .end local v4    # "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .end local v5    # "deviceOperationIndex":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v20    # "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    :cond_5
    const/16 v19, 0x0

    .line 558
    .local v19, "results":[Landroid/content/ContentProviderResult;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v24, "com.sonyericsson.extras.liveware.aef.registration"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v19

    .line 572
    if-eqz v19, :cond_6

    .line 573
    :try_start_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 574
    move-object/from16 v3, v19

    .local v3, "arr$":[Landroid/content/ContentProviderResult;
    array-length v15, v3

    .local v15, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_4
    if-ge v10, v15, :cond_6

    aget-object v18, v3, v10

    .line 575
    .local v18, "res":Landroid/content/ContentProviderResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 576
    const/16 v19, 0x0

    .line 584
    .end local v3    # "arr$":[Landroid/content/ContentProviderResult;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_6
    :goto_5
    if-nez v19, :cond_1d

    .line 585
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->removeHostApp(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    const/16 p1, 0x0

    .line 591
    .end local v19    # "results":[Landroid/content/ContentProviderResult;
    .end local p1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :cond_7
    :goto_6
    monitor-exit v23

    return-object p1

    .line 574
    .restart local v3    # "arr$":[Landroid/content/ContentProviderResult;
    .restart local v10    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    .restart local v19    # "results":[Landroid/content/ContentProviderResult;
    .restart local p1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 581
    .end local v3    # "arr$":[Landroid/content/ContentProviderResult;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_9
    const/16 v19, 0x0

    goto :goto_5

    .line 559
    :catch_0
    move-exception v8

    .line 560
    .local v8, "e":Landroid/content/OperationApplicationException;
    :try_start_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 561
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v22

    if-eqz v22, :cond_a

    const-string v22, "Error when adding a device"

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 562
    :cond_a
    const/16 v22, 0x0

    .line 572
    if-eqz v19, :cond_b

    .line 573
    :try_start_5
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 574
    move-object/from16 v3, v19

    .local v3, "arr$":Ljava/lang/Object;
    array-length v15, v3

    .restart local v15    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_7
    if-ge v10, v15, :cond_b

    aget-object v18, v3, v10

    .line 575
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_c

    .line 576
    const/16 v19, 0x0

    .line 584
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_b
    :goto_8
    if-nez v19, :cond_e

    .line 585
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->removeHostApp(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 586
    const/16 p1, 0x0

    goto :goto_6

    .line 574
    .restart local v3    # "arr$":Ljava/lang/Object;
    .restart local v10    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 581
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_d
    const/16 v19, 0x0

    goto :goto_8

    :cond_e
    move-object/from16 p1, v22

    .line 586
    goto :goto_6

    .line 563
    .end local v8    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v8

    .line 564
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_6
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 565
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v22

    if-eqz v22, :cond_f

    const-string v22, "Error when adding a device"

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 566
    :cond_f
    const/16 v22, 0x0

    .line 572
    if-eqz v19, :cond_10

    .line 573
    :try_start_7
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 574
    move-object/from16 v3, v19

    .restart local v3    # "arr$":Ljava/lang/Object;
    array-length v15, v3

    .restart local v15    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_9
    if-ge v10, v15, :cond_10

    aget-object v18, v3, v10

    .line 575
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_11

    .line 576
    const/16 v19, 0x0

    .line 584
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_10
    :goto_a
    if-nez v19, :cond_13

    .line 585
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->removeHostApp(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 586
    const/16 p1, 0x0

    goto/16 :goto_6

    .line 574
    .restart local v3    # "arr$":Ljava/lang/Object;
    .restart local v10    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 581
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_12
    const/16 v19, 0x0

    goto :goto_a

    :cond_13
    move-object/from16 p1, v22

    .line 586
    goto/16 :goto_6

    .line 567
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v8

    .line 568
    .local v8, "e":Landroid/database/SQLException;
    :try_start_8
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 569
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v22

    if-eqz v22, :cond_14

    const-string v22, "Error when adding a device"

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 570
    :cond_14
    const/16 v22, 0x0

    .line 572
    if-eqz v19, :cond_15

    .line 573
    :try_start_9
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    .line 574
    move-object/from16 v3, v19

    .restart local v3    # "arr$":Ljava/lang/Object;
    array-length v15, v3

    .restart local v15    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_b
    if-ge v10, v15, :cond_15

    aget-object v18, v3, v10

    .line 575
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_16

    .line 576
    const/16 v19, 0x0

    .line 584
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_15
    :goto_c
    if-nez v19, :cond_18

    .line 585
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->removeHostApp(Landroid/content/Context;)V

    .line 586
    const/16 p1, 0x0

    goto/16 :goto_6

    .line 574
    .restart local v3    # "arr$":Ljava/lang/Object;
    .restart local v10    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 581
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_17
    const/16 v19, 0x0

    goto :goto_c

    :cond_18
    move-object/from16 p1, v22

    .line 586
    goto/16 :goto_6

    .line 572
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v22

    if-eqz v19, :cond_19

    .line 573
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 574
    move-object/from16 v3, v19

    .restart local v3    # "arr$":Ljava/lang/Object;
    array-length v15, v3

    .restart local v15    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_d
    if-ge v10, v15, :cond_19

    aget-object v18, v3, v10

    .line 575
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-nez v24, :cond_1a

    .line 576
    const/16 v19, 0x0

    .line 584
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_19
    :goto_e
    if-nez v19, :cond_1c

    .line 585
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->removeHostApp(Landroid/content/Context;)V

    .line 586
    const/16 p1, 0x0

    goto/16 :goto_6

    .line 574
    .restart local v3    # "arr$":Ljava/lang/Object;
    .restart local v10    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 581
    .end local v3    # "arr$":Ljava/lang/Object;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "res":Landroid/content/ContentProviderResult;
    :cond_1b
    const/16 v19, 0x0

    goto :goto_e

    .line 586
    :cond_1c
    throw v22

    .line 589
    :cond_1d
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->unwrapContentProviderInsertResults([Landroid/content/ContentProviderResult;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6
.end method

.method private removeHostApp(Landroid/content/Context;)V
    .locals 15
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 723
    iget-object v12, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .line 724
    .local v1, "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getDisplays()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    .line 725
    .local v2, "disp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->getId()I

    move-result v12

    if-lez v12, :cond_1

    .line 726
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->getWidgets()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;

    .line 727
    .local v10, "widget":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    invoke-static {v10}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->access$600(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;)I

    move-result v12

    if-lez v12, :cond_2

    .line 728
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Widget;->URI:Landroid/net/Uri;

    invoke-static {v10}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->access$600(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 730
    .local v11, "widgetUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 731
    .local v0, "deleted":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 732
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Widgets deleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 734
    :cond_3
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->access$602(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;I)I

    goto :goto_2

    .line 738
    .end local v0    # "deleted":I
    .end local v10    # "widget":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    .end local v11    # "widgetUri":Landroid/net/Uri;
    :cond_4
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Display;->URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 740
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 741
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->setId(I)V

    goto :goto_1

    .line 744
    .end local v2    # "disp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getLeds()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;

    .line 745
    .local v7, "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->getId()I

    move-result v12

    if-lez v12, :cond_6

    .line 746
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Led;->URI:Landroid/net/Uri;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 748
    .restart local v9    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 749
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->setId(I)V

    goto :goto_3

    .line 752
    .end local v7    # "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getSensors()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    .line 753
    .local v8, "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->getId()I

    move-result v12

    if-lez v12, :cond_8

    .line 754
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Sensor;->URI:Landroid/net/Uri;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 756
    .restart local v9    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 757
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->setId(I)V

    goto :goto_4

    .line 760
    .end local v8    # "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_9
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getInputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;

    .line 761
    .local v6, "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->getId()I

    move-result v12

    if-lez v12, :cond_a

    .line 762
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Input;->URI:Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 764
    .restart local v9    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 765
    .restart local v0    # "deleted":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 766
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Inputs deleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 768
    :cond_b
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->setId(I)V

    goto :goto_5

    .line 771
    .end local v0    # "deleted":I
    .end local v6    # "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_c
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v12

    if-lez v12, :cond_0

    .line 772
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Device;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 774
    .restart local v9    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 775
    .restart local v0    # "deleted":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 776
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Devices deleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 779
    :cond_d
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->setId(I)V

    goto/16 :goto_0

    .line 782
    .end local v0    # "deleted":I
    .end local v1    # "dev":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_e
    iget v12, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    if-lez v12, :cond_10

    .line 783
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$HostApp;->URI:Landroid/net/Uri;

    iget v13, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 784
    .restart local v9    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 785
    .restart local v0    # "deleted":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 786
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HostApps deleted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 789
    :cond_f
    const/4 v12, 0x0

    iput v12, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    .line 791
    .end local v0    # "deleted":I
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_10
    return-void
.end method

.method private unwrapContentProviderInsertResults([Landroid/content/ContentProviderResult;I)I
    .locals 8
    .param p1, "results"    # [Landroid/content/ContentProviderResult;
    .param p2, "i"    # I

    .prologue
    .line 679
    aget-object v7, p1, p2

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 680
    .local v4, "id":I
    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->setId(I)V

    .line 681
    add-int/lit8 p2, p2, 0x1

    .line 682
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .line 683
    .local v0, "d":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    array-length v7, p1

    if-ge p2, v7, :cond_0

    .line 684
    aget-object v7, p1, p2

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 685
    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->setId(I)V

    .line 686
    add-int/lit8 p2, p2, 0x1

    .line 687
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getDisplays()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    .line 688
    .local v1, "disp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    array-length v7, p1

    if-ge p2, v7, :cond_1

    .line 689
    aget-object v7, p1, p2

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 690
    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->setId(I)V

    .line 691
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 694
    .end local v1    # "disp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getLeds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;

    .line 695
    .local v5, "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    array-length v7, p1

    if-ge p2, v7, :cond_3

    .line 696
    aget-object v7, p1, p2

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 697
    invoke-virtual {v5, v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->setId(I)V

    .line 698
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 701
    .end local v5    # "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    :cond_4
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getSensors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    .line 702
    .local v6, "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    array-length v7, p1

    if-ge p2, v7, :cond_5

    .line 703
    aget-object v7, p1, p2

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 704
    invoke-virtual {v6, v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->setId(I)V

    .line 705
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 710
    .end local v0    # "d":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    :cond_6
    return p2
.end method

.method public static updateHostAppVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 16
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 616
    const/4 v12, 0x0

    .line 618
    .local v12, "rowsUpdated":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 619
    .local v10, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .local v9, "newVersion":Ljava/lang/String;
    const-string v4, "packageName=?"

    .line 626
    .local v4, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    .line 627
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 628
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$HostApp;->URI:Landroid/net/Uri;

    .line 629
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v15, "version"

    aput-object v15, v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 632
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    const-string v3, "version"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, "registeredVersion":Ljava/lang/String;
    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 637
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v14, "values":Landroid/content/ContentValues;
    const-string v3, "version"

    invoke-virtual {v14, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1, v2, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 640
    if-lez v12, :cond_0

    .line 641
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Updated registered host application version from %s to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v6, v15

    const/4 v15, 0x1

    aput-object v9, v6, v15

    invoke-static {v3, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    .end local v11    # "registeredVersion":Ljava/lang/String;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 652
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v13, v12

    .line 655
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "newVersion":Ljava/lang/String;
    .end local v10    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "rowsUpdated":I
    .local v13, "rowsUpdated":I
    :goto_1
    return v13

    .line 620
    .end local v13    # "rowsUpdated":I
    .restart local v12    # "rowsUpdated":I
    :catch_0
    move-exception v8

    .line 621
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Unable to read host application version, cannot update registration"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    :cond_2
    move v13, v12

    .line 622
    .end local v12    # "rowsUpdated":I
    .restart local v13    # "rowsUpdated":I
    goto :goto_1

    .line 645
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "rowsUpdated":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "newVersion":Ljava/lang/String;
    .restart local v10    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "registeredVersion":Ljava/lang/String;
    .restart local v12    # "rowsUpdated":I
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 646
    const-string v3, "No need to update registered host application version, at: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v6, v15

    invoke-static {v3, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 651
    .end local v11    # "registeredVersion":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_4

    .line 652
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method


# virtual methods
.method public declared-synchronized addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZI)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .locals 13
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subType"    # Ljava/lang/String;
    .param p4, "marketingName"    # Ljava/lang/String;
    .param p5, "vendor"    # Ljava/lang/String;
    .param p6, "firmwareVersion"    # I
    .param p7, "widgetImageHeight"    # I
    .param p8, "widgetImageWidth"    # I
    .param p9, "vibrator"    # Z
    .param p10, "layoutSupport"    # I

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZI)V

    .line 148
    .local v0, "device":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-object v0

    .line 146
    .end local v0    # "device":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v6

    .line 66
    :cond_1
    instance-of v8, p1, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    if-nez v8, :cond_2

    move v6, v7

    .line 67
    goto :goto_0

    :cond_2
    move-object v5, p1

    .line 70
    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    .line 74
    .local v5, "other":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    iget v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    if-eq v8, v9, :cond_3

    move v6, v7

    goto :goto_0

    .line 75
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mPackageName:Ljava/lang/String;

    if-nez v8, :cond_6

    iget-object v8, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mPackageName:Ljava/lang/String;

    if-nez v8, :cond_7

    .line 76
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mVersion:Ljava/lang/String;

    if-nez v8, :cond_8

    iget-object v8, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mVersion:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 77
    :cond_5
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetApiVersion:I

    iget v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetApiVersion:I

    if-eq v8, v9, :cond_a

    move v6, v7

    goto :goto_0

    .line 75
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mPackageName:Ljava/lang/String;

    iget-object v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_7
    move v6, v7

    goto :goto_0

    .line 76
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mVersion:Ljava/lang/String;

    iget-object v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_9
    move v6, v7

    goto :goto_0

    .line 78
    :cond_a
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mControlApiVersion:I

    iget v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mControlApiVersion:I

    if-eq v8, v9, :cond_b

    move v6, v7

    goto :goto_0

    .line 79
    :cond_b
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mSensorApiVersion:I

    iget v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mSensorApiVersion:I

    if-eq v8, v9, :cond_c

    move v6, v7

    goto :goto_0

    .line 80
    :cond_c
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mNotificationApiVersion:I

    iget v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mNotificationApiVersion:I

    if-eq v8, v9, :cond_d

    move v6, v7

    goto :goto_0

    .line 81
    :cond_d
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetRefreshRate:I

    iget v9, v5, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetRefreshRate:I

    if-eq v8, v9, :cond_e

    move v6, v7

    goto :goto_0

    .line 83
    :cond_e
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .line 84
    .local v0, "d":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    const/4 v1, 0x0

    .line 85
    .local v1, "found":Z
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getDevices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .line 86
    .local v4, "od":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v8

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getId()I

    move-result v9

    if-ne v8, v9, :cond_10

    .line 87
    const/4 v1, 0x1

    .line 91
    .end local v4    # "od":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    :cond_11
    if-nez v1, :cond_f

    move v6, v7

    .line 92
    goto/16 :goto_0
.end method

.method public getControlApiVersion()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mControlApiVersion:I

    return v0
.end method

.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    return v0
.end method

.method public getNotificationApiVersion()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mNotificationApiVersion:I

    return v0
.end method

.method public getSensorApiVersion()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mSensorApiVersion:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetApiVersion()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetApiVersion:I

    return v0
.end method

.method public getWidgetRefreshRate()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mWidgetRefreshRate:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashCode not implemented for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public setAccessoryConnectionStatus(Landroid/content/ContentResolver;Z)V
    .locals 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "connected"    # Z

    .prologue
    .line 166
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v3, "val":Landroid/content/ContentValues;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, "filter":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getMarketingName()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "marketingName":Ljava/lang/String;
    const-string v4, "marketingName"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    if-eqz p2, :cond_1

    .line 173
    const-string v4, "accessory_connected"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    :goto_0
    sget-object v4, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Device;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set accessory connection status. Connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 188
    .end local v1    # "filter":Ljava/lang/StringBuilder;
    .end local v2    # "marketingName":Ljava/lang/String;
    .end local v3    # "val":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 176
    .restart local v1    # "filter":Ljava/lang/StringBuilder;
    .restart local v2    # "marketingName":Ljava/lang/String;
    .restart local v3    # "val":Landroid/content/ContentValues;
    :cond_1
    const-string v4, "accessory_connected"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v1    # "filter":Ljava/lang/StringBuilder;
    .end local v2    # "marketingName":Ljava/lang/String;
    .end local v3    # "val":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const-string v4, "Failed setting accessory connection status."

    invoke-static {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method setId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    .line 110
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;

    .line 111
    .local v0, "device":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->mId:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->setHostAppId(I)V

    goto :goto_0

    .line 113
    .end local v0    # "device":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    :cond_0
    return-void
.end method

.method public testRemoveHostApp(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->removeHostApp(Landroid/content/Context;)V

    .line 720
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$1;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CHILD_SUFFIX:Ljava/lang/String; = ".child"


# instance fields
.field private final mApiRegistrationId:I

.field private mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

.field private mCid:I

.field private final mConfigurationActivity:Ljava/lang/String;

.field private final mConfigurationText:Ljava/lang/String;

.field private final mControlApiVersion:I

.field private final mExtension48PxIconUri:Ljava/lang/String;

.field private mExtensionIconCid:I

.field private mExtensionIconOfflineCid:I

.field private final mExtensionIconUri:Ljava/lang/String;

.field private final mExtensionIconUriBlackWhite:Ljava/lang/String;

.field private final mExtensionKey:Ljava/lang/String;

.field private final mHostAppIconUri:Ljava/lang/String;

.field private final mHostAppPackage:Ljava/lang/String;

.field private mId:Ljava/lang/Long;

.field private mInstalled:Z

.field private final mLaunchMode:I

.field private final mName:Ljava/lang/String;

.field private mNameCid:I

.field private final mNotificationApiVersion:I

.field private final mPackageName:Ljava/lang/String;

.field private mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

.field private final mSensorApiVersion:I

.field private mShowOnHomeScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;

.field private final mSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportsActiveLowPowerMode:Z

.field private mSupportsBackKey:Z

.field private final mWidgetApiVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 21
    .param p1, "e"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUriBlackWhite()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getSensorApiVersion()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionLaunchMode()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsActiveLowPowerMode()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getApiRegistrationId()I

    move-result v20

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v20}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IIIIIZI)V

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsBackKey()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSupportsBackKey:Z

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->isInstalled()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mInstalled:Z

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getChild()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 277
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParent()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IIIIIZI)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "extensionKey"    # Ljava/lang/String;
    .param p3, "notificationApiVersion"    # I
    .param p4, "configurationActivity"    # Ljava/lang/String;
    .param p5, "configurationText"    # Ljava/lang/String;
    .param p6, "hostAppIconUri"    # Ljava/lang/String;
    .param p7, "extensionIconUri"    # Ljava/lang/String;
    .param p8, "extension48PxIconUri"    # Ljava/lang/String;
    .param p9, "extensionIconBlackWhite"    # Ljava/lang/String;
    .param p10, "packageName"    # Ljava/lang/String;
    .param p12, "hostAppPackage"    # Ljava/lang/String;
    .param p13, "widgetApiVersion"    # I
    .param p14, "controlApiVersion"    # I
    .param p15, "sensorApiVersion"    # I
    .param p16, "extensionCid"    # I
    .param p17, "launchMode"    # I
    .param p18, "supportsLowPowerMode"    # Z
    .param p19, "apiRegistrationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;",
            "Ljava/lang/String;",
            "IIIIIZI)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p11, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mCid:I

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNameCid:I

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconCid:I

    .line 106
    const/4 v1, -0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconOfflineCid:I

    .line 158
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;->LET_PROPERTIES_DECIDE:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mShowOnHomeScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Extension must have a name!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Extension must have a key!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_1
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionKey:Ljava/lang/String;

    .line 231
    if-gez p3, :cond_2

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Notification API version must be >= 0!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_2
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNotificationApiVersion:I

    .line 236
    if-lez p14, :cond_3

    invoke-static {p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No host app package set!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_3
    iput-object p12, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mHostAppPackage:Ljava/lang/String;

    .line 242
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mConfigurationActivity:Ljava/lang/String;

    .line 243
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mConfigurationText:Ljava/lang/String;

    .line 244
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mHostAppIconUri:Ljava/lang/String;

    .line 245
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconUri:Ljava/lang/String;

    .line 246
    iput-object p8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtension48PxIconUri:Ljava/lang/String;

    .line 247
    iput-object p9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconUriBlackWhite:Ljava/lang/String;

    .line 248
    iput-object p10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mPackageName:Ljava/lang/String;

    .line 249
    if-nez p11, :cond_4

    new-instance p11, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local p11    # "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-direct {p11}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :cond_4
    iput-object p11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    .line 251
    move/from16 v0, p13

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mWidgetApiVersion:I

    .line 252
    move/from16 v0, p14

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mControlApiVersion:I

    .line 253
    move/from16 v0, p15

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSensorApiVersion:I

    .line 254
    move/from16 v0, p17

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mLaunchMode:I

    .line 256
    move/from16 v0, p16

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mCid:I

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 259
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSupportsActiveLowPowerMode:Z

    .line 261
    move/from16 v0, p19

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mApiRegistrationId:I

    .line 262
    return-void
.end method

.method public static getExtensionServiceComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "extensionPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 749
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.extras.liveware.aef.tunnel.action.BIND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 753
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 754
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 755
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_0
    return-object v3

    .line 758
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 759
    const-string v3, "Failed getting extension service name for %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getIndex(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)I
    .locals 8
    .param p1, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    .line 541
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 542
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 543
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 544
    .local v2, "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 549
    .end local v0    # "i":I
    .end local v2    # "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :goto_1
    return v0

    .line 542
    .restart local v0    # "i":I
    .restart local v2    # "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v2    # "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setParent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 0
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 698
    return-void
.end method


# virtual methods
.method public addNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V
    .locals 6
    .param p1, "src"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    .line 455
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNotificationApiVersion:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 458
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v2

    if-lez v2, :cond_2

    .line 459
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sources added to child of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 462
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->addNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v2

    if-lez v2, :cond_4

    .line 464
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sources added to parent of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 467
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->addNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V

    goto :goto_0

    .line 471
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sources not added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a notificaiton extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0

    .line 477
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 478
    .local v1, "oldSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 479
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getIndex(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 483
    .end local v1    # "oldSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 554
    instance-of v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-nez v4, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 558
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 560
    .local v0, "other":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mConfigurationActivity:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mConfigurationText:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconUri:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtension48PxIconUri:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUriBlackWhite()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconUriBlackWhite:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionKey:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mHostAppIconUri:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNotificationApiVersion:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionLaunchMode()I

    move-result v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mLaunchMode:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mControlApiVersion:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getSensorApiVersion()I

    move-result v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSensorApiVersion:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mWidgetApiVersion:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsActiveLowPowerMode()Z

    move-result v4

    iget-boolean v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSupportsActiveLowPowerMode:Z

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppPackage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mHostAppPackage:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v1

    .line 588
    .local v1, "otherSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v2

    .line 589
    .local v2, "thisSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    if-eqz v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    .line 593
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 594
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public getApiRegistrationId()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mApiRegistrationId:I

    return v0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 411
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "basePackage":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "Getting base pkg Name for %s parent=%s base=%s."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParentPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_0
    return-object v0

    .line 411
    .end local v0    # "basePackage":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBiggestExtensionIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtension48PxIconUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtension48PxIconUri:Ljava/lang/String;

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getChild()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mCid:I

    return v0
.end method

.method public getConfigurationActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mConfigurationActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mConfigurationText:Ljava/lang/String;

    return-object v0
.end method

.method public getControlApiVersion()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mControlApiVersion:I

    return v0
.end method

.method public getExtension48PxIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtension48PxIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionIconCid()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconCid:I

    return v0
.end method

.method public getExtensionIconOfflineCid()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconOfflineCid:I

    return v0
.end method

.method public getExtensionIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionIconUriBlackWhite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconUriBlackWhite:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionLaunchMode()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mLaunchMode:I

    return v0
.end method

.method public getHostAppIconUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mHostAppIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getHostAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mHostAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCid()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNameCid:I

    return v0
.end method

.method public getNotificationApiVersion()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNotificationApiVersion:I

    return v0
.end method

.method public getNotificationSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationSourcesFromDualExtension()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNotificationApiVersion:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    .line 424
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 425
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sources gotten from to child of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v0

    if-lez v0, :cond_3

    .line 430
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sources gotten from parent of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 435
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 436
    const-string v0, "Sources not gotten from child/parent"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    return-object v0
.end method

.method public getParentPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRelativeCid()I
    .locals 1

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->isChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v0

    .line 778
    :goto_0
    return v0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v0

    goto :goto_0

    .line 778
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSensorApiVersion()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSensorApiVersion:I

    return v0
.end method

.method public getShowOnHomeScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 670
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$Extension$ShowOnHomeScreen:[I

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mShowOnHomeScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 678
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mControlApiVersion:I

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 672
    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWidgetApiVersion()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mWidgetApiVersion:I

    return v0
.end method

.method public hasNotificationsSources()Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 610
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not implemented for Extension"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 611
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public isChild()Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mInstalled:Z

    return v0
.end method

.method public removeNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V
    .locals 2
    .param p1, "src"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSources:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getIndex(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method public sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Intent;)V
    .locals 2
    .param p1, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 722
    const-string v0, "extension_key"

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v0, "aha_package_name"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mHostAppPackage:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    invoke-interface {p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 734
    return-void
.end method

.method public sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Ljava/lang/String;)V
    .locals 1
    .param p1, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p2, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method public setChild(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mParent:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 691
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 692
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mChild:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setParent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 694
    return-void
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mCid:I

    .line 301
    return-void
.end method

.method public setCids(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 8
    .param p1, "src"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 640
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setCid(I)V

    .line 641
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNameCid()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setNameCid(I)V

    .line 642
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconCid()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setExtensionIconCid(I)V

    .line 643
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconOfflineCid()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setExtensionIconOfflineCid(I)V

    .line 646
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 647
    .local v3, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 648
    .local v0, "currentSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v4

    if-nez v4, :cond_1

    .line 650
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->setCid(I)V

    goto :goto_0

    .line 655
    .end local v0    # "currentSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_2
    return-void
.end method

.method public setExtensionIconCid(I)V
    .locals 0
    .param p1, "extensionIconCid"    # I

    .prologue
    .line 625
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconCid:I

    .line 626
    return-void
.end method

.method public setExtensionIconOfflineCid(I)V
    .locals 0
    .param p1, "extensionIconOfflineCid"    # I

    .prologue
    .line 632
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mExtensionIconOfflineCid:I

    .line 633
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 319
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mId:Ljava/lang/Long;

    .line 320
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mInstalled:Z

    .line 784
    return-void
.end method

.method public setNameCid(I)V
    .locals 0
    .param p1, "nameCid"    # I

    .prologue
    .line 618
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mNameCid:I

    .line 619
    return-void
.end method

.method public setSupportsControlBack(Z)V
    .locals 0
    .param p1, "supportBackKey"    # Z

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSupportsBackKey:Z

    .line 663
    return-void
.end method

.method public showOnHomeScreen(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 666
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;->FORCE_SHOW:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mShowOnHomeScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;

    .line 667
    return-void

    .line 666
    :cond_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;->FORCE_DONT_SHOW:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension$ShowOnHomeScreen;

    goto :goto_0
.end method

.method public supportsActiveLowPowerMode()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSupportsActiveLowPowerMode:Z

    return v0
.end method

.method public supportsBackKey()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mSupportsBackKey:Z

    return v0
.end method

.method public supportsClockWidgets()Z
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

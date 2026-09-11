.class public Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByApiRegistrationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    }
.end annotation


# static fields
.field private static final EXTENSION_48PX_ICON_URI_ALIAS:Ljava/lang/String; = "Ext_48PxIconUri"

.field private static final EXTENSION_CONFIGURATION_ACTIVITY_ALIAS:Ljava/lang/String; = "Ext_ConfActivity"

.field private static final EXTENSION_CONFIGURATION_TEXT_ALIAS:Ljava/lang/String; = "Ext_ConfText"

.field private static final EXTENSION_HOST_APP_ICON_URI_ALIAS:Ljava/lang/String; = "Ext_HostAppIconUri"

.field private static final EXTENSION_ICON_URI_ALIAS:Ljava/lang/String; = "Ext_IconUri"

.field private static final EXTENSION_ICON_URI_BLACK_WHITE_ALIAS:Ljava/lang/String; = "Ext_IconUriBlackWhite"

.field private static final EXTENSION_ID_ALIAS:Ljava/lang/String; = "Ext_Id"

.field private static final EXTENSION_KEY_ALIAS:Ljava/lang/String; = "Ext_Key"

.field private static final EXTENSION_LAUNCH_MODE_ALIAS:Ljava/lang/String; = "Ext_launchMode"

.field private static final EXTENSION_NAME_ALIAS:Ljava/lang/String; = "Ext_Name"

.field private static final EXTENSION_NOTIFICATION_API_VERSION_ALIAS:Ljava/lang/String; = "Ext_NotificationApiVers"

.field private static final EXTENSION_PACKAGE_NAME_ALIAS:Ljava/lang/String; = "Ext_PackageName"

.field private static final EXTENSION_TABLE:Ljava/lang/String; = "Extension"

.field private static final JOIN_PROJECTION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "HostAppExtensionManager: "

.field private static final REGISTRATION_CONTROL_API_VERSION_ALIAS:Ljava/lang/String; = "Reg_ControlApiVersion"

.field private static final REGISTRATION_CONTROL_BACK_INTERCEPT_ALIAS:Ljava/lang/String; = "Reg_ControlBackIntercept"

.field private static final REGISTRATION_EXTENSION_ID:Ljava/lang/String; = "Registration.extensionId"

.field private static final REGISTRATION_HOST_APPLICATION_PACKAGE_ALIAS:Ljava/lang/String; = "Reg_HostAppPackage"

.field private static final REGISTRATION_ID_ALIAS:Ljava/lang/String; = "Reg_ApiRegistrationId"

.field private static final REGISTRATION_LOW_POWER_SUPPORT_ALIAS:Ljava/lang/String; = "Reg_LowPowerSupport"

.field private static final REGISTRATION_SENSOR_API_VERSION_ALIAS:Ljava/lang/String; = "Reg_SensorApiVersion"

.field private static final REGISTRATION_TABLE:Ljava/lang/String; = "Registration"

.field private static final REGISTRATION_WIDGET_API_VERSION_ALIAS:Ljava/lang/String; = "Reg_WidgetApiVersion"


# instance fields
.field private final APP_RECOMMENDER_EXT_ID:I

.field private final QUITTING_LOCK:Ljava/lang/Object;

.field derp:Z

.field private mApiRegistrationObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

.field private final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field private final mContext:Landroid/content/Context;

.field private mExtensionCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtensionChangeRunnable:Ljava/lang/Runnable;

.field private mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

.field private final mExtensionsChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mNotificationSourceObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

.field private final mNotificationSourcesChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private mQuitting:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    .line 333
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_Id"

    const-string v2, "Extension._id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_Name"

    const-string v2, "Extension.name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_Key"

    const-string v2, "Extension.extension_key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_NotificationApiVers"

    const-string v2, "Extension.notificationApiVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_ConfActivity"

    const-string v2, "Extension.configurationActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_ConfText"

    const-string v2, "Extension.configurationText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_HostAppIconUri"

    const-string v2, "Extension.iconLargeUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_IconUri"

    const-string v2, "Extension.extensionIconUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_48PxIconUri"

    const-string v2, "Extension.extension48PxIconUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_IconUriBlackWhite"

    const-string v2, "Extension.extensionIconUriBlackWhite"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_PackageName"

    const-string v2, "Extension.packageName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Ext_launchMode"

    const-string v2, "Extension.launchMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Reg_HostAppPackage"

    const-string v2, "Registration.hostAppPackageName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Reg_WidgetApiVersion"

    const-string v2, "Registration.widgetApiVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Reg_ControlApiVersion"

    const-string v2, "Registration.controlApiVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Reg_SensorApiVersion"

    const-string v2, "Registration.sensorApiVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Reg_ControlBackIntercept"

    const-string v2, "Registration.controlBackIntercept"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Reg_LowPowerSupport"

    const-string v2, "Registration.lowPowerSupport"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    const-string v1, "Reg_ApiRegistrationId"

    const-string v2, "Registration._id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mQuitting:Ljava/lang/Boolean;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->QUITTING_LOCK:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourcesChangeListeners:Ljava/util/List;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    .line 127
    const/4 v0, -0x2

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->APP_RECOMMENDER_EXT_ID:I

    .line 129
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionChangeRunnable:Ljava/lang/Runnable;

    .line 859
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->derp:Z

    .line 150
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mPackageName:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    .line 157
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 161
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSyncManagerExtensions(Ljava/util/Hashtable;)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->handleExtensionChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->doClear()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Ljava/util/Hashtable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p1, "x1"    # Ljava/util/Hashtable;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSyncManagerExtensions(Ljava/util/Hashtable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->handleNotificationSourceChanges()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->onExtensionChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->onApiRegistrationChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->onNotificationSourceChanged()V

    return-void
.end method

.method private addExtension(Landroid/database/Cursor;JLjava/lang/String;Ljava/lang/String;II)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 22
    .param p1, "cur"    # Landroid/database/Cursor;
    .param p2, "extensionId"    # J
    .param p4, "extensionName"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "extensionNotificationApi"    # I
    .param p7, "extensionControlApi"    # I

    .prologue
    .line 474
    const/4 v13, 0x0

    .line 475
    .local v13, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    if-lez p6, :cond_0

    .line 476
    const-string v3, "Ext_PackageName"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSmartConnectSources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 480
    :cond_0
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    const-string v3, "Ext_Key"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "Ext_ConfActivity"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "Ext_ConfText"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "Ext_HostAppIconUri"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "Ext_IconUri"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "Ext_48PxIconUri"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "Ext_IconUriBlackWhite"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "Reg_HostAppPackage"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "Reg_WidgetApiVersion"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v3, "Reg_SensorApiVersion"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, -0x1

    const-string v3, "Ext_launchMode"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v3, "Reg_LowPowerSupport"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_2

    const/16 v20, 0x1

    :goto_0
    const-string v3, "Reg_ApiRegistrationId"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v12, p5

    move/from16 v16, p7

    invoke-direct/range {v2 .. v21}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IIIIIZI)V

    .line 502
    .local v2, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setId(J)V

    .line 503
    const-string v3, "Reg_ControlBackIntercept"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setSupportsControlBack(Z)V

    .line 506
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    const-string v4, "HostAppExtensionManager: found SC Extension %s, id: %d, number of sources: %d "

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x2

    if-eqz v13, :cond_4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_1
    return-object v2

    .line 480
    .end local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    .line 503
    .restart local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 507
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private doClear()V
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1470
    return-void
.end method

.method private declared-synchronized getNewId()I
    .locals 10

    .prologue
    .line 517
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 519
    .local v4, "item":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 517
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v4    # "item":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 523
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 529
    const/4 v2, -0x3

    .line 532
    .local v2, "id":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 533
    int-to-long v6, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 538
    :cond_1
    monitor-exit p0

    return v2

    .line 536
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 532
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private handleExtensionChanges()V
    .locals 25

    .prologue
    .line 993
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 994
    const-string v20, "Extension Changes event"

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1015
    :cond_0
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 1019
    .local v9, "freshHashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1023
    .local v2, "cache":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, -0x2

    cmp-long v20, v20, v22

    if-gez v20, :cond_1

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1033
    .end local v2    # "cache":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSmartConnectExtensions(Ljava/util/Hashtable;)V

    .line 1034
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1036
    .local v10, "freshList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1037
    const-string v20, "HostAppExtensionManager:  : extension cache (syncdb) contains:"

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1039
    .local v4, "ex":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1040
    const-string v20, "HostAppExtensionManager:  : %s, cid: 0x%08x"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1044
    .end local v4    # "ex":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_4
    const-string v20, "HostAppExtensionManager:   freshHash (registration) contains:"

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1045
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1046
    .restart local v4    # "ex":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1047
    const-string v20, "HostAppExtensionManager:  : %s, cid: 0x%08x"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1052
    .end local v4    # "ex":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v17, "newExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v3, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .local v18, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v19, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v5

    .line 1061
    .local v5, "existingExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1062
    .local v8, "freshExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    const/4 v7, 0x0

    .line 1064
    .local v7, "found":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1065
    .local v6, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->isSameExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v7

    .line 1067
    if-eqz v7, :cond_8

    .line 1068
    invoke-virtual {v6, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 1069
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1070
    const-string v20, "HostAppExtensionManager: Updated Extension: %s (id: %d, cid: 0x%08x)"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    :cond_9
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_a
    invoke-virtual {v8, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setCids(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 1084
    .end local v6    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_b
    if-nez v7, :cond_7

    .line 1087
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppPackage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1089
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1090
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HostAppExtensionManager: Ignoring "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " change, hostAppPackage not set!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1093
    :cond_c
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1096
    :cond_d
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 1097
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HostAppExtensionManager: New Extension: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "(id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", cid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1101
    :cond_e
    const-string v20, "HostAppExtensionManager: "

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Installed extensions freshList = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " existingExtensions = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090002

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 1103
    const-string v20, "HostAppExtensionManager: Too many extenisons"

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1104
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-class v21, Lcom/sonymobile/smartconnect/hostapp/extensions/MaxExtensionDialog;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1105
    .local v13, "intent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1108
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_f
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1113
    .end local v7    # "found":Z
    .end local v8    # "freshExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1114
    .restart local v6    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    const/4 v7, 0x0

    .line 1115
    .restart local v7    # "found":Z
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1116
    .local v16, "newExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->isSameExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v7

    .line 1117
    if-eqz v7, :cond_12

    .line 1121
    .end local v16    # "newExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_13
    if-nez v7, :cond_11

    .line 1122
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1123
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HostAppExtensionManager: Deleted Extension: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "(id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", cid: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1127
    :cond_14
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1137
    .end local v6    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v7    # "found":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    .line 1140
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_18

    .line 1142
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1143
    .local v15, "newExt":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getNewCid()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setCid(I)V

    goto :goto_5

    .line 1145
    .end local v15    # "newExt":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_16
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 1146
    const-string v20, "ExtensionManager: New extension found, inserting"

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 1150
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;

    .line 1151
    .local v14, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;->onExtensionsInserted(Ljava/util/List;)V

    goto :goto_6

    .line 1154
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    :cond_18
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_19

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;

    .line 1157
    .restart local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;->onExtensionsUpdated(Ljava/util/List;Ljava/util/List;)V

    goto :goto_7

    .line 1160
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    :cond_19
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1a

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;

    .line 1163
    .restart local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    invoke-interface {v14, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;->onExtensionsDeleted(Ljava/util/List;)V

    goto :goto_8

    .line 1166
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
    :cond_1a
    return-void
.end method

.method private handleNotificationSourceChanges()V
    .locals 26

    .prologue
    .line 1227
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v16, "newSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v2, "deletedSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    .local v19, "updatedSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v20, "updatedSourcesOldProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSmartConnectSources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1237
    .local v7, "freshSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    .line 1238
    .local v15, "nFreshSources":I
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v15, :cond_a

    .line 1239
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 1240
    .local v6, "freshSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    const/4 v4, 0x0

    .line 1241
    .local v4, "foundExtension":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v13

    .line 1242
    .local v13, "knownExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1243
    .local v12, "knownExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v12}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1247
    const/4 v4, 0x1

    .line 1249
    const/4 v5, 0x0

    .line 1250
    .local v5, "foundSource":Z
    invoke-virtual {v12}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSourcesFromDualExtension()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 1252
    .local v18, "oldSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_1

    .line 1254
    const/4 v5, 0x1

    .line 1256
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v21

    if-nez v21, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v21

    if-eqz v21, :cond_2

    .line 1258
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->setCid(I)V

    .line 1262
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 1264
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1265
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HostAppExtensionManager: NotificationSource "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " updated!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1268
    :cond_3
    invoke-virtual {v12, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->addNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V

    .line 1269
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1270
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    .end local v18    # "oldSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_4
    if-nez v5, :cond_7

    .line 1277
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1278
    const-string v21, "HostAppExtensionManager: New NotificationSource for extension %s!"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v12}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    :cond_5
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1281
    const-string v21, "HostAppExtensionManager: Source name: %s, color: 0x%08x"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    :cond_6
    invoke-virtual {v12, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->addNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V

    .line 1284
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    .end local v5    # "foundSource":Z
    .end local v12    # "knownExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_7
    if-nez v4, :cond_8

    .line 1292
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1293
    const-string v21, "%s NotificationSource (%s) for unknown/new extension!"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "HostAppExtensionManager: "

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1238
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1237
    .end local v4    # "foundExtension":Z
    .end local v6    # "freshSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "knownExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .end local v15    # "nFreshSources":I
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1299
    .restart local v8    # "i":I
    .restart local v15    # "nFreshSources":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v13

    .line 1300
    .restart local v13    # "knownExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 1304
    .restart local v12    # "knownExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1306
    .local v17, "notificationSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 1307
    .restart local v18    # "oldSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    const/4 v3, 0x0

    .line 1308
    .local v3, "found":Z
    if-eqz v7, :cond_e

    .line 1309
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 1310
    .restart local v6    # "freshSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-nez v21, :cond_d

    .line 1312
    const/4 v3, 0x1

    .line 1317
    .end local v6    # "freshSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_e
    if-nez v3, :cond_c

    .line 1319
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1320
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "HostAppExtensionManager: NotificationSource "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " deleted!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1322
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->removeNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V

    .line 1323
    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1329
    .end local v3    # "found":Z
    .end local v12    # "knownExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v17    # "notificationSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    .end local v18    # "oldSource":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_10
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_12

    .line 1330
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1331
    const-string v21, "ExtensionManager: New source found, inserting"

    invoke-static/range {v21 .. v21}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 1333
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourcesChangeListeners:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;

    .line 1334
    .local v14, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;->onNotificationSourcesInserted(Ljava/util/List;)V

    goto :goto_3

    .line 1337
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
    :cond_12
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_13

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourcesChangeListeners:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;

    .line 1339
    .restart local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;->onNotificationSourcesUpdated(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 1342
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_14

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourcesChangeListeners:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;

    .line 1344
    .restart local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
    invoke-interface {v14, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;->onNotificationSourcesDeleted(Ljava/util/List;)V

    goto :goto_5

    .line 1347
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
    :cond_14
    return-void
.end method

.method private isSameExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z
    .locals 2
    .param p1, "extensionOne"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "extensionTwo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 1182
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1183
    :cond_0
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private loadSmartConnectSources(Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v28, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 654
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/16 v27, 0x0

    .line 655
    .local v27, "cur":Landroid/database/Cursor;
    const/16 v2, 0x11

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "packageName"

    aput-object v6, v3, v2

    const/4 v2, 0x1

    const-string v6, "action_1"

    aput-object v6, v3, v2

    const/4 v2, 0x2

    const-string v6, "action_2"

    aput-object v6, v3, v2

    const/4 v2, 0x3

    const-string v6, "action_3"

    aput-object v6, v3, v2

    const/4 v2, 0x4

    const-string v6, "action_icon_1"

    aput-object v6, v3, v2

    const/4 v2, 0x5

    const-string v6, "action_icon_2"

    aput-object v6, v3, v2

    const/4 v2, 0x6

    const-string v6, "action_icon_3"

    aput-object v6, v3, v2

    const/4 v2, 0x7

    const-string v6, "enabled"

    aput-object v6, v3, v2

    const/16 v2, 0x8

    const-string v6, "extension_specific_id"

    aput-object v6, v3, v2

    const/16 v2, 0x9

    const-string v6, "iconUri1"

    aput-object v6, v3, v2

    const/16 v2, 0xa

    const-string v6, "iconUri2"

    aput-object v6, v3, v2

    const/16 v2, 0xb

    const-string v6, "iconUriBlackWhite"

    aput-object v6, v3, v2

    const/16 v2, 0xc

    const-string v6, "name"

    aput-object v6, v3, v2

    const/16 v2, 0xd

    const-string v6, "textToSpeech"

    aput-object v6, v3, v2

    const/16 v2, 0xe

    const-string v6, "updateTime"

    aput-object v6, v3, v2

    const/16 v2, 0xf

    const-string v6, "color"

    aput-object v6, v3, v2

    const/16 v2, 0x10

    const-string v6, "_id"

    aput-object v6, v3, v2

    .line 675
    .local v3, "columns":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 676
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    .line 677
    .local v5, "args":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 678
    const-string v4, "packageName = ?"

    .line 679
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .end local v5    # "args":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 685
    .restart local v5    # "args":[Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Source;->URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 686
    :goto_0
    if-eqz v27, :cond_3

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 687
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    const-string v2, "_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v2, "packageName"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v2, "name"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "extension_specific_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "iconUri1"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "iconUri2"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "iconUriBlackWhite"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "action_1"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "action_2"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v2, "action_3"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v2, "action_icon_1"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v2, "action_icon_2"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v2, "action_icon_3"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v2, "textToSpeech"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v2, "updateTime"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-string v2, "enabled"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v25, 0x1

    :goto_1
    const-string v2, "color"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-direct/range {v7 .. v26}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V

    .line 719
    .local v7, "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 722
    .end local v7    # "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :catchall_0
    move-exception v2

    if-eqz v27, :cond_1

    .line 723
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 724
    const/16 v27, 0x0

    .line 722
    :cond_1
    throw v2

    .line 687
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 722
    :cond_3
    if-eqz v27, :cond_4

    .line 723
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 724
    const/16 v27, 0x0

    .line 728
    :cond_4
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, v28

    invoke-direct {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private loadSyncManagerExtensions(Ljava/util/Hashtable;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    const/16 v25, 0x0

    .line 553
    .local v25, "cur":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 555
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v3, 0x16

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "configurationActivity"

    aput-object v6, v4, v3

    const/4 v3, 0x2

    const-string v6, "configurationText"

    aput-object v6, v4, v3

    const/4 v3, 0x3

    const-string v6, "controlApiVersion"

    aput-object v6, v4, v3

    const/4 v3, 0x4

    const-string v6, "extensionIconUri"

    aput-object v6, v4, v3

    const/4 v3, 0x5

    const-string v6, "extension48PxIconUri"

    aput-object v6, v4, v3

    const/4 v3, 0x6

    const-string v6, "extensionIconUriBlackWhite"

    aput-object v6, v4, v3

    const/4 v3, 0x7

    const-string v6, "extensionId"

    aput-object v6, v4, v3

    const/16 v3, 0x8

    const-string v6, "extension_key"

    aput-object v6, v4, v3

    const/16 v3, 0x9

    const-string v6, "iconLargeUri"

    aput-object v6, v4, v3

    const/16 v3, 0xa

    const-string v6, "hostAppPackageName"

    aput-object v6, v4, v3

    const/16 v3, 0xb

    const-string v6, "name"

    aput-object v6, v4, v3

    const/16 v3, 0xc

    const-string v6, "notificationApiVersion"

    aput-object v6, v4, v3

    const/16 v3, 0xd

    const-string v6, "packageName"

    aput-object v6, v4, v3

    const/16 v3, 0xe

    const-string v6, "sensorApiVersion"

    aput-object v6, v4, v3

    const/16 v3, 0xf

    const-string v6, "widgetApiVersion"

    aput-object v6, v4, v3

    const/16 v3, 0x10

    const-string v6, "cid"

    aput-object v6, v4, v3

    const/16 v3, 0x11

    const-string v6, "lowPowerSupport"

    aput-object v6, v4, v3

    const/16 v3, 0x12

    const-string v6, "launchMode"

    aput-object v6, v4, v3

    const/16 v3, 0x13

    const-string v6, "isInstalled"

    aput-object v6, v4, v3

    const/16 v3, 0x14

    const-string v6, "controlBackIntercept"

    aput-object v6, v4, v3

    const/16 v3, 0x15

    const-string v6, "apiRegistrationId"

    aput-object v6, v4, v3

    .line 579
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 582
    :goto_0
    if-eqz v25, :cond_6

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 583
    const-string v3, "extensionId"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 586
    .local v26, "extensionId":J
    const-string v3, "packageName"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSyncManagerSources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 588
    .local v16, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    const-string v3, "name"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "extension_key"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "notificationApiVersion"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v3, "configurationActivity"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "configurationText"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "iconLargeUri"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "extensionIconUri"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v3, "extension48PxIconUri"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v3, "extensionIconUriBlackWhite"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v3, "packageName"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v3, "hostAppPackageName"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v3, "widgetApiVersion"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v3, "controlApiVersion"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v3, "sensorApiVersion"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v3, "cid"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string v3, "launchMode"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v3, "lowPowerSupport"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_2

    const/16 v23, 0x1

    :goto_1
    const-string v3, "apiRegistrationId"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-direct/range {v5 .. v24}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;IIIIIZI)V

    .line 623
    .local v5, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setId(J)V

    .line 624
    const-string v3, "isInstalled"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setInstalled(Z)V

    .line 626
    const-string v3, "controlBackIntercept"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v5, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setSupportsControlBack(Z)V

    .line 629
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    const-string v6, "HostAppExtensionManager: found SM Extension %s, id: %d, number of sources: %d "

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    :cond_0
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 637
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v16    # "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    .end local v26    # "extensionId":J
    :catchall_0
    move-exception v3

    if-eqz v25, :cond_1

    .line 638
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 637
    :cond_1
    throw v3

    .line 588
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v16    # "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    .restart local v26    # "extensionId":J
    :cond_2
    const/16 v23, 0x0

    goto :goto_1

    .line 624
    .restart local v5    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 626
    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    .line 630
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 637
    .end local v5    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v16    # "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    .end local v26    # "extensionId":J
    :cond_6
    if-eqz v25, :cond_7

    .line 638
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_7
    return-void
.end method

.method private loadSyncManagerSources(Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 739
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v28, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 742
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/16 v27, 0x0

    .line 743
    .local v27, "cur":Landroid/database/Cursor;
    const/16 v2, 0x12

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "packageName"

    aput-object v6, v3, v2

    const/4 v2, 0x1

    const-string v6, "action_1"

    aput-object v6, v3, v2

    const/4 v2, 0x2

    const-string v6, "action_2"

    aput-object v6, v3, v2

    const/4 v2, 0x3

    const-string v6, "action_3"

    aput-object v6, v3, v2

    const/4 v2, 0x4

    const-string v6, "action_icon_1"

    aput-object v6, v3, v2

    const/4 v2, 0x5

    const-string v6, "action_icon_2"

    aput-object v6, v3, v2

    const/4 v2, 0x6

    const-string v6, "action_icon_3"

    aput-object v6, v3, v2

    const/4 v2, 0x7

    const-string v6, "enabled"

    aput-object v6, v3, v2

    const/16 v2, 0x8

    const-string v6, "extension_specific_id"

    aput-object v6, v3, v2

    const/16 v2, 0x9

    const-string v6, "iconUri1"

    aput-object v6, v3, v2

    const/16 v2, 0xa

    const-string v6, "iconUri2"

    aput-object v6, v3, v2

    const/16 v2, 0xb

    const-string v6, "iconUriBlackWhite"

    aput-object v6, v3, v2

    const/16 v2, 0xc

    const-string v6, "name"

    aput-object v6, v3, v2

    const/16 v2, 0xd

    const-string v6, "textToSpeech"

    aput-object v6, v3, v2

    const/16 v2, 0xe

    const-string v6, "updateTime"

    aput-object v6, v3, v2

    const/16 v2, 0xf

    const-string v6, "color"

    aput-object v6, v3, v2

    const/16 v2, 0x10

    const-string v6, "cid"

    aput-object v6, v3, v2

    const/16 v2, 0x11

    const-string v6, "source_id"

    aput-object v6, v3, v2

    .line 764
    .local v3, "columns":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 765
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    .line 766
    .local v5, "args":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 767
    const-string v4, "packageName = ?"

    .line 768
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .end local v5    # "args":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 774
    .restart local v5    # "args":[Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;->URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 775
    :goto_0
    if-eqz v27, :cond_3

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 776
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    const-string v2, "source_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v2, "packageName"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v2, "name"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "extension_specific_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "iconUri1"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v2, "iconUri2"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "iconUriBlackWhite"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "action_1"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "action_2"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v2, "action_3"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v2, "action_icon_1"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v2, "action_icon_2"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v2, "action_icon_3"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v2, "textToSpeech"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v2, "updateTime"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-string v2, "enabled"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v25, 0x1

    :goto_1
    const-string v2, "color"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-direct/range {v7 .. v26}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V

    .line 811
    .local v7, "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    const-string v2, "cid"

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->setCid(I)V

    .line 813
    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 816
    .end local v7    # "src":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :catchall_0
    move-exception v2

    if-eqz v27, :cond_1

    .line 817
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 818
    const/16 v27, 0x0

    .line 816
    :cond_1
    throw v2

    .line 776
    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 816
    :cond_3
    if-eqz v27, :cond_4

    .line 817
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 818
    const/16 v27, 0x0

    .line 822
    :cond_4
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .end local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    :goto_2
    return-object v28

    .restart local v28    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    :cond_5
    const/16 v28, 0x0

    goto :goto_2
.end method

.method private onApiRegistrationChanged()V
    .locals 2

    .prologue
    .line 1373
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->QUITTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1374
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mQuitting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    monitor-exit v1

    .line 1379
    :goto_0
    return-void

    .line 1377
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->postDelayedHandlingOfExtensionChanges()V

    goto :goto_0

    .line 1377
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onExtensionChanged()V
    .locals 2

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->QUITTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mQuitting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    monitor-exit v1

    .line 1360
    :goto_0
    return-void

    .line 1357
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->postDelayedHandlingOfExtensionChanges()V

    goto :goto_0

    .line 1357
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onNotificationSourceChanged()V
    .locals 2

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->QUITTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1387
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mQuitting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    monitor-exit v1

    .line 1392
    :goto_0
    return-void

    .line 1390
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->handleNotificationSourceChanges()V

    goto :goto_0

    .line 1390
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postDelayedHandlingOfExtensionChanges()V
    .locals 4

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1366
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1367
    return-void
.end method


# virtual methods
.method public addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    return-void
.end method

.method public addNotificationSourcesChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourcesChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourcesChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1454
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    const-string v0, "HostAppExtensionManager: ExtensionManager clear received!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1457
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$5;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$5;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1463
    return-void
.end method

.method public destroy(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->QUITTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mQuitting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    monitor-exit v1

    .line 206
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mQuitting:Ljava/lang/Boolean;

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disableContentObservers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourceObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourceObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourceObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mApiRegistrationObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mApiRegistrationObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 243
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mApiRegistrationObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 247
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

    .line 250
    :cond_2
    return-void
.end method

.method public enableContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 209
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

    .line 211
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Extension;->URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mApiRegistrationObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mApiRegistrationObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

    .line 219
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$ApiRegistration;->URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mApiRegistrationObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ApiRegistrationObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourceObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

    if-nez v0, :cond_2

    .line 226
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourceObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

    .line 227
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Source;->URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mNotificationSourceObserver:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourceObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    :cond_2
    return-void
.end method

.method public declared-synchronized getCtrlExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 924
    monitor-enter p0

    const/4 v2, 0x0

    .line 925
    .local v2, "matchingExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 926
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 928
    move-object v2, v0

    .line 932
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 924
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getExtension(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 855
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    monitor-exit p0

    return-object v0

    .line 855
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 905
    monitor-enter p0

    const/4 v2, 0x0

    .line 906
    .local v2, "matchingExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 907
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    move-object v2, v0

    .line 912
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 905
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getExtensionByApiRegistrationId(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 4
    .param p1, "apiRegistrationId"    # I

    .prologue
    .line 952
    monitor-enter p0

    const/4 v2, 0x0

    .line 953
    .local v2, "matchingExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 954
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getApiRegistrationId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    .line 955
    move-object v2, v0

    .line 959
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 952
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getExtensionByCid(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 937
    monitor-enter p0

    const/4 v2, 0x0

    .line 938
    .local v2, "matchingExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 939
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    .line 940
    move-object v2, v0

    .line 944
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 937
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getExtensionByCid(ILcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "extensionListener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;

    .prologue
    .line 965
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;ILcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    monitor-exit p0

    return-void

    .line 965
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExtensionFromSource(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .locals 7
    .param p1, "sourceId"    # J

    .prologue
    .line 868
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 869
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 870
    .local v3, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 871
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParent()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParent()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v4

    if-lez v4, :cond_3

    .line 873
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParent()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 883
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 874
    .restart local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getChild()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getChild()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v4

    if-lez v4, :cond_2

    .line 876
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getChild()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 883
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 868
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getExtensions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNotificationExtensions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 841
    .local v0, "allExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v3, "notificationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 843
    .local v1, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v4

    if-lez v4, :cond_0

    .line 844
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 840
    .end local v0    # "allExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .end local v1    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "notificationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 847
    .restart local v0    # "allExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "notificationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    :cond_1
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getSource(J)Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    .locals 7
    .param p1, "sourceId"    # J

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionCache:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 894
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 895
    .local v3, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 900
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized loadSmartConnectExtensions(Ljava/util/Hashtable;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 388
    const/4 v9, 0x0

    .line 391
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 394
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v35, Ljava/lang/StringBuilder;

    const-string v3, "SELECT "

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .local v35, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->JOIN_PROJECTION:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    .line 396
    .local v29, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 397
    .local v24, "alias":Ljava/lang/String;
    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 398
    .local v27, "column":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 464
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v24    # "alias":Ljava/lang/String;
    .end local v27    # "column":Ljava/lang/String;
    .end local v29    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v35    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_0

    .line 465
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_0
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    .end local v9    # "cur":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 400
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v9    # "cur":Landroid/database/Cursor;
    .restart local v31    # "i$":Ljava/util/Iterator;
    .restart local v35    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "sql":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM Extension LEFT OUTER JOIN Registration ON Ext_Id=Registration.extensionId AND Reg_HostAppPackage=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mPackageName:Ljava/lang/String;

    aput-object v4, v6, v3

    .line 411
    .local v6, "registrationArgs":[Ljava/lang/String;
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$RawQuery;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 413
    :goto_1
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 415
    const-string v3, "Ext_Id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 416
    .local v10, "mainExtensionId":J
    const-string v3, "Ext_Name"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 418
    .local v12, "mainExtensionName":Ljava/lang/String;
    const-string v3, "Ext_NotificationApiVers"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 420
    .local v14, "mainExtensionNotificationApi":I
    const-string v3, "Reg_ControlApiVersion"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 422
    .local v15, "mainExtensionControlApi":I
    const-string v3, "Ext_PackageName"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 425
    .local v13, "mainPackageName":Ljava/lang/String;
    const-string v36, ".child"

    .line 426
    .local v36, "suffix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 427
    .local v25, "childExtensionName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 429
    .local v26, "childPackageName":Ljava/lang/String;
    const-string v3, "Ext_launchMode"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_2

    const/16 v33, 0x1

    .line 431
    .local v33, "isShowControlExtensionOnHomeScreen":Z
    :goto_2
    if-lez v14, :cond_3

    if-lez v15, :cond_3

    const/16 v32, 0x1

    .line 433
    .local v32, "isDualExtension":Z
    :goto_3
    if-nez v32, :cond_4

    move-object/from16 v8, p0

    .line 436
    invoke-direct/range {v8 .. v15}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtension(Landroid/database/Cursor;JLjava/lang/String;Ljava/lang/String;II)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v30

    .line 439
    .local v30, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 429
    .end local v30    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v32    # "isDualExtension":Z
    .end local v33    # "isShowControlExtensionOnHomeScreen":Z
    :cond_2
    const/16 v33, 0x0

    goto :goto_2

    .line 431
    .restart local v33    # "isShowControlExtensionOnHomeScreen":Z
    :cond_3
    const/16 v32, 0x0

    goto :goto_3

    .line 442
    .restart local v32    # "isDualExtension":Z
    :cond_4
    const/16 v22, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-wide/from16 v18, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    invoke-direct/range {v16 .. v23}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtension(Landroid/database/Cursor;JLjava/lang/String;Ljava/lang/String;II)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v28

    .line 445
    .local v28, "controlExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    neg-long v0, v10

    move-wide/from16 v18, v0

    const/16 v23, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, v9

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    move/from16 v22, v14

    invoke-direct/range {v16 .. v23}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtension(Landroid/database/Cursor;JLjava/lang/String;Ljava/lang/String;II)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v34

    .line 449
    .local v34, "notificationExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-virtual/range {v34 .. v34}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtraExtensions:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setChild(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 458
    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->showOnHomeScreen(Z)V

    .line 459
    if-nez v33, :cond_5

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->showOnHomeScreen(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 464
    .end local v10    # "mainExtensionId":J
    .end local v12    # "mainExtensionName":Ljava/lang/String;
    .end local v13    # "mainPackageName":Ljava/lang/String;
    .end local v14    # "mainExtensionNotificationApi":I
    .end local v15    # "mainExtensionControlApi":I
    .end local v25    # "childExtensionName":Ljava/lang/String;
    .end local v26    # "childPackageName":Ljava/lang/String;
    .end local v28    # "controlExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v32    # "isDualExtension":Z
    .end local v33    # "isShowControlExtensionOnHomeScreen":Z
    .end local v34    # "notificationExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v36    # "suffix":Ljava/lang/String;
    :cond_6
    if-eqz v9, :cond_7

    .line 465
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 468
    :cond_7
    monitor-exit p0

    return-void
.end method

.method public performSync()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->performSync(Z)V

    .line 297
    return-void
.end method

.method public performSync(Z)V
    .locals 2
    .param p1, "clearExtensionCache"    # Z

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->QUITTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mQuitting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    monitor-exit v1

    .line 287
    :goto_0
    return-void

    .line 269
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->mExtensionsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1444
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    const-string v0, "HostAppExtensionManager: ExtensionManager reset received!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->performSync()V

    .line 1448
    return-void
.end method

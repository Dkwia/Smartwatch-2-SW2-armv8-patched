.class public Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
.super Landroid/app/Application;
.source "CostanzaHostApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceNackListener;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;
    }
.end annotation


# static fields
.field private static final FIRST_START_PREFERENCE_KEY:Ljava/lang/String; = "first_start_preference_key"

.field public static final FORCE_FACTORY_RESET_KEY:Ljava/lang/String; = "force_factory_reset"

.field private static final GENERALLY_NEEDED_MEMORY_SIZE:I = 0x4

.field private static final MAX_RES_PROVIDER_SIZE:F = 1.5f

.field public static final THREAD_PRIORITY_ACK:I = 0x4

.field public static final THREAD_PRIORITY_COMMUNICATION:I = 0x5

.field public static final THREAD_PRIORITY_EVENTS:I = 0x4

.field public static final THREAD_PRIORITY_FOTA:I = 0x5

.field public static final THREAD_PRIORITY_INTENTS:I = 0x6

.field public static final THREAD_PRIORITY_MYAPPS:I = 0x5

.field public static final THREAD_PRIORITY_PERSIST_CACHE:I = 0x4

.field public static final THREAD_PRIORITY_RENDERING:I = 0xa

.field public static final THREAD_PRIORITY_WALLPAPERS:I = 0x5

.field public static final THREAD_PRIORITY_WATCHFACES:I = 0x5


# instance fields
.field private mCachePersister:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

.field private mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field private mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

.field private mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

.field private mDebugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

.field private mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

.field private mExtensionAndEventHandler:Landroid/os/Handler;

.field private mExtensionAndEventHandlerThread:Landroid/os/HandlerThread;

.field private mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

.field private mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

.field private mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

.field private mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

.field private mHostApp:Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

.field private mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

.field private mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

.field private mMyAppsSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

.field private mPersistableFileStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

.field private mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

.field private mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

.field private mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

.field private mSecurityProblem:Z

.field private mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

.field private mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

.field private mWallpaperSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

.field private mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

.field private mWatchFaceSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

.field private mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWallpaperSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->isFirstStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCachePersister:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mPersistableFileStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWatchFaceSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    return-object v0
.end method

.method private initialiseGoogleAnalytics()V
    .locals 0

    .prologue
    return-void
.end method

.method private initNotificationChannel()V
    .locals 5

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "sw2_channel"

    const-string v2, "SmartWatch 2"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private isFirstStart()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 664
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 665
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "first_start_preference_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 666
    .local v0, "firstStart":Z
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "isFirstStart? %b"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    :cond_0
    return v0
.end method

.method private showErrorNotification()V
    .locals 0

    .prologue
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 2
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    return-void
.end method

.method public getCidProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    return-object v0
.end method

.method public declared-synchronized getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDebugEventManager()Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mDebugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    return-object v0
.end method

.method public declared-synchronized getEventManager()Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    .locals 1

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .locals 1

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFactoryResetter()Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    return-object v0
.end method

.method public declared-synchronized getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 1

    .prologue
    .line 701
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFotaSyncManager()Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .locals 1

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGeneralSyncManager()Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;
    .locals 1

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostAppConfig()Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .locals 1

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mHostApp:Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIntentDelegator()Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    return-object v0
.end method

.method public getMessageIdProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    return-object v0
.end method

.method public getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    return-object v0
.end method

.method public declared-synchronized getSensorManager()Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;
    .locals 1

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    return-object v0
.end method

.method public getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    return-object v0
.end method

.method public getWidgetProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    return-object v0
.end method

.method public isSecurityProblem()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/CrashHandler;->init(Landroid/content/Context;)V

    return-void
.end method

.method public declared-synchronized onCreate()V
    .locals 86

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    invoke-static/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/CrashHandler;->init(Landroid/content/Context;)V

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->initialiseGoogleAnalytics()V

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->initNotificationChannel()V

    .line 320
    invoke-static/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->initDebugFlag(Landroid/content/Context;)V

    .line 322
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Creating host application..."

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 323
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Proto check: true"

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 328
    :cond_1
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    .line 330
    const/16 v76, 0x0

    .line 331
    .local v76, "isRegisteredForTheFirstTime":Z
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mSecurityProblem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->isRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 334
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Registering host app..."

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 335
    :cond_2
    const v6, 0x7f0a0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->performRegistration(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v76, 0x1

    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    :try_start_hap
    invoke-static {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getHostAppByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mHostApp:Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :try_end_hap
    .catch Ljava/lang/Throwable; {:try_start_hap .. :try_end_hap} :catch_hap
    goto :goto_after_hap

    :catch_hap
    move-exception v6
    const/4 v6, 0x0
    move-object/from16 v0, p0
    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mHostApp:Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :goto_after_hap

    .line 370
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;

    invoke-direct {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProviderImpl;-><init>()V

    .line 371
    .local v10, "msgIdProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 372
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v10}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .line 373
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getEmbeddedFirmwareVersion()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .line 377
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "ExtensionAndEventHandlerThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandlerThread:Landroid/os/HandlerThread;

    .line 378
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandlerThread:Landroid/os/HandlerThread;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 380
    new-instance v17, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 381
    .local v17, "extensionAndEventHandler":Landroid/os/Handler;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandler:Landroid/os/Handler;

    .line 383
    new-instance v22, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;-><init>(Landroid/content/Context;)V

    .line 384
    .local v22, "cidProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 387
    new-instance v35, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)V

    .line 389
    .local v35, "extensionManager":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 391
    new-instance v24, Landroid/os/HandlerThread;

    const-string v6, "ExtensionIntentHandlerThread"

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 392
    .local v24, "extensionIntentHandlerThread":Landroid/os/HandlerThread;
    const/4 v6, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 393
    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->start()V

    .line 395
    new-instance v75, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, v75

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v6, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 397
    .local v75, "intentDelegator":Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;
    move-object/from16 v0, v75

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    .line 399
    new-instance v31, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V

    .line 401
    .local v31, "ctrlMsgFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    new-instance v21, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v7

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;)V

    .line 402
    .local v21, "renderingManager":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 404
    new-instance v48, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;)V

    .line 405
    .local v48, "persistableFileStorage":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mPersistableFileStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    .line 407
    const-string v6, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Landroid/app/ActivityManager;

    .line 408
    .local v69, "am":Landroid/app/ActivityManager;
    invoke-virtual/range {v69 .. v69}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v78

    .line 409
    .local v78, "memoryClass":I
    add-int/lit8 v6, v78, -0x4

    int-to-float v6, v6

    const/high16 v7, 0x3fc00000    # 1.5f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v77, v0

    .line 411
    .local v77, "maxCachedResProviders":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 412
    const-string v6, "Creating cache with max %d providers. Free mem: %d. Mem-class: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    :cond_4
    new-instance v18, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v77

    move-object/from16 v4, v48

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;ILcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;)V

    .line 419
    .local v18, "resProviderCache":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 421
    new-instance v19, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    new-instance v6, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V

    .line 424
    .local v19, "resourceDeleter":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .line 426
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v16, v0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v19}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    .line 429
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v8, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    .line 432
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addNotificationSourcesChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setSyncManager(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;)V

    .line 436
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 437
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->addEventsChangeListener(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mGeneralSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->updateEventsHashtable(Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;)V

    .line 440
    new-instance v42, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v75

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;)V

    .line 441
    .local v42, "tunnelManager":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;
    new-instance v25, Lcom/sonymobile/smartconnect/hostapp/extensions/TunnelingAhaIntentSenderImpl;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/TunnelingAhaIntentSenderImpl;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;)V

    .line 443
    .local v25, "ahaIntentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v8, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 446
    new-instance v32, Landroid/os/Handler;

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 447
    .local v32, "inputHandler":Landroid/os/Handler;
    new-instance v23, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;-><init>(Landroid/os/Handler;)V

    .line 449
    .local v23, "inputDelegator":Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
    new-instance v20, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;

    move-object/from16 v26, p0

    move-object/from16 v27, v18

    invoke-direct/range {v20 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Landroid/os/HandlerThread;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)V

    .line 453
    .local v20, "runningCtrlExtFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;
    new-instance v36, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;)V

    .line 455
    .local v36, "controlExtensionStack":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 456
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 458
    new-instance v46, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 460
    .local v46, "cachePersister":Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCachePersister:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    .line 462
    new-instance v82, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-object/from16 v0, v82

    invoke-direct {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V

    .line 463
    .local v82, "sensorMsgFactory":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v25

    invoke-direct {v6, v0, v7, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    .line 465
    new-instance v81, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    move-object/from16 v0, v81

    invoke-direct {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V

    .line 467
    .local v81, "sensorHandlerFactory":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;
    new-instance v73, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, v73

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    invoke-direct {v0, v6, v1, v7, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 470
    .local v73, "handlerFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ClearDisplayHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ClearDisplayHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 471
    invoke-virtual/range {v73 .. v73}, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->createStartRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 472
    invoke-virtual/range {v73 .. v73}, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->createStopRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 473
    invoke-virtual/range {v73 .. v73}, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->createSetScreenStateHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 474
    invoke-virtual/range {v81 .. v81}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;->createRegisterSensorHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/RegisterSensorHandler;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 475
    invoke-virtual/range {v81 .. v81}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;->createUnregisterSensorHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/UnregisterSensorHandler;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 477
    new-instance v85, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-object/from16 v0, v85

    invoke-direct {v0, v6, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 479
    .local v85, "vibHandlerFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;
    invoke-virtual/range {v85 .. v85}, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->createVibrationRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 480
    invoke-virtual/range {v85 .. v85}, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->createVibrationStopRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;

    move-result-object v6

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 481
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/DisplayDataHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/DisplayDataHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 482
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ProcessLayoutHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ProcessLayoutHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 483
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/SendImageHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/SendImageHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 484
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/SendTextHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/SendTextHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 485
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListCountHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListCountHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 486
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListItemHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListItemHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 487
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListMoveHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListMoveHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 488
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/MenuIntentHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/MenuIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerDefaultMessageListeners()V

    .line 494
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v26, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v30, v0

    move-object/from16 v29, v25

    invoke-direct/range {v26 .. v32}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Landroid/os/Handler;)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlResponseMessageListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-direct {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlResponseMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v7, v8, v0, v9, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/control/TouchIndicationMessageListener;

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/TouchIndicationMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/control/SwipeIndicationMessageListener;

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/SwipeIndicationMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-direct {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorResponseMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorIndicationMessageListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mSensorManager:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;

    invoke-direct {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorIndicationMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-object/from16 v0, v25

    invoke-direct {v7, v0, v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 514
    new-instance v83, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v83

    invoke-direct {v0, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V

    .line 516
    .local v83, "timeAndLocaleSender":Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/SyncTimeRequestListener;

    move-object/from16 v0, v83

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/SyncTimeRequestListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMessageIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/DeleteResourcesResponseListener;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DeleteResourcesResponseListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 522
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mDebugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    .line 523
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventMessageListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mDebugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    invoke-direct {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventMessageListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceNackListener;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceNackListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 529
    new-instance v13, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 530
    .local v13, "widgetProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .line 532
    new-instance v60, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-object/from16 v0, v60

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;)V

    .line 533
    .local v60, "watchFaceStorage":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    move-object/from16 v0, v60

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 535
    new-instance v51, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;-><init>(Landroid/content/Context;)V

    .line 536
    .local v51, "wallpaperStorage":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .line 538
    new-instance v68, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-object/from16 v0, v68

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;-><init>(Landroid/content/Context;)V

    .line 539
    .local v68, "myAppsStorage":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;
    move-object/from16 v0, v68

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    .line 541
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;

    move-object/from16 v12, v21

    move-object/from16 v14, v35

    move-object/from16 v15, v18

    move-object/from16 v16, p0

    invoke-direct/range {v11 .. v16}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 544
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;

    move-object/from16 v12, v21

    move-object/from16 v14, v35

    move-object/from16 v15, v18

    move-object/from16 v16, p0

    invoke-direct/range {v11 .. v16}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 547
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetSendImageIntentHandler;

    move-object/from16 v12, v21

    move-object/from16 v14, v35

    move-object/from16 v15, v18

    move-object/from16 v16, p0

    invoke-direct/range {v11 .. v16}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetSendImageIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 550
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetSendTextIntentHandler;

    move-object/from16 v12, v21

    move-object/from16 v14, v35

    move-object/from16 v15, v18

    move-object/from16 v16, p0

    invoke-direct/range {v11 .. v16}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetSendTextIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 553
    new-instance v33, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v38, v0

    move-object/from16 v34, v13

    move-object/from16 v37, v31

    invoke-direct/range {v33 .. v38}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V

    move-object/from16 v0, v75

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V

    .line 557
    new-instance v37, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;

    new-instance v41, Landroid/os/Handler;

    invoke-virtual/range {v24 .. v24}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    move-object/from16 v45, v0

    move-object/from16 v38, v60

    move-object/from16 v39, v35

    move-object/from16 v40, v25

    move-object/from16 v44, p0

    invoke-direct/range {v37 .. v45}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    .line 560
    .local v37, "widgetStartStopManager":Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/WatchFaceIndicationListener;

    move-object/from16 v0, v60

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/WatchFaceIndicationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-direct {v7, v13, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-direct {v7, v13, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 569
    new-instance v50, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-direct {v0, v6, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V

    .line 571
    .local v50, "wallpaperInstaller":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;
    new-instance v43, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v49, v0

    move-object/from16 v44, p0

    move-object/from16 v45, v22

    move-object/from16 v47, v19

    invoke-direct/range {v43 .. v51}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V

    .line 574
    .local v43, "wallpaperSyncManager":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWallpaperSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    .line 575
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperIndicationListener;

    move-object/from16 v0, v51

    invoke-direct {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperIndicationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 580
    new-instance v58, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v58

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V

    .line 582
    .local v58, "watchFaceInstaller":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;
    new-instance v59, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    invoke-direct {v0, v6, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V

    .line 584
    .local v59, "watchFaceTemporaryInstaller":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;
    new-instance v52, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v57, v0

    move-object/from16 v53, p0

    move-object/from16 v54, v22

    move-object/from16 v55, v46

    move-object/from16 v56, v48

    move-object/from16 v61, v35

    invoke-direct/range {v52 .. v61}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 587
    .local v52, "watchFaceSyncManager":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mWatchFaceSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    .line 588
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 595
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    new-instance v61, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v67, v0

    move-object/from16 v62, p0

    move-object/from16 v63, v22

    move-object/from16 v64, v46

    move-object/from16 v66, v35

    invoke-direct/range {v61 .. v68}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;)V

    .line 608
    .local v61, "myAppsSyncManager":Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;
    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mMyAppsSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    .line 609
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v7, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 617
    new-instance v80, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;

    move-object/from16 v0, v80

    move-object/from16 v1, v83

    move-object/from16 v2, v60

    move-object/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;-><init>(Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V

    .line 618
    .local v80, "receiver":Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;
    new-instance v72, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v72

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 619
    .local v72, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    if-eqz v76, :cond_5

    .line 622
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    invoke-interface {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;->requestReset()V

    .line 626
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v79

    .line 627
    .local v79, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v79 .. v79}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v71

    .line 628
    .local v71, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "first_start_preference_key"

    const/4 v7, 0x0

    move-object/from16 v0, v71

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 629
    invoke-interface/range {v71 .. v71}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    .end local v10    # "msgIdProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .end local v13    # "widgetProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .end local v17    # "extensionAndEventHandler":Landroid/os/Handler;
    .end local v18    # "resProviderCache":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    .end local v19    # "resourceDeleter":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .end local v20    # "runningCtrlExtFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;
    .end local v21    # "renderingManager":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .end local v22    # "cidProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .end local v23    # "inputDelegator":Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
    .end local v24    # "extensionIntentHandlerThread":Landroid/os/HandlerThread;
    .end local v25    # "ahaIntentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .end local v31    # "ctrlMsgFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .end local v32    # "inputHandler":Landroid/os/Handler;
    .end local v35    # "extensionManager":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .end local v36    # "controlExtensionStack":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
    .end local v37    # "widgetStartStopManager":Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;
    .end local v42    # "tunnelManager":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;
    .end local v43    # "wallpaperSyncManager":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;
    .end local v46    # "cachePersister":Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;
    .end local v48    # "persistableFileStorage":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;
    .end local v50    # "wallpaperInstaller":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;
    .end local v51    # "wallpaperStorage":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    .end local v52    # "watchFaceSyncManager":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;
    .end local v58    # "watchFaceInstaller":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;
    .end local v59    # "watchFaceTemporaryInstaller":Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;
    .end local v60    # "watchFaceStorage":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .end local v61    # "myAppsSyncManager":Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;
    .end local v68    # "myAppsStorage":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;
    .end local v69    # "am":Landroid/app/ActivityManager;
    .end local v71    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v72    # "filter":Landroid/content/IntentFilter;
    .end local v73    # "handlerFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;
    .end local v75    # "intentDelegator":Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;
    .end local v77    # "maxCachedResProviders":I
    .end local v78    # "memoryClass":I
    .end local v79    # "preferences":Landroid/content/SharedPreferences;
    .end local v80    # "receiver":Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;
    .end local v81    # "sensorHandlerFactory":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorHandlerFactory;
    .end local v82    # "sensorMsgFactory":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;
    .end local v83    # "timeAndLocaleSender":Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;
    .end local v85    # "vibHandlerFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;
    :goto_1
    monitor-exit p0

    return-void

    .line 338
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 339
    const-string v6, "Already registered. Check if registration is needed"

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 342
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->updateHostAppVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v84

    .line 344
    .local v84, "updates":I
    if-lez v84, :cond_3

    .line 347
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 348
    const-string v6, "Registration was needed, updating info"

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 351
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getHostAppByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v74

    .line 352
    .local v74, "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    move-object/from16 v0, v74

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->testRemoveHostApp(Landroid/content/Context;)V

    .line 354
    const v6, 0x7f0a0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->performRegistration(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v70

    goto/16 :goto_0

    .line 318
    .end local v70    # "e":Ljava/lang/SecurityException;
    .end local v76    # "isRegisteredForTheFirstTime":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 672
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 673
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mExtensionAndEventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 674
    return-void
.end method

.method public performRegistration(I)V
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 655
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/config/ConfigReader;

    invoke-direct {v3}, Lcom/sonymobile/smartconnect/hostapp/config/ConfigReader;-><init>()V

    .line 656
    .local v3, "reader":Lcom/sonymobile/smartconnect/hostapp/config/ConfigReader;
    invoke-virtual {v3, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/config/ConfigReader;->readPreConfiguredHostApps(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 657
    .local v1, "hostApps":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    .line 658
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    invoke-static {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->registerHostApp(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    goto :goto_0

    .line 660
    .end local v0    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    :cond_0
    return-void
.end method

.method public requestReset()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;->requestReset()V

    .line 744
    return-void
.end method

.method public requestTotalReset()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;->requestTotalReset()V

    .line 748
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;
.super Landroid/preference/PreferenceActivity;
.source "ExtensionsListBaseActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;
    }
.end annotation


# static fields
.field private static final APPS_CAT_PREF_KEY:Ljava/lang/String; = "appsCatPrefKey"

.field private static final ARBITRARY_SEARCH:Ljava/lang/String; = "market://search?q="

.field public static final CALL_EXTENSION_PACKAGE:Ljava/lang/String; = "com.sonyericsson.extras.liveware.extension.call"

.field public static final CALL_LOG_EXTENSION_PACKAGE:Ljava/lang/String; = "com.sonyericsson.extras.liveware.extension.call_log"

.field private static final GET_APPS_PREF_KEY:Ljava/lang/String; = "getAppsPrefKey"

.field public static final LWM_PACKAGE:Ljava/lang/String; = "com.sonyericsson.extras.liveware"

.field private static final MARKET_SEARCH_NAME:Ljava/lang/String; = "SmartWatch"

.field private static final MARKET_SEARCH_SMARTWATCH2_NAME:Ljava/lang/String; = "SmartWatch 2"

.field private static final MY_APPS_PREF_KEY:Ljava/lang/String; = "myAppsListPrefKey"

.field private static final PACKAGE_DETAILS:Ljava/lang/String; = "market://details?id="

.field private static final SEARCH_PREF_KEY:Ljava/lang/String; = "searchForAppsPrefKey"

.field private static final WAIT_TIME:I = 0xbb8

.field private static final WALLPAPERS_PREF_KEY:Ljava/lang/String; = "wallpaperPrefKey"

.field private static final WATCH_FACES_PREF_KEY:Ljava/lang/String; = "watchFacesPrefKey"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

.field private mExtensionHash:Ljava/util/Hashtable;
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

.field private mExtensionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsExtensionListUpdated:Z

.field private mIsGooglePlayInstalled:Z

.field private mWhatsNew:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mIsGooglePlayInstalled:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mWhatsNew:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    .line 630
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->showWatchFaces()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->showWallpapers()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->updateExtensionPreferenceLists()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mIsGooglePlayInstalled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createPreference(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 546
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;-><init>(Landroid/content/Context;)V

    .line 547
    .local v0, "pref":Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 548
    return-object v0
.end method

.method private getExtensions()Ljava/util/ArrayList;
    .locals 3
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
    :try_start_0
    .line 705
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionHash:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionHash:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSmartConnectExtensions(Ljava/util/Hashtable;)V

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionHash:Ljava/util/Hashtable;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionHash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isFilteredOut(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 531
    if-eqz p1, :cond_0

    .line 532
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 534
    :cond_0
    return v0
.end method

.method private isSelectKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 265
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "elements"    # [Ljava/lang/String;

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 612
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 613
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 621
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private marketLaunch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    .line 593
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 595
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 596
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 598
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 601
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    const-string v3, "MarketUtils couldn\'t launch Market"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setUpListener()V
    .locals 4

    .prologue
    :try_start_0
    .line 390
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 391
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreferenceWaitThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 392
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 393
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandler:Landroid/os/Handler;

    .line 394
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    .line 395
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Extension;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :catch_0
    return-void
.end method

.method private showWallpapers()V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method private showWatchFaces()V
    .locals 3

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method private declared-synchronized stopListener()V
    .locals 2

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    if-eqz v0, :cond_ext_mgr

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->removeExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 403
    :cond_ext_mgr
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->removeCallbacksAndMessages()V

    .line 405
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update()V
    .locals 3

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    if-eqz v1, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getExtensions()Ljava/util/ArrayList;

    move-result-object v0

    .line 690
    .local v0, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    if-eqz v1, :cond_not_eq

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    :cond_not_eq
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->onChange(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .end local v0    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateExtensionPreferenceLists()V
    .locals 9

    .prologue
    :try_start_0
    .line 449
    const-string v7, "featuredAppsPrefKey"

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 450
    .local v1, "featuredApplications":Landroid/preference/Preference;
    instance-of v7, v1, Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_check_gplay

    move-object v7, v1

    check-cast v7, Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 455
    :cond_check_gplay
    iget-boolean v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mIsGooglePlayInstalled:Z

    if-eqz v7, :cond_2

    .line 456
    const v7, 0x7f050002

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->addPreferencesFromResource(I)V

    .line 460
    :goto_0
    const-string v7, "prelisted_extensions"

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 464
    .local v5, "prelistedApplications":Landroid/preference/Preference;
    instance-of v7, v5, Landroid/preference/PreferenceCategory;

    if-nez v7, :cond_prelisted_ok

    goto/16 :goto_end_real

    :cond_prelisted_ok
    move-object v7, v5

    check-cast v7, Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 465
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 466
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParentPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v2, ".ctrl"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v8

    if-eqz v8, :cond_0

    .line 483
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 486
    .local v6, "prelistedPreference":Landroid/preference/Preference;
    if-eqz v6, :cond_0

    .line 487
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 458
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "prelistedPreference":Landroid/preference/Preference;
    :cond_2
    const v7, 0x7f050003

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 492
    :cond_3
    const/4 v2, 0x0

    .line 493
    .local v2, "i":I
    :goto_2
    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 494
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 495
    .local v4, "pref":Landroid/preference/Preference;
    instance-of v8, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;

    if-nez v8, :cond_icon_ok

    goto :goto_3

    :cond_icon_ok
    move-object v8, v4

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;

    .line 496
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->getFilter()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->isFilteredOut(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 492
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 499
    :cond_4
    move-object v8, v4

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;

    const v3, 0x7fffffff

    invoke-virtual {v8, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->setOrder(I)V

    .line 500
    const v3, 0x7f07003a

    invoke-virtual {v8, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->setSummary(I)V

    .line 501
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$8;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$8;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {v8, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 520
    instance-of v8, v1, Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_goto_3

    move-object v8, v1

    check-cast v8, Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_goto_3
    goto :goto_3

    .line 525
    .end local v4    # "pref":Landroid/preference/Preference;
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    if-eqz v7, :cond_goto_end

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 527
    :cond_goto_end
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mIsExtensionListUpdated:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_end_real
    return-void

    :catch_0
    move-exception v7

    goto :goto_end_real
.end method


# virtual methods
.method public decodeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 541
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 542
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public getNewExtensions()V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const v2, 0x7f07002e

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 583
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 584
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->checkPermissions(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/CrashHandler;->init(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 108
    .local v3, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->isSecurityProblem()Z

    move-result v10

    goto :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f070017

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    iput-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionHash:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v10

    iput-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    iput-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    if-nez v10, :cond_2

    const-string v10, "ExtensionList was null"

    invoke-static {v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    if-eqz v10, :cond_no_ab

    const v11, 0x7f02008d

    invoke-virtual {v10, v11}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_no_ab

    .line 127
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    if-nez v10, :cond_3

    .line 128
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-direct {v10, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    .line 130
    :cond_3
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v10, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/MarketUtils;->isGooglePlayInstalled(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mIsGooglePlayInstalled:Z

    .line 153
    const v10, 0x7f050001

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->addPreferencesFromResource(I)V

    .line 157
    const-string v10, "searchForAppsPrefKey"

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 158
    .local v7, "searchPref":Landroid/preference/Preference;
    const-string v10, "getAppsPrefKey"

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 159
    .local v2, "getPref":Landroid/preference/Preference;
    const-string v10, "appsCatPrefKey"

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 160
    .local v0, "appCategory":Landroid/preference/PreferenceCategory;
    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 161
    iget-boolean v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mIsGooglePlayInstalled:Z

    if-eqz v10, :cond_8

    .line 162
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$1;

    invoke-direct {v10, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 170
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :cond_4
    :goto_1
    const-string v10, "watchFacesPrefKey"

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 186
    .local v9, "watchFacesPref":Landroid/preference/Preference;
    if-eqz v9, :cond_5

    .line 187
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$3;

    invoke-direct {v10, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    :cond_5
    const-string v10, "wallpaperPrefKey"

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 198
    .local v8, "wallpapersPref":Landroid/preference/Preference;
    if-eqz v8, :cond_6

    .line 199
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$4;

    invoke-direct {v10, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    :cond_6
    const-string v10, "myAppsListPrefKey"

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 210
    .local v6, "myAppsPref":Landroid/preference/Preference;
    if-eqz v6, :cond_7

    .line 211
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$5;

    invoke-direct {v10, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$5;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {v6, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 228
    :cond_7
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 229
    .local v1, "config":Landroid/view/ViewConfiguration;
    const-class v10, Landroid/view/ViewConfiguration;

    const-string v11, "sHasPermanentMenuKey"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 230
    .local v5, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_0

    .line 231
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 232
    const/4 v10, 0x0

    invoke-virtual {v5, v1, v10}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 234
    .end local v1    # "config":Landroid/view/ViewConfiguration;
    .end local v5    # "menuKeyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 172
    .end local v6    # "myAppsPref":Landroid/preference/Preference;
    .end local v8    # "wallpapersPref":Landroid/preference/Preference;
    .end local v9    # "watchFacesPref":Landroid/preference/Preference;
    :cond_8
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$2;

    invoke-direct {v10, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 242
    .restart local v6    # "myAppsPref":Landroid/preference/Preference;
    .restart local v8    # "wallpapersPref":Landroid/preference/Preference;
    .restart local v9    # "watchFacesPref":Landroid/preference/Preference;
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 238
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 328
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 329
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/high16 v1, 0x7f0d0000

    const v2, 0x7f070016

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 273
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onDestroy()V

    .line 276
    :cond_0
    return-void
.end method

.method public onExtensionsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->update()V

    .line 684
    return-void
.end method

.method public onExtensionsInserted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, "newExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->update()V

    .line 673
    return-void
.end method

.method public onExtensionsUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->update()V

    .line 679
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->isSelectKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "searchForAppsPrefKey"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->searchExtensions()V

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 340
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->showAbout()V

    .line 347
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 342
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0083

    if-ne v0, v1, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->showSupport()V

    goto :goto_0

    .line 344
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/high16 v1, 0x7f0d0000

    if-ne v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->showDebug()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onPause()V

    .line 303
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->stopListener()V

    .line 304
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 305
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 281
    :try_start_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->startCostanzaService(Landroid/content/Context;)V

    .line 282
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onResume()V

    .line 284
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->setUpListener()V

    .line 285
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$6;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$6;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retaining list. Null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 315
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    return-object v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSyncFinished()V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method public reloadExtensions()V
    .locals 2

    .prologue
    :try_start_0
    .line 422
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getExtensions()Ljava/util/ArrayList;

    move-result-object v0

    .line 423
    .local v0, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    if-nez v0, :cond_null_ext

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_null_ext
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mIsExtensionListUpdated:Z

    if-eqz v1, :cond_1

    .line 426
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "No changes in extensions, not refreshing lists."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->mExtensionList:Ljava/util/ArrayList;

    .line 433
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$7;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$7;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return-void
.end method

.method public searchExtensions()V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->sendMarketExtensionsSearchIntent([Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public sendMarketExtensionDetailsIntent(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 573
    const-string v0, "market://details?id="

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->marketLaunch(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public varargs sendMarketExtensionsSearchIntent([Ljava/lang/String;)V
    .locals 3
    .param p1, "extraSearchStrings"    # [Ljava/lang/String;

    .prologue
    .line 554
    const-string v0, "\'LiveWare\u2122 extension for SmartWatch\'"

    .line 555
    .local v0, "search":Ljava/lang/String;
    array-length v1, p1

    if-lez v1, :cond_0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_0
    const-string v1, "market://search?q="

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->marketLaunch(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public varargs sendMarketExtensionsSearchIntentSmartWatch2([Ljava/lang/String;)V
    .locals 3
    .param p1, "extraSearchStrings"    # [Ljava/lang/String;

    .prologue
    .line 563
    const-string v0, "\"Smart Connect extension for SmartWatch 2\""

    .line 564
    .local v0, "search":Ljava/lang/String;
    array-length v1, p1

    if-lez v1, :cond_0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_0
    const-string v1, "market://search?q="

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->marketLaunch(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public showAbout()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 364
    return-void
.end method

.method public showDebug()V
    .locals 3

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 373
    return-void
.end method

.method public showSupport()V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static sInstance:Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;


# instance fields
.field mAnalyticsInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field mTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sInstance:Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f070001

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mAnalyticsInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 26
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mAnalyticsInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 28
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Tracker;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "str":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Analytics: TrackingID from tracker: %s and from resources: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v3}, Lcom/google/analytics/tracking/android/Tracker;->getSampleRate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {v1, p1}, Lcom/sonymobile/gahelper/GaHelperExceptionParser;->enableExceptionParsing(Lcom/google/analytics/tracking/android/Tracker;Landroid/content/Context;)V

    .line 40
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;
    .locals 3

    .prologue
    .line 50
    const-class v1, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sInstance:Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "Context not set. Please call getInstance(Context) instead."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 54
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sInstance:Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v1, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sInstance:Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sInstance:Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    .line 46
    :cond_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sInstance:Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDebugBuild()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public registerCostanzaCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public registerCostanzaError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public sendCaughtException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V

    .line 84
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    :cond_0
    return-void
.end method

.method public sendUnCaughtException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendException(Ljava/lang/String;Z)V

    .line 100
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public sendView(Ljava/lang/String;)V
    .locals 1
    .param p1, "viewName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public storeIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "intent"

    const-string v3, "label"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public storeUIEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "ui_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    :cond_0
    return-void
.end method

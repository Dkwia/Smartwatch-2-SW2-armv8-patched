.class public Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;
.super Ljava/lang/Object;
.source "WidgetStartStopManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;


# instance fields
.field private final mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private final mContext:Landroid/content/Context;

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

.field private final mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V
    .locals 0
    .param p1, "watchFaceStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p3, "ahaIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "tunnelManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;
    .param p6, "resProviderCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 44
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 45
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 46
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object p8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 48
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mUiHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method private startStopWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)V
    .locals 7
    .param p1, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .param p2, "start"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 104
    .local v0, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v0, :cond_1

    .line 105
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const-string v2, "Failed to find matching extension, %s."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    const-string v3, "%s %s."

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_3

    const-string v2, "Starting"

    :goto_1
    aput-object v2, v4, v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_2
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 115
    .local v1, "intentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    if-eqz p2, :cond_4

    .line 116
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetStartRequest(ILjava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v1    # "intentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    :cond_3
    const-string v2, "Stopping"

    goto :goto_1

    .line 118
    .restart local v1    # "intentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    :cond_4
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetStopRequest(ILjava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setControls([Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;)V

    goto :goto_0
.end method

.method private declared-synchronized startStopWidgets(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;Z)V
    .locals 5
    .param p1, "wf"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .param p2, "start"    # Z

    .prologue
    .line 83
    monitor-enter p0

    if-nez p1, :cond_1

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 87
    .local v2, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v1

    .line 88
    .local v1, "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->isNative()Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    invoke-direct {p0, v1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->startStopWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v2    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private stopSelectedWidgets()V
    .locals 6

    .prologue
    .line 73
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getSelectedWatchFaces()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v3

    .line 74
    .local v3, "selectedWatchFaces":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    move-object v0, v3

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 75
    .local v4, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->stopWidgets(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v4    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_0
    return-void
.end method

.method private stopWidgets(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 1
    .param p1, "wf"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->startStopWidgets(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->stopSelectedWidgets()V

    .line 70
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public startWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    .locals 1
    .param p1, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->startStopWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)V

    .line 96
    return-void
.end method

.method public stopWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    .locals 1
    .param p1, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->startStopWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)V

    .line 100
    return-void
.end method

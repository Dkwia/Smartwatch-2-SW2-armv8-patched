.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;
.super Ljava/lang/Object;
.source "MyAppsSyncManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;
    }
.end annotation


# static fields
.field private static final SORT_MODE_PREFERENCE_KEY:Ljava/lang/String; = "sort_mode_preference_key"

.field private static final TAG:Ljava/lang/String; = "MyAppsSyncManager"

.field private static final WAIT_TIME:I = 0xbb8


# instance fields
.field private final mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

.field private final mContext:Landroid/content/Context;

.field private mExtensionHandler:Landroid/os/Handler;

.field private final mExtensionHash:Ljava/util/Hashtable;
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

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsExtensionListUpdated:Z

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p3, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;
    .param p4, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p5, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p6, "communicationManager"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p7, "myAppsStorage"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 67
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WatchFaceHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 75
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    .line 76
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .line 77
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;)V

    .line 79
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHash:Ljava/util/Hashtable;

    .line 82
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->setUpListener()V

    .line 83
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->requestSnakeAppStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->sendSortTypeAndAppsCidsList()V

    return-void
.end method

.method private checkForNewExtensions(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "storedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "extensions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHash:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->clear()V

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "changed":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v5, "packageNamesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p1

    .line 558
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 559
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNativeAppMap()Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 561
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 565
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 566
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 567
    const/4 v0, 0x1

    .line 570
    :cond_2
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 572
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->readDisabledAppsCids()Ljava/util/ArrayList;

    move-result-object v1

    .line 573
    .local v1, "disabledAppsCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v6, "packageNamesToRemoveDisabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 575
    .local v2, "disabledPackageName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNativeAppMap()Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 577
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 581
    .end local v2    # "disabledPackageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 582
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateDisabledAppsLists(Ljava/util/ArrayList;)V

    .line 585
    .end local v1    # "disabledAppsCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "packageNamesToRemoveDisabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    return v0
.end method

.method private checkForRemovedExtensions(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "storedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "extensions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    const/4 v1, 0x0

    .line 530
    .local v1, "changed":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v0, "PackageNamesToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p1

    .line 532
    :try_start_0
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 534
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 535
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->readDisabledAppsCids()Ljava/util/ArrayList;

    move-result-object v2

    .line 536
    .local v2, "disabledAppsCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 537
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 538
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    .end local v2    # "disabledAppsCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 540
    .restart local v2    # "disabledAppsCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    .end local v2    # "disabledAppsCidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 545
    const/4 v1, 0x1

    .line 546
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 548
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    return v1
.end method

.method private getExtensions()Ljava/util/ArrayList;
    .locals 4
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
    .line 654
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHash:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 655
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHash:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->loadSmartConnectExtensions(Ljava/util/Hashtable;)V

    .line 656
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHash:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 658
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v0

    .line 660
    .local v0, "exts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 663
    .end local v0    # "exts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    :cond_1
    return-object v0
.end method

.method private requestDisabledApps()V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;-><init>(I)V

    .line 194
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->setAction(I)V

    .line 195
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 196
    return-void
.end method

.method private requestSnakeAppStatus()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;-><init>(I)V

    .line 200
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->setAction(I)V

    .line 201
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 202
    return-void
.end method

.method private sendSortTypeAndAppsCidsList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;-><init>(I)V

    .line 206
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    const-string v3, "sort_mode_preference_key"

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "sortMode":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->CUSTOM:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->setAction(I)V

    .line 209
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getSortedCids()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->setAppsCids([I)V

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v3, v5, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 215
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->setAction(I)V

    .line 212
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->setAppsCids([I)V

    goto :goto_0
.end method

.method private setUpListener()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 360
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExtensionListWaitThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 361
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 362
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHandler:Landroid/os/Handler;

    .line 363
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionHandler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    .line 364
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Extension;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 366
    return-void
.end method

.method private declared-synchronized stopListener()V
    .locals 2

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->removeExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 370
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->removeCallbacksAndMessages()V

    .line 372
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_1
    monitor-exit p0

    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update()V
    .locals 3

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    if-eqz v1, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v0

    .line 639
    .local v0, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->onChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    .end local v0    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateCids()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 96
    const-string v8, "MyAppsSyncManager"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "updateCids"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v3

    .line 98
    .local v3, "exts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateExtensionsList(Ljava/util/ArrayList;)V

    .line 100
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 101
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 102
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v8

    if-ne v8, v12, :cond_0

    .line 103
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 104
    .local v2, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->setCid(I)V

    goto :goto_0

    .line 110
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 113
    :try_start_2
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 114
    .local v1, "disabledApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 115
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 116
    .restart local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 117
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->setCid(I)V

    goto :goto_1

    .line 122
    .end local v1    # "disabledApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    :cond_5
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 125
    :try_start_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v7, "noneHomeScreenExtToRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;>;"
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 127
    .local v6, "noneHomeScreenExt":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v8

    if-ne v8, v12, :cond_6

    .line 128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 129
    .restart local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 131
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getRelativeCid()I

    move-result v8

    if-eq v8, v12, :cond_7

    .line 132
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    .end local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "noneHomeScreenExt":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v7    # "noneHomeScreenExtToRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;>;"
    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .line 138
    .restart local v7    # "noneHomeScreenExtToRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;>;"
    :cond_8
    :try_start_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 139
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v10

    monitor-enter v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 140
    :try_start_6
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 142
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 144
    :cond_9
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 146
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 147
    :try_start_8
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 151
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v8

    if-nez v8, :cond_a

    .line 152
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V

    .line 155
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateLists()V

    .line 156
    return-void

    .line 142
    :catchall_3
    move-exception v8

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 149
    :catchall_4
    move-exception v8

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v8
.end method

.method private updateExtensionPreferenceLists(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    const/4 v5, 0x0

    .line 409
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 411
    .local v1, "extensions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 412
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 413
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 416
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ctrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 432
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 413
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 436
    .restart local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getRelativeCid()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 439
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 440
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "child"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getChild()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v3

    if-nez v3, :cond_0

    .line 442
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    invoke-direct {v4, v0, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    invoke-direct {v4, v0, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 453
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 454
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 457
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->updateListWithChangeExtensions(Ljava/util/List;)V

    .line 458
    return-void

    .line 455
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private updateListWithChangeExtensions(Ljava/util/List;)V
    .locals 14
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
    .local p1, "updatedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    const/4 v13, 0x1

    .line 461
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 462
    .local v4, "extensions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    monitor-enter p1

    .line 463
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 464
    .local v3, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 466
    .end local v3    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 468
    :try_start_2
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 469
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 470
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 471
    :try_start_3
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 472
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 473
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->readAppOrder()Ljava/util/ArrayList;

    move-result-object v7

    .line 474
    .local v7, "storedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v7, :cond_5

    .line 475
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 476
    :try_start_4
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 477
    .local v2, "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v8

    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v11, 0x1

    invoke-direct {v10, v2, v11}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 482
    .end local v2    # "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 469
    .end local v7    # "storedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 472
    :catchall_3
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v8

    .line 479
    .restart local v7    # "storedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_7
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNativeAppMap()Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 480
    .local v0, "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 482
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_2
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 483
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 484
    :try_start_8
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 486
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->doAlphabeticalSort()V

    .line 487
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 519
    :cond_3
    :goto_3
    iput-boolean v13, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mIsExtensionListUpdated:Z

    .line 520
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->readDisabledApps()V

    .line 521
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateAppsLists()V

    .line 522
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 523
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->commit()V

    .line 525
    :cond_4
    return-void

    .line 487
    :catchall_4
    move-exception v8

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v8

    .line 490
    :cond_5
    const/4 v1, 0x0

    .line 492
    .local v1, "changed":Z
    invoke-direct {p0, v7, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->checkForNewExtensions(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Z

    move-result v8

    or-int/2addr v1, v8

    .line 494
    invoke-direct {p0, v7, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->checkForRemovedExtensions(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)Z

    move-result v8

    or-int/2addr v1, v8

    .line 495
    if-eqz v1, :cond_6

    .line 496
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->saveAppOrder(Ljava/util/ArrayList;)V

    .line 499
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 500
    .local v6, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 501
    :try_start_a
    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 502
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    const/4 v12, 0x1

    invoke-direct {v11, v8, v12}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_7
    :goto_5
    monitor-exit v9

    goto :goto_4

    :catchall_5
    move-exception v8

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v8

    .line 504
    :cond_8
    :try_start_b
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNativeAppMap()Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 505
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNativeAppMap()Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    .line 510
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9

    .line 511
    :try_start_c
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsList()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledSavedAppsList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 513
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 514
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v8

    if-nez v8, :cond_3

    .line 515
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V

    goto/16 :goto_3

    .line 513
    :catchall_6
    move-exception v8

    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v8
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 224
    const/16 v0, 0x9a

    return v0
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->sendSortTypeAndAppsCidsList()V

    .line 220
    return-void
.end method

.method public onExtensionsDeleted(Ljava/util/List;)V
    .locals 10
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
    .line 318
    .local p1, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v3, "extensionsToRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v6, "noneHomeScreenExtToRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 322
    .local v2, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 323
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 324
    .local v1, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 325
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    .end local v1    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 330
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 331
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_3
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "i$":Ljava/util/Iterator;
    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    throw v7

    .line 339
    .end local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 340
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 341
    :try_start_4
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 342
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 345
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 346
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 347
    :try_start_5
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 349
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 351
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->updateListWithChangeExtensions(Ljava/util/List;)V

    .line 352
    return-void

    .line 342
    :catchall_2
    move-exception v7

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v7

    .line 349
    :catchall_3
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v7

    .line 336
    .restart local v2    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catchall_4
    move-exception v7

    goto :goto_2
.end method

.method public onExtensionsInserted(Ljava/util/List;)V
    .locals 9
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
    .line 263
    .local p1, "newExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 264
    .local v4, "noneHomeScreenExts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 265
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 269
    .local v1, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ctrl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 272
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_3
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getRelativeCid()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 281
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 282
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 283
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v4, v5, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_4
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 286
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 288
    .restart local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 291
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v4, v5, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 301
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v1    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 302
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 303
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 304
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->updateListWithChangeExtensions(Ljava/util/List;)V

    .line 307
    return-void

    .line 304
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
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
    .line 312
    .local p1, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->update()V

    .line 314
    return-void
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 229
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;

    .line 231
    .local v0, "resp":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method

.method public onSyncFinished()V
    .locals 1

    .prologue
    .line 254
    const-string v0, "onSyncFinished()"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 255
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->reloadExtensions()V

    .line 256
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->updateCids()V

    .line 257
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->requestDisabledApps()V

    .line 258
    return-void
.end method

.method public refreshApps()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->refreshNativeApps()V

    .line 670
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateLists()V

    .line 671
    return-void
.end method

.method public reloadExtensions()V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v0

    .line 390
    .local v0, "newExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mIsExtensionListUpdated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsListSize()I

    move-result v1

    if-nez v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getExtensionsList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 398
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->updateExtensionPreferenceLists(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method updateDisabledAppsList([II)V
    .locals 6
    .param p1, "disabledAppsCids"    # [I
    .param p2, "count"    # I

    .prologue
    .line 168
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsListSize()I

    move-result v3

    if-lez v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 170
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addToAppsList(J)V

    goto :goto_0

    .line 174
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 176
    if-nez p2, :cond_1

    .line 177
    const-string v3, "updateDisabledAppsList, count == 0"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 190
    :goto_1
    return-void

    .line 181
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_3

    .line 182
    aget v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 181
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    aget v4, p1, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addDisabledApp(J)V

    .line 186
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    aget v4, p1, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->removeFromAppsList(J)V

    goto :goto_3

    .line 189
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateLists()V

    goto :goto_1
.end method

.method updateSnakeNativeApp(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 159
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addSnakeNativeApp()V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->removeSnakeNativeApp()V

    goto :goto_0
.end method

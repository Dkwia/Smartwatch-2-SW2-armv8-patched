.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;
.super Ljava/lang/Object;
.source "WatchFaceSyncManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;


# static fields
.field private static final CID_REF_TRACKER_NAME:Ljava/lang/String; = "WatchFaces"

.field private static final RES_CACHE_CATEGORY:Ljava/lang/String; = "WatchFaces"

.field private static final WATCHFACES_PROVIDER_NAME:Ljava/lang/String; = "WatchFaces"

.field private static final WATCHFACE_IMAGES_PROVIDER_NAME:Ljava/lang/String; = "WatchFaceImages"

.field private static final WATCHFACE_PREVIEW_HEIGHT:I = 0x84

.field private static final WATCHFACE_PREVIEW_WIDTH:I = 0xa5


# instance fields
.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

.field private final mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mTemporaryInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;

.field private final mWatchFaceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

.field private final mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p3, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;
    .param p4, "resStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;
    .param p5, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p6, "watchFaceInstaller"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;
    .param p7, "watchFaceTemporaryInstaller"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;
    .param p8, "watchFaceStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .param p9, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    const-string v1, "WatchFaces"

    invoke-direct {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "resCache":Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    const-string v1, "WatchFaces"

    invoke-direct {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;-><init>(Ljava/lang/String;)V

    .line 71
    .local v5, "cidRefTracker":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

    const-string v2, "WatchFaces"

    invoke-direct {v1, v2, v3, p2, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

    .line 73
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    const-string v2, "WatchFaceImages"

    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;

    invoke-direct {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;-><init>()V

    move-object v4, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    .line 77
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 79
    invoke-virtual {p4, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 80
    invoke-virtual {p4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 82
    if-eqz p3, :cond_0

    .line 83
    invoke-virtual {v3, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V

    .line 84
    invoke-virtual {v5, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V

    .line 87
    :cond_0
    new-instance v8, Landroid/os/HandlerThread;

    const-string v1, "WatchFaceHandlerThread"

    invoke-direct {v8, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    .local v8, "handlerThread":Landroid/os/HandlerThread;
    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 89
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;

    .line 93
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mTemporaryInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;

    .line 94
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 95
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;)V

    .line 96
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->sendTemporaryWatchFace()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->handleGetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->handleAllInstalledResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->handleGetCurrentSelectedResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mTemporaryInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;

    return-object v0
.end method

.method private handleAllInstalledResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 2
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getValues()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setInstalled([I)V

    .line 375
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getTimestamp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setAccessorySelectionTimestamp(I)V

    .line 376
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->postSyncAndRefresh()V

    .line 377
    return-void
.end method

.method private handleGetCurrentSelectedResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 3
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getValues()[I

    move-result-object v1

    .line 414
    .local v1, "values":[I
    if-eqz v1, :cond_0

    .line 415
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 416
    .local v0, "currentSelectedWatchFaceCid":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setCurrentSelectedWatchFace(I)V

    .line 418
    .end local v0    # "currentSelectedWatchFaceCid":I
    :cond_0
    return-void
.end method

.method private handleGetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 10
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 380
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getValues()[I

    move-result-object v3

    .line 381
    .local v3, "values":[I
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lt v4, v9, :cond_1

    .line 382
    aget v0, v3, v8

    .line 383
    .local v0, "accSelectedWatchFaceCid":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getTimestamp()I

    move-result v1

    .line 384
    .local v1, "accTimestamp":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 386
    .local v2, "currentTimeInSec":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const-string v4, "Got watchface selection from acc. watchFaceCid=0x%08x, accStamp=%d, currentTime=%d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setAccessorySelectionTimestamp(I)V

    .line 392
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->isHostAppSelectionSynced()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->areWatchFacesSelected([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 395
    const-string v4, "Skipped syncing watchface, already in sync."

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 410
    .end local v0    # "accSelectedWatchFaceCid":I
    .end local v1    # "accTimestamp":I
    .end local v2    # "currentTimeInSec":I
    :cond_1
    :goto_0
    return-void

    .line 398
    .restart local v0    # "accSelectedWatchFaceCid":I
    .restart local v1    # "accTimestamp":I
    .restart local v2    # "currentTimeInSec":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectionTimestamp()I

    move-result v4

    if-ge v4, v1, :cond_3

    if-ge v1, v2, :cond_3

    .line 402
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp(I)V

    .line 403
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionCidsFromAccessory([I)V

    goto :goto_0

    .line 405
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getSelectedWatchFacesCid()[I

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->requestSetWatchFaces([I)V

    .line 406
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->requestGetCurrentSelected()V

    goto :goto_0
.end method

.method private postSyncAndRefresh()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method private postTemporaryWatchFace()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method

.method private requestAllInstalled()V
    .locals 4

    .prologue
    .line 283
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;-><init>(I)V

    .line 284
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setAction(I)V

    .line 285
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 286
    return-void
.end method

.method private requestGetCurrentSelected()V
    .locals 4

    .prologue
    .line 289
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;-><init>(I)V

    .line 290
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setAction(I)V

    .line 291
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 292
    return-void
.end method

.method private requestGetSelectedWatchFace()V
    .locals 4

    .prologue
    .line 277
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;-><init>(I)V

    .line 278
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setAction(I)V

    .line 279
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 280
    return-void
.end method

.method private requestSetWatchFaces([I)V
    .locals 4
    .param p1, "watchFaceCid"    # [I

    .prologue
    .line 268
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;-><init>(I)V

    .line 269
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setAction(I)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setValues([I)V

    .line 272
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectionTimestamp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setTimestamp(I)V

    .line 273
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 274
    return-void
.end method

.method private sendTemporaryWatchFace()V
    .locals 19

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getTempWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v16

    .line 181
    .local v16, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v10, "components":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 187
    .local v18, "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v17

    .line 188
    .local v17, "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-eqz v17, :cond_0

    .line 189
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->isNative()Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getCtrlExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v11

    .line 195
    .local v11, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v11, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v11

    .line 198
    :cond_1
    if-eqz v11, :cond_3

    .line 199
    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setExtensionCid(I)V

    .line 209
    .end local v11    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_2
    new-instance v9, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    invoke-direct {v9}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;-><init>()V

    .line 210
    .local v9, "component":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getExtensionCid()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setWidgetCid(I)V

    .line 211
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setWidgetTag(I)V

    .line 212
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getX()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxLeft(I)V

    .line 213
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getY()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxTop(I)V

    .line 214
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getX()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxRight(I)V

    .line 215
    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getY()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxBottom(I)V

    .line 216
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    .end local v9    # "component":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    .restart local v11    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    const-string v1, "Skipped widget. Failed finding extension, %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .end local v11    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v17    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v18    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getThumbnailUriString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa5

    const/16 v5, 0x84

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v7, 0x1

    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual/range {v1 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v13

    .line 223
    .local v13, "previewImageCid":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    invoke-virtual {v1, v2, v3, v10, v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;->getWatchFace(Ljava/util/List;ILjava/util/List;I)I

    .line 226
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 230
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isMarkedForDeletion()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 231
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mTemporaryInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->uninstall(I)V

    .line 238
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->isHostAppSelectionSynced()Z

    move-result v1

    if-nez v1, :cond_7

    .line 239
    new-instance v14, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;

    const/4 v1, -0x1

    invoke-direct {v14, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;-><init>(I)V

    .line 240
    .local v14, "tempReq":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setAction(I)V

    .line 242
    const/4 v1, 0x3

    new-array v15, v1, [I

    const/4 v1, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    aput v3, v15, v1

    const/4 v1, 0x1

    const/4 v3, -0x1

    aput v3, v15, v1

    const/4 v1, 0x2

    const/4 v3, -0x1

    aput v3, v15, v1

    .line 243
    .local v15, "values":[I
    invoke-virtual {v14, v15}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setValues([I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectionTimestamp()I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setTimestamp(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    invoke-interface {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 247
    .end local v14    # "tempReq":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    .end local v15    # "values":[I
    :cond_7
    return-void

    .line 234
    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mTemporaryInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->install(I)V

    goto :goto_1
.end method

.method private declared-synchronized syncUserWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 15
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v9, "components":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 121
    .local v14, "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-virtual {v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v13

    .line 122
    .local v13, "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-eqz v13, :cond_0

    .line 123
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->isNative()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getCtrlExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v10

    .line 129
    .local v10, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v10, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v10

    .line 132
    :cond_1
    if-eqz v10, :cond_3

    .line 133
    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setExtensionCid(I)V

    .line 143
    .end local v10    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_2
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    invoke-direct {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;-><init>()V

    .line 144
    .local v8, "component":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getExtensionCid()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setWidgetCid(I)V

    .line 145
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setWidgetTag(I)V

    .line 146
    invoke-virtual {v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getX()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxLeft(I)V

    .line 147
    invoke-virtual {v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getY()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxTop(I)V

    .line 148
    invoke-virtual {v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getX()I

    move-result v0

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxRight(I)V

    .line 149
    invoke-virtual {v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getY()I

    move-result v0

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->setScreenBoxBottom(I)V

    .line 150
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v1    # "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .end local v8    # "component":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    .end local v9    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v14    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    .restart local v1    # "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .restart local v9    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;>;"
    .restart local v10    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v13    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .restart local v14    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    const-string v0, "Skipped widget. Failed finding extension, %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .end local v10    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v13    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v14    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getThumbnailUriString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa5

    const/16 v4, 0x84

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v6, 0x1

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v12

    .line 157
    .local v12, "previewImageCid":I
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v9, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;->getWatchFace(Ljava/util/List;ILjava/util/List;I)I

    .line 160
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 161
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 167
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isMarkedForDeletion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;->uninstall(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    .line 171
    :cond_7
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;->install(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 306
    const/16 v0, 0x8c

    return v0
.end method

.method protected handleSetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 9
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 343
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getResult()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 349
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_HERO:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v0

    .line 350
    .local v0, "heroCid":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp()V

    .line 351
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->clearSelectedWatchFaces()V

    .line 352
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionFromAccessory(I)V

    .line 354
    const/4 v4, 0x3

    new-array v1, v4, [I

    aput v0, v1, v7

    aput v5, v1, v8

    aput v5, v1, v6

    .line 355
    .local v1, "newCids":[I
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->requestSetWatchFaces([I)V

    .line 357
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getValues()[I

    move-result-object v3

    .line 359
    .local v3, "values":[I
    if-eqz v3, :cond_1

    array-length v4, v3

    if-ne v4, v8, :cond_1

    .line 360
    aget v2, v3, v7

    .line 361
    .local v2, "selectedWatchFaceCid":I
    const-string v4, "Failed setting watchface 0x%08x (result=%d), reverted to Hero."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getResult()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    .end local v0    # "heroCid":I
    .end local v1    # "newCids":[I
    .end local v2    # "selectedWatchFaceCid":I
    .end local v3    # "values":[I
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectionTimestamp()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setAccessorySelectionTimestamp(I)V

    goto :goto_0

    .line 364
    .restart local v0    # "heroCid":I
    .restart local v1    # "newCids":[I
    .restart local v3    # "values":[I
    :cond_1
    const-string v4, "Failed setting watchface (result=%d), reverted to Hero."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getResult()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->postSyncAndRefresh()V

    .line 297
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
    .line 449
    .local p1, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
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
    .line 445
    .local p1, "newExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
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
    .line 454
    .local p1, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    return-void
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 311
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .line 313
    .local v0, "resp":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method public onSyncFinished()V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->requestAllInstalled()V

    .line 460
    return-void
.end method

.method public onTemporaryCommit()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->postTemporaryWatchFace()V

    .line 302
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 421
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->reset()V

    .line 422
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;->reset()V

    .line 423
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->markNonNativeWatchFacesAsNotInstalled()V

    .line 426
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp(I)V

    .line 429
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getAllWatchFaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 430
    .local v1, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp()V

    goto :goto_0

    .line 435
    .end local v1    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectedWatchFaceKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getPersistedInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp()V

    .line 438
    :cond_2
    return-void
.end method

.method protected syncWatchFaces()V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Syncing watchfaces."

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getAllWatchFaces()Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "watchFaces":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 104
    .local v1, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->syncUserWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    goto :goto_0

    .line 109
    .end local v1    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->isHostAppSelectionSynced()Z

    move-result v3

    if-nez v3, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->requestGetSelectedWatchFace()V

    .line 112
    :cond_3
    return-void
.end method

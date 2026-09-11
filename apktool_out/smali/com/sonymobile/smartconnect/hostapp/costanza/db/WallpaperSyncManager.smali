.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;
.super Ljava/lang/Object;
.source "WallpaperSyncManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;


# static fields
.field private static final CID_REF_TRACKER_NAME:Ljava/lang/String; = "Wallpapers"

.field private static final RES_CACHE_CATEGORY:Ljava/lang/String; = "Wallpapers"

.field private static final WALLPAPER_HEIGHT:I = 0xb0

.field private static final WALLPAPER_IMAGES_PROVIDER_NAME:Ljava/lang/String; = "WallpaperImages"

.field private static final WALLPAPER_PROVIDER_NAME:Ljava/lang/String; = "Wallpapers"

.field private static final WALLPAPER_THUMBNAIL_HEIGHT:I = 0x84

.field private static final WALLPAPER_THUMBNAIL_WIDTH:I = 0xa5

.field private static final WALLPAPER_WIDTH:I = 0xdc


# instance fields
.field private final cidReferenceTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

.field private final mHandler:Landroid/os/Handler;

.field private final mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

.field private final mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

.field private final mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

.field private final resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p3, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;
    .param p4, "resourceDeleter"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .param p5, "resStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;
    .param p6, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p7, "wallpaperInstaller"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;
    .param p8, "wallpaperStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    const-string v2, "Wallpapers"

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    .line 61
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    const-string v2, "Wallpapers"

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->cidReferenceTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .line 62
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .line 64
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    const-string v2, "WallpaperImages"

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->cidReferenceTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;

    invoke-direct {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;-><init>()V

    move-object v4, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    .line 67
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 68
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {p5, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 69
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->cidReferenceTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    invoke-virtual {p5, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 71
    if-eqz p3, :cond_0

    .line 72
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v1, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V

    .line 73
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->cidReferenceTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    invoke-virtual {v1, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V

    .line 76
    :cond_0
    new-instance v8, Landroid/os/HandlerThread;

    const-string v1, "WallpaperHandlerThread"

    invoke-direct {v8, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    .local v8, "handlerThread":Landroid/os/HandlerThread;
    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 78
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mHandler:Landroid/os/Handler;

    .line 81
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;

    .line 82
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .line 83
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V

    .line 84
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setImageResourceProivder(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->handleGetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->handleAllInstalledResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V

    return-void
.end method

.method private handleAllInstalledResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V
    .locals 2
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getValues()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setInstalled([I)V

    .line 232
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->postSyncAndRefresh()V

    .line 233
    return-void
.end method

.method private handleGetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V
    .locals 11
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getValues()[I

    move-result-object v3

    .line 237
    .local v3, "values":[I
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lt v4, v9, :cond_1

    .line 238
    aget v0, v3, v8

    .line 239
    .local v0, "accSelectedWallpaperCid":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getTimestamp()I

    move-result v1

    .line 240
    .local v1, "accTimestamp":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 242
    .local v2, "currentTimeInSec":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    const-string v4, "Got wallpaper selection from acc. wallpaperCid=0x%08x, accStamp=%d, currentTime=%d."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const-string v4, "Current wallpaper selection in host. wallpaperCid=0x%08x, hostStamp=%d."

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getSelectedWallpaperCid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getHostAppSelectionTimestamp()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setAccessorySelectionTimestamp(I)V

    .line 251
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->isHostAppSelectionSynced()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getSelectedWallpaperCid()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 253
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    const-string v4, "Skipped syncing wallpaper, already in sync."

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 265
    .end local v0    # "accSelectedWallpaperCid":I
    .end local v1    # "accTimestamp":I
    .end local v2    # "currentTimeInSec":I
    :cond_1
    :goto_0
    return-void

    .line 257
    .restart local v0    # "accSelectedWallpaperCid":I
    .restart local v1    # "accTimestamp":I
    .restart local v2    # "currentTimeInSec":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getHostAppSelectionTimestamp()I

    move-result v4

    if-ge v4, v1, :cond_3

    if-ge v1, v2, :cond_3

    .line 259
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setWallpaperSelectionFromAccessory(I)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getSelectedWallpaperCid()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->requestSetWallpaper(I)V

    goto :goto_0
.end method

.method private postSyncAndRefresh()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method private requestAllInstalled()V
    .locals 4

    .prologue
    .line 160
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;-><init>(I)V

    .line 161
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setAction(I)V

    .line 162
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 163
    return-void
.end method

.method private requestGetSelectedWallpaper()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;-><init>(I)V

    .line 155
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setAction(I)V

    .line 156
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 157
    return-void
.end method

.method private requestSetWallpaper(I)V
    .locals 4
    .param p1, "wallpaperCid"    # I

    .prologue
    .line 146
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;-><init>(I)V

    .line 147
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setAction(I)V

    .line 148
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setWallpaperCid(I)V

    .line 149
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getHostAppSelectionTimestamp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setTimestamp(I)V

    .line 150
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 151
    return-void
.end method

.method private syncUserWallpaper(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V
    .locals 12
    .param p1, "wallpaper"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isMarkedForDeletion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isMarkedForDeletion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->uninstall(I)V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->cidReferenceTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->deleteResource(ILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Ljava/util/ArrayList;)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->resCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->cidReferenceTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->deleteResource(ILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "wallpaperResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v10, "thumbnailResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCutomWallpaperUriString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdc

    const/16 v4, 0xb0

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v6, 0x1

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getNewImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    .line 121
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCutomWallpaperUriString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa5

    const/16 v6, 0x84

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v8, 0x1

    sget-object v9, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getNewImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v11

    .line 125
    .local v11, "thumbnailWallpaperCid":I
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setCid(I)V

    .line 127
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 128
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 131
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mInstaller:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v2

    invoke-virtual {v0, v2, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->install(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 172
    const/16 v0, 0x97

    return v0
.end method

.method protected handleSetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V
    .locals 8
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 202
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getResult()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 208
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_01:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v2

    .line 209
    .local v2, "wallpaper01":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setHostAppSelectionTimestamp()V

    .line 210
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setWallpaperSelectionFromAccessory(I)V

    .line 212
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->requestSetWallpaper(I)V

    .line 214
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getValues()[I

    move-result-object v1

    .line 216
    .local v1, "values":[I
    if-eqz v1, :cond_1

    array-length v3, v1

    if-ne v3, v7, :cond_1

    .line 217
    aget v0, v1, v6

    .line 218
    .local v0, "selectedWallpaperCid":I
    const-string v3, "Failed setting wallpaper 0x%08x (result=%d), reverted to Sony 0."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .end local v0    # "selectedWallpaperCid":I
    .end local v1    # "values":[I
    .end local v2    # "wallpaper01":I
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getHostAppSelectionTimestamp()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setAccessorySelectionTimestamp(I)V

    goto :goto_0

    .line 221
    .restart local v1    # "values":[I
    .restart local v2    # "wallpaper01":I
    :cond_1
    const-string v3, "Failed setting wallpaper (result=%d), reverted to Sony 0."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->postSyncAndRefresh()V

    .line 168
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
    .line 293
    .local p1, "deletdExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
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
    .line 285
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
    .line 289
    .local p1, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    return-void
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 177
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    .line 179
    .local v0, "resp":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method public onSyncFinished()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->requestAllInstalled()V

    .line 298
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 268
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->reset()V

    .line 269
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->markNonNativeWallpapersAsNotInstalled()V

    .line 273
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setHostAppSelectionTimestamp(I)V

    .line 276
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAllWallpapers()Ljava/util/List;

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

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 277
    .local v1, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setHostAppSelectionTimestamp()V

    goto :goto_0

    .line 281
    .end local v1    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_1
    return-void
.end method

.method protected syncWallpapers()V
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Syncing wallpapers."

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAllWallpapers()Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
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

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 92
    .local v1, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->syncUserWallpaper(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    goto :goto_0

    .line 96
    .end local v1    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->isHostAppSelectionSynced()Z

    move-result v3

    if-nez v3, :cond_3

    .line 97
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->requestGetSelectedWallpaper()V

    .line 99
    :cond_3
    return-void
.end method

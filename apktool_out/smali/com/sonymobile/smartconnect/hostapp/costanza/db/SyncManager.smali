.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    }
.end annotation


# static fields
.field protected static final NO_DB_ID:I = -0x1


# instance fields
.field private final mAckHandler:Landroid/os/Handler;

.field private final mAckHandlerThread:Landroid/os/HandlerThread;

.field private final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field protected final mContext:Landroid/content/Context;

.field protected final mCostanzaHeight:I

.field protected final mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field protected final mCostanzaWidth:I

.field protected mIsResourceReuseEnabled:Z

.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field protected final mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 227
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mIsResourceReuseEnabled:Z

    .line 61
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCostanzaHeight:I

    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCostanzaWidth:I

    .line 68
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AckThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mAckHandlerThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mAckHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 70
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mAckHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mAckHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mAckHandler:Landroid/os/Handler;

    .line 73
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 74
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 75
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 76
    return-void
.end method

.method private getCidType(I)I
    .locals 1
    .param p1, "cid"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ackMessage(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mAckHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method protected varargs addOperation(I[Landroid/content/ContentProviderOperation;)V
    .locals 7
    .param p1, "messageId"    # I
    .param p2, "operationArray"    # [Landroid/content/ContentProviderOperation;

    .prologue
    .line 321
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/ContentProviderOperation;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 323
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void
.end method

.method protected addOperations(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "messageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method protected addSyncListenerInfo(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    return-void
.end method

.method protected deleteResource(I)V
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 367
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 368
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const-string v2, "Skipped deleting resource with missing CID"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->getNewMessageId()I

    move-result v1

    .line 376
    .local v1, "messageId":I
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;-><init>(I)V

    .line 377
    .local v0, "deleteMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;->setCidToDelete(I)V

    .line 378
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->getCidType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;->setCidType(I)V

    goto :goto_0
.end method

.method protected disableResourceReuse()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mIsResourceReuseEnabled:Z

    .line 396
    return-void
.end method

.method protected enableResourceReuse()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mIsResourceReuseEnabled:Z

    .line 392
    return-void
.end method

.method protected getNewCid()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getNewCid()I

    move-result v0

    return v0
.end method

.method protected getNewMessageId()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v0

    return v0
.end method

.method protected isConnectionReadyForSynchronization()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->isReady()Z

    move-result v0

    return v0
.end method

.method public pause(Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;)V
    .locals 1
    .param p1, "pauser"    # Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;

    .prologue
    .line 399
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$2;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->postRunnable(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method protected abstract postRunnable(Ljava/lang/Runnable;)V
.end method

.method public removeSyncListener(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    .prologue
    .line 258
    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v2, 0x0

    .line 263
    .local v2, "remove":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    .line 264
    .local v1, "listenerInfo":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 265
    move-object v2, v1

    goto :goto_1

    .line 268
    .end local v1    # "listenerInfo":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    :cond_3
    if-eqz v2, :cond_0

    .line 269
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Resetting SyncManager!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 360
    :cond_0
    return-void
.end method

.method protected varargs sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 339
    return-void
.end method

.method protected varargs sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 348
    return-void
.end method

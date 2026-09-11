.class public Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;
.super Ljava/lang/Object;
.source "ResourceSendTracker.java"


# instance fields
.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mPrioritiesByMsgId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V
    .locals 1
    .param p1, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mPrioritiesByMsgId:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    .line 26
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 27
    return-void
.end method

.method private remove(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 58
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mPrioritiesByMsgId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 59
    return-void
.end method

.method private trackedMessagesCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 53
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mPrioritiesByMsgId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAck(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .line 63
    .local v0, "resource":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->remove(I)V

    .line 65
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->onAck()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    .end local v0    # "resource":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onNack(I)V
    .locals 6
    .param p1, "messageId"    # I

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .line 71
    .local v1, "resource":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->onNack()V

    .line 74
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getNackCount()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mPrioritiesByMsgId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    .line 77
    .local v0, "category":Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v0, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 78
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string v2, "Resent NACKed resource, 0x%08x."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v0    # "category":Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->remove(I)V

    .line 83
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->onAbort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v1    # "resource":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resendTrackedMessages()V
    .locals 8

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const-string v4, "Resending %d tracked messages expecting ACK."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->trackedMessagesCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 44
    .local v3, "msgCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 45
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .line 46
    .local v2, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mPrioritiesByMsgId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    .line 47
    .local v0, "category":Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-interface {v4, v0, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "category":Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    .end local v2    # "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    :cond_1
    monitor-exit p0

    return-void

    .line 39
    .end local v1    # "i":I
    .end local v3    # "msgCount":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized track(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)V
    .locals 2
    .param p1, "message"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .param p2, "category"    # Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mTrackedResources:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->mPrioritiesByMsgId:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

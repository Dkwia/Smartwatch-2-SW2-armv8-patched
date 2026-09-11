.class public Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;
.super Ljava/lang/Object;
.source "ThreadPauser.java"


# instance fields
.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mObjects:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->mObjects:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private allObjectsPaused([Ljava/lang/Object;)Z
    .locals 5
    .param p1, "objectsToWaitFor"    # [Ljava/lang/Object;

    .prologue
    .line 48
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 49
    .local v3, "o":Ljava/lang/Object;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->mObjects:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    const/4 v4, 0x0

    .line 53
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    return v4

    .line 48
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public pause(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->mObjects:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 31
    return-void

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 61
    return-void
.end method

.method public varargs waitForPauseAck([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objectsToWaitFor"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 40
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->mObjects:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->allObjectsPaused([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    monitor-enter p0

    .line 42
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 43
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :cond_0
    return-void
.end method

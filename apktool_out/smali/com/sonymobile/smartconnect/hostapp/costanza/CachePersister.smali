.class public Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;
.super Ljava/lang/Object;
.source "CachePersister.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;
    }
.end annotation


# static fields
.field private static final CACHE_PERSISTANCE_DELAY:J = 0x7530L


# instance fields
.field private final mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

.field private final mHandler:Landroid/os/Handler;

.field private final mPersistables:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersister:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

.field private final mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 2
    .param p1, "persister"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;
    .param p2, "controlExtensionStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersistables:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersister:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CachePersistanceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mThread:Landroid/os/HandlerThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersister:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersistables:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersistables:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersistables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V
    .locals 6
    .param p1, "p"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersistables:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersistables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mPersistables:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;

    invoke-direct {v3, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :cond_0
    monitor-exit v2

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;
.super Ljava/lang/Object;
.source "CachePersister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersistCachesRunnable"
.end annotation


# instance fields
.field private final mPersistable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V
    .locals 0
    .param p2, "p"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->mPersistable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->mPersistable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 49
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister$PersistCachesRunnable;->mPersistable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    invoke-interface {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

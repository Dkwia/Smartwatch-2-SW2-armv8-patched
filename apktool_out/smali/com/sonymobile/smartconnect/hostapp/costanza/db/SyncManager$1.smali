.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->ackMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

.field final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;I)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 282
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iget-object v4, v4, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->val$messageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 283
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 285
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Handling ACK for message id: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->val$messageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iget-object v4, v4, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "com.sonymobile.smartconnect.smartwatch2.db"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 289
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;)V

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->postRunnable(Ljava/lang/Runnable;)V

    .line 298
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iget-object v4, v4, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    .line 299
    .local v2, "listenerInfo":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->val$messageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->isListeningTo(Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    const-string v4, "Found a listener for message id: %d!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->val$messageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_3
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->val$messageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->idAcked(Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 307
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listenerInfo":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    .end local v3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 309
    const-string v4, ""

    invoke-static {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    return-void

    .line 310
    :catch_1
    move-exception v0

    .line 311
    .local v0, "e":Landroid/content/OperationApplicationException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 312
    const-string v4, ""

    invoke-static {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

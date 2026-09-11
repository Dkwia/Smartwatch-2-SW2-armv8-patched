.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SyncListenerInfo"
.end annotation


# instance fields
.field private mAllMessagesAdded:Z

.field private final mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

.field private mTotalSyncIds:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mAllMessagesAdded:Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addId(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mAllMessagesAdded:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "Error! Trying to add more messages to listen to after having called SyncListenerInfo.setAllMessagesAdded()!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequiredMessagesCount()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mTotalSyncIds:I

    return v0
.end method

.method public declared-synchronized idAcked(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mTotalSyncIds:I

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mTotalSyncIds:I

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;->onProgress(II)V

    .line 195
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mAllMessagesAdded:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;->onSynced()V

    .line 197
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isListeningTo(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllMessagesAdded()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mAllMessagesAdded:Z

    .line 176
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;->onSynced()V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mSyncListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequiredMessagesCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->mTotalSyncIds:I

    .line 223
    return-void
.end method

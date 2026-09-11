.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
.super Ljava/lang/Object;
.source "ResourceCache.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;
.implements Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;


# static fields
.field private static final DEFAULT_RESOURCE_CATEGORY:Ljava/lang/String; = "default"

.field private static final INITIAL_CAPACITY:I = 0x7d00

.field private static final INITIAL_MISSING_ACK_RESOURCES:I = 0x3e8

.field public static final NO_REMOTE_ID:I = -0x1

.field private static final RESOURCE_CACHE_NAME_PREFIX:Ljava/lang/String; = "res_cache_"


# instance fields
.field private final mCachedResourcesByCid:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedResourcesByHash:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedResourcesMissingAck:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

.field private final mResCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x7d00

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByCid:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesMissingAck:Ljava/util/HashSet;

    .line 45
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    .line 52
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mResCategory:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private isMissingAck(I)Z
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesMissingAck:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyObserver()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;->notifyObservers(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 144
    return-void
.end method

.method private putInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;)V
    .locals 2
    .param p1, "cr"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByCid:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->cid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;->registerObserver(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public contains(I)Z
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByCid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized findCid([B)I
    .locals 6
    .param p1, "hash"    # [B

    .prologue
    const/4 v1, -0x1

    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;-><init>(II[B)V

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    .line 87
    .local v0, "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->cid()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 90
    :cond_0
    monitor-exit p0

    return v1

    .line 85
    .end local v0    # "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadPersistedState(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    invoke-direct {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;-><init>(Ljava/io/DataInputStream;)V

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->putInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;)V

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public onAbort(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 4
    .param p1, "costanzaResource"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->removeCid(I)V

    .line 163
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "Removed resource from cache due to abort, cid=0x%08x."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    return-void
.end method

.method public declared-synchronized onAck(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 2
    .param p1, "res"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesMissingAck:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->notifyObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNack(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 0
    .param p1, "costanzaResource"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 158
    return-void
.end method

.method public declared-synchronized persist(Ljava/io/DataOutputStream;)V
    .locals 6
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    .line 128
    .local v0, "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->cid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->isMissingAck(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->persist(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    .end local v0    # "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 133
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const-string v2, "Persisted: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public persistableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mResCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(II[B)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "remoteId"    # I
    .param p3, "hash"    # [B

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->removeCid(I)V

    .line 62
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;-><init>(II[B)V

    .line 63
    .local v0, "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->putInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;)V

    .line 64
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->notifyObserver()V

    .line 66
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesMissingAck:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->cid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(I[B)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "hash"    # [B

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->put(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCid(I)V
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByCid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    .line 76
    .local v0, "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByCid:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesMissingAck:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->notifyObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    .end local v0    # "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByCid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesMissingAck:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "<ResourceCache>: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->mCachedResourcesByHash:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    .line 100
    .local v0, "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    const-string v3, "\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 102
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    const-string v3, "] </ResourceCache>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

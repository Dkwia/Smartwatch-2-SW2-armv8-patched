.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
.super Ljava/lang/Object;
.source "CidReferenceTracker.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;


# static fields
.field private static final CID_TRACKER_NAME_PREFIX:Ljava/lang/String; = "cid_tracker_"

.field private static final DEFAULT_TRACKER_NAME:Ljava/lang/String; = "default"


# instance fields
.field private final mCidTrackerName:Ljava/lang/String;

.field private final mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

.field private final mReferenceCount:Landroid/util/SparseIntArray;

.field private final mReferences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "trackerName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    .line 32
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    .line 39
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mCidTrackerName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private decreaseOldReferenceCounts([Ljava/lang/Integer;)V
    .locals 6
    .param p1, "oldReferencedCids"    # [Ljava/lang/Integer;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 137
    .local v4, "referencedCid":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 138
    .local v3, "newCount":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "arr$":[Ljava/lang/Integer;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "newCount":I
    .end local v4    # "referencedCid":I
    :cond_0
    return-void
.end method

.method private intToHexStr(I)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 189
    const-string v0, "0x%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyObserver()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;->notifyObservers(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 233
    return-void
.end method

.method private declared-synchronized putInternal(I[Ljava/lang/Integer;)V
    .locals 6
    .param p1, "cid"    # I
    .param p2, "referencedCids"    # [Ljava/lang/Integer;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 78
    .local v4, "referencedCid":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 79
    .local v3, "newCount":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "newCount":I
    .end local v4    # "referencedCid":I
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    .end local v0    # "arr$":[Ljava/lang/Integer;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized removeUnreferenced(I)V
    .locals 1
    .param p1, "cid"    # I

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mObservable:Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/PersistableObserverObservable;->registerObserver(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public declared-synchronized findReferences(ILjava/util/List;)V
    .locals 4
    .param p1, "cid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "referencingCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 106
    .local v2, "referencingCid":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 107
    .local v1, "referencedCids":[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "referencedCids":[Ljava/lang/Integer;
    .end local v2    # "referencingCid":I
    :cond_1
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getNextUnreferencedResource()I
    .locals 4

    .prologue
    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 155
    .local v0, "cid":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 156
    .local v2, "refCount":I
    if-nez v2, :cond_0

    if-ltz v0, :cond_0

    .line 160
    .end local v0    # "cid":I
    .end local v2    # "refCount":I
    :goto_1
    return v0

    .line 153
    .restart local v0    # "cid":I
    .restart local v2    # "refCount":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "cid":I
    .end local v2    # "refCount":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public loadPersistedState(Ljava/io/DataInputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 218
    .local v3, "referencingCid":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 219
    .local v0, "arraySize":I
    new-array v2, v0, [Ljava/lang/Integer;

    .line 220
    .local v2, "referencedCids":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_0
    invoke-direct {p0, v3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->putInternal(I[Ljava/lang/Integer;)V

    goto :goto_0

    .line 225
    .end local v0    # "arraySize":I
    .end local v1    # "i":I
    .end local v2    # "referencedCids":[Ljava/lang/Integer;
    .end local v3    # "referencingCid":I
    :cond_1
    return-void
.end method

.method public declared-synchronized persist(Ljava/io/DataOutputStream;)V
    .locals 11
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 200
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 201
    .local v6, "referencingCid":I
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    .line 202
    .local v5, "referencedCids":[Ljava/lang/Integer;
    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 203
    array-length v7, v5

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 205
    .local v4, "referencedCid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    .end local v4    # "referencedCid":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "arr$":[Ljava/lang/Integer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "referencedCids":[Ljava/lang/Integer;
    .end local v6    # "referencingCid":I
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 210
    const-string v7, "Persisted: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_2
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public persistableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cid_tracker_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mCidTrackerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized popUnreferencedCids(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "unreferencedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 118
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 119
    .local v0, "cid":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 120
    .local v3, "refCount":I
    if-nez v3, :cond_0

    if-ltz v0, :cond_0

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "cid":I
    .end local v3    # "refCount":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 126
    .local v4, "unreferencedCid":I
    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->removeUnreferenced(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 117
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "unreferencedCid":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 129
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->notifyObserver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized put(II)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "referencedCid"    # I

    .prologue
    .line 43
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(I[Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(III)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "cidRangeFirst"    # I
    .param p3, "cidRangeLast"    # I

    .prologue
    .line 48
    monitor-enter p0

    sub-int v3, p3, p2

    add-int/lit8 v3, v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Integer;

    .line 49
    .local v2, "intArray":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    move v0, p2

    .local v0, "cidInRange":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 50
    add-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(I[Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 48
    .end local v0    # "cidInRange":I
    .end local v1    # "i":I
    .end local v2    # "intArray":[Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized put(ILjava/util/List;)V
    .locals 1
    .param p1, "cid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "referencedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(I[Ljava/lang/Integer;)V
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

.method public declared-synchronized put(I[Ljava/lang/Integer;)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "referencedCids"    # [Ljava/lang/Integer;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 65
    .local v0, "oldReferencedCids":[Ljava/lang/Integer;
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->decreaseOldReferenceCounts([Ljava/lang/Integer;)V

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->putInternal(I[Ljava/lang/Integer;)V

    .line 71
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->notifyObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "oldReferencedCids":[Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public referencedResources()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized remove(I)I
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 85
    .local v1, "references":[Ljava/lang/Integer;
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->decreaseOldReferenceCounts([Ljava/lang/Integer;)V

    .line 86
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 88
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 89
    .local v0, "referenceCount":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->notifyObserver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return v0

    .line 84
    .end local v0    # "referenceCount":I
    .end local v1    # "references":[Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeInvalidReferences(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;)V
    .locals 3
    .param p1, "resCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    .prologue
    .line 236
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 238
    .local v1, "referencingCid":I
    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->remove(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "referencingCid":I
    :cond_1
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 145
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v6, ":\nReferences:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 171
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 172
    .local v4, "referingCid":I
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferences:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 173
    .local v3, "references":[Ljava/lang/Integer;
    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->intToHexStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->integerArraytoHexString([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "references":[Ljava/lang/Integer;
    .end local v4    # "referingCid":I
    :cond_0
    const-string v6, "\nReference counts:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 180
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 181
    .local v2, "referencedCid":I
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->mReferenceCount:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 182
    .local v0, "count":Ljava/lang/Integer;
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->intToHexStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "count":Ljava/lang/Integer;
    .end local v2    # "referencedCid":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
.super Ljava/lang/Object;
.source "ResourceProviderCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;
    }
.end annotation


# instance fields
.field private mCacheChangeObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

.field private final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field private final mContext:Landroid/content/Context;

.field private final mLruCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;

.field private final mPersistableFileStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

.field private final mWeakRefResProviders:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;ILcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p3, "maxCachedProviders"    # I
    .param p4, "persistableFileStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;

    invoke-direct {v0, p0, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mLruCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;

    .line 165
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mWeakRefResProviders:Ljava/util/WeakHashMap;

    .line 166
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 168
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mPersistableFileStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mWeakRefResProviders:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mCacheChangeObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mPersistableFileStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getSynchronized(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mLruCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mLruCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    monitor-exit v1

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mLruCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mLruCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->evictAll()V

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mWeakRefResProviders:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 186
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mWeakRefResProviders:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 187
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 187
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setCacheChangeObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->mCacheChangeObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    .line 173
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;
.super Ljava/lang/Object;
.source "CidProviderImpl.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;


# static fields
.field private static final CID_POOL_SIZE:I = 0xa

.field private static final NEXT_AVAILABLE_CID_KEY:Ljava/lang/String; = "next_available_cid_key"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNextCid:I

.field private mPoolEndCid:I

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    .line 33
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPoolEndCid:I

    .line 38
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "next_available_cid_key"

    sget v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->CID_START_VALUE:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    .line 45
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->allocateCids()V

    .line 46
    return-void
.end method

.method private allocateCids()V
    .locals 3

    .prologue
    .line 66
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPoolEndCid:I

    .line 68
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPoolEndCid:I

    const v2, 0x7fffffff

    if-le v1, v2, :cond_1

    .line 70
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CidProviderImpl: We are out of Cids! Resetting host application"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 74
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->requestTotalReset()V

    .line 77
    sget v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->CID_START_VALUE:I

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    .line 81
    .end local v0    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    :cond_1
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPoolEndCid:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->storeCid(I)V

    .line 82
    return-void
.end method

.method private storeCid(I)V
    .locals 2
    .param p1, "cid"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "next_available_cid_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method


# virtual methods
.method public declared-synchronized getCidRange(I)I
    .locals 3
    .param p1, "cidCount"    # I

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    .line 100
    .local v0, "newCid":I
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    .line 102
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPoolEndCid:I

    if-le v1, v2, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->allocateCids()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return v0

    .line 98
    .end local v0    # "newCid":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNewCid()I
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->getCidRange(I)I
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

.method public getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I
    .locals 2
    .param p1, "reservedCid"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    .prologue
    .line 92
    const/high16 v0, 0x100000

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->CID_START_VALUE:I

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mNextCid:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->mPoolEndCid:I

    .line 62
    sget v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->CID_START_VALUE:I

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProviderImpl;->storeCid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

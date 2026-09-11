.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;
.source "CacheFileStorage.java"


# static fields
.field private static final STORAGE_FOLDER:Ljava/lang/String; = "persistables"

.field private static final STORAGE_VERSION:I = 0x6


# instance fields
.field private final mResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "resetter"    # Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;->mResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    .line 31
    return-void
.end method


# virtual methods
.method protected getStorageFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "persistables"

    return-object v0
.end method

.method protected getStorageVersion()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x6

    return v0
.end method

.method public loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z
    .locals 2
    .param p1, "p"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    move-result v0

    .line 37
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;->mResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;->requestReset()V

    .line 43
    :cond_0
    return v0
.end method

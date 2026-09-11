.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "WatchFaceResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getWatchFace(Ljava/util/List;ILjava/util/List;I)I
    .locals 7
    .param p2, "watchFaceCid"    # I
    .param p4, "previewImageCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "components":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;>;"
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;

    invoke-direct {v2, p0, p2, p4, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;IILjava/util/List;)V

    .line 83
    .local v2, "rh":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;

    invoke-direct {v3, p0, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;Ljava/util/List;I)V

    .line 85
    .local v3, "rc":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;->mResourceDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    invoke-interface {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;->hash(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)[B

    move-result-object v5

    .line 86
    .local v5, "hash":[B
    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;->findCid([B)I

    move-result v6

    .line 87
    .local v6, "cid":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;->cacheResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;I[B)I

    .line 90
    :cond_0
    return p2
.end method

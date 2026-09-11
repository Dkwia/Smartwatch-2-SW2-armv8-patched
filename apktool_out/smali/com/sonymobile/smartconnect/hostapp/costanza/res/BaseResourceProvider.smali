.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.super Ljava/lang/Object;
.source "BaseResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;
    }
.end annotation


# instance fields
.field protected final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field private final mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

.field private mCreateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;

.field private final mName:Ljava/lang/String;

.field private final mResourceCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

.field protected final mResourceDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .line 100
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mName:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 102
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    .line 103
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .line 104
    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private notifyCreateListener(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 1
    .param p1, "res"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCreateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCreateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;->onCreate(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method protected cacheCid(I[B)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "hash"    # [B

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->put(I[B)V

    .line 116
    return-void
.end method

.method protected cacheNewResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I
    .locals 6
    .param p2, "rh"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;
    .param p3, "rc"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;",
            ")I"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    invoke-interface {p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;->hash(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)[B

    move-result-object v5

    .line 159
    .local v5, "hash":[B
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    invoke-interface {p3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;->getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->cacheResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;I[B)I

    move-result v0

    return v0
.end method

.method protected cacheResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;I[B)I
    .locals 5
    .param p2, "rh"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;
    .param p3, "rc"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    .param p4, "cid"    # I
    .param p5, "hash"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;",
            "I[B)I"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual {p0, p4, p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->cacheCid(I[B)V

    .line 143
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    invoke-interface {p3, p4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;->createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v0

    .line 144
    .local v0, "resource":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->setSourceName(Ljava/lang/String;)V

    .line 146
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->notifyCreateListener(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V

    .line 148
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Cached new resource, 0x%08x."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .end local p4    # "cid":I
    :cond_0
    :goto_0
    return p4

    .restart local p4    # "cid":I
    :cond_1
    const/4 p4, -0x1

    goto :goto_0
.end method

.method protected findCid([B)I
    .locals 1
    .param p1, "hash"    # [B

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->findCid([B)I

    move-result v0

    return v0
.end method

.method protected getNewCid()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getNewCid()I

    move-result v0

    return v0
.end method

.method protected replaceResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I
    .locals 6
    .param p2, "rh"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;
    .param p3, "rc"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;",
            ")I"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    invoke-interface {p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;->hash(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)[B

    move-result-object v5

    .line 133
    .local v5, "hash":[B
    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->findCid([B)I

    move-result v4

    .line 134
    .local v4, "cid":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    invoke-interface {p3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;->getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I

    move-result v4

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 137
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->cacheResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;I[B)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->reset()V

    .line 169
    return-void
.end method

.method public resourceCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->size()I

    move-result v0

    return v0
.end method

.method protected reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I
    .locals 7
    .param p2, "rh"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;
    .param p3, "rc"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;",
            ")I"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    invoke-interface {p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;->hash(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)[B

    move-result-object v5

    .line 121
    .local v5, "hash":[B
    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->findCid([B)I

    move-result v6

    .line 123
    .local v6, "cid":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    invoke-interface {p3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;->getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->cacheResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;I[B)I

    move-result v6

    .line 128
    .end local v6    # "cid":I
    :cond_0
    :goto_0
    return v6

    .line 127
    .restart local v6    # "cid":I
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Reused resource, 0x%08x."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V
    .locals 0
    .param p1, "resourceCreateListener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mCreateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;->mResourceCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

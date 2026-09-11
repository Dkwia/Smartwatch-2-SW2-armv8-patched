.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "MasterResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$1;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;
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
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getMaster(Ljava/util/List;IILjava/util/List;Ljava/util/List;Z)I
    .locals 6
    .param p2, "extensionCid"    # I
    .param p3, "viewId"    # I
    .param p6, "isTouchUpdatable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p4, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;-><init>(IILjava/util/List;Ljava/util/List;Z)V

    .line 114
    .local v0, "hasherAndCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;->replaceResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v1

    return v1
.end method

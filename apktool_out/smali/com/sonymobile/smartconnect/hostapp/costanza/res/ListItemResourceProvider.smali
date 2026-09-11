.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "ListItemResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;
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
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 68
    return-void
.end method


# virtual methods
.method public replaceListItemResource(Ljava/util/List;Ljava/util/List;II)I
    .locals 2
    .param p3, "listCid"    # I
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p2, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;

    invoke-direct {v0, p3, p4, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;-><init>(IILjava/util/List;)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;

    invoke-direct {v1, p3, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;->replaceResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

.method public reuseListItemResource(Ljava/util/List;Ljava/util/List;II)I
    .locals 2
    .param p3, "listCid"    # I
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p2, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;

    invoke-direct {v0, p3, p4, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;-><init>(IILjava/util/List;)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;

    invoke-direct {v1, p3, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;-><init>(ILjava/util/List;I)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

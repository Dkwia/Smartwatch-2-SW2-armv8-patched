.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "MenuItemResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemHasher;
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
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 52
    return-void
.end method


# virtual methods
.method public reuseMenuItemResource(Ljava/util/List;Ljava/util/List;)I
    .locals 2
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
            ">;)I"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p2, "itemCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemHasher;

    invoke-direct {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemHasher;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemCreator;

    invoke-direct {v1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemCreator;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

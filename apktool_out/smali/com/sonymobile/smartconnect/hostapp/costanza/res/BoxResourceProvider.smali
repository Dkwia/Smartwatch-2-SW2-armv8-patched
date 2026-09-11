.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "BoxResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;
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
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getBox(Ljava/util/List;IILandroid/graphics/Rect;)I
    .locals 2
    .param p2, "outlineColor"    # I
    .param p3, "fillColor"    # I
    .param p4, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;II",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;Landroid/graphics/Rect;II)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;Landroid/graphics/Rect;II)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

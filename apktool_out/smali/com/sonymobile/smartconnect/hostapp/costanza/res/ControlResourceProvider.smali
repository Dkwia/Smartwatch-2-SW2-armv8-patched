.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;
    }
.end annotation


# static fields
.field public static final LIST_CID_RANGE_DEFAULT_ITEM_INDEX:I = 0x1

.field public static final LIST_CID_RANGE_FIRST_ITEM_INDEX:I = 0x2

.field public static final LIST_MAX_ITEM_COUNT:I = 0x3e8


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getListResourceControl(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)I
    .locals 4
    .param p2, "listControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;",
            ")I"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v0

    .line 358
    .local v0, "rect":Landroid/graphics/Rect;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceHasher;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getXmlLayoutId()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getItemCount()I

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;II)V

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;

    invoke-direct {v2, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;-><init>(Landroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->replaceResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v1

    return v1
.end method

.method public getSwipeResourceControl(Ljava/util/List;Landroid/graphics/Rect;)I
    .locals 2
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceHasher;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceCreator;

    invoke-direct {v1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceCreator;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

.method public getTouchResourceControl(Ljava/util/List;Landroid/graphics/Rect;ZZIIIII)I
    .locals 9
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "isShortClickable"    # Z
    .param p4, "isLongClickable"    # Z
    .param p5, "viewId"    # I
    .param p6, "shortPressColor"    # I
    .param p7, "longPressColor"    # I
    .param p8, "shortPressCid"    # I
    .param p9, "longPressCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZZIIIII)I"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceHasher;

    invoke-direct {v8, p0, p2, p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;I)V

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;-><init>(Landroid/graphics/Rect;ZZIIII)V

    invoke-virtual {p0, p1, v8, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

.method public replaceMenuResourceControl(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;ZZ)I
    .locals 2
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p4, "isSlideEffectEnabled"    # Z
    .param p5, "isOfflineMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZ)I"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;Ljava/util/List;Z)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;

    invoke-direct {v1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;-><init>(Landroid/graphics/Rect;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->replaceResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

.method public reuseMenuResourceControl(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;ZZ)I
    .locals 2
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p4, "isSlideEffectEnabled"    # Z
    .param p5, "isOfflineMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZ)I"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;Ljava/util/List;Z)V

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;

    invoke-direct {v1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;-><init>(Landroid/graphics/Rect;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v0

    return v0
.end method

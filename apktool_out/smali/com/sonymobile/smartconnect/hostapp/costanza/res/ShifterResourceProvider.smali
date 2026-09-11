.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "ShifterResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;
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
.method public getShifter(Ljava/util/List;IIII)I
    .locals 3
    .param p2, "eventId"    # I
    .param p3, "positionedCid"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;IIII)I"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;-><init>(IIII)V

    .line 86
    .local v1, "shifterHasher":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;

    invoke-direct {v0, p3, p4, p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;-><init>(III)V

    .line 87
    .local v0, "shifterCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;
    invoke-virtual {p0, p1, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v2

    return v2
.end method

.method public getShifter(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;)I
    .locals 5
    .param p2, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;",
            ")I"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;

    invoke-direct {v1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 78
    .local v1, "shifterHasher":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->getPositionedCid()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->getX()I

    move-result v3

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->getY()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;-><init>(III)V

    .line 80
    .local v0, "shifterCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;
    invoke-virtual {p0, p1, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;->replaceResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v2

    return v2
.end method

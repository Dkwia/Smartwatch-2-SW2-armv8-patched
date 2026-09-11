.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.source "TimeGroupControl.java"


# instance fields
.field private mClockCid:I

.field private final mTimeLayout:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;Z)V
    .locals 1
    .param p1, "view"    # Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mClockCid:I

    .line 27
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mTimeLayout:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;

    .line 28
    return-void
.end method

.method private generateClockItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "clockItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;>;"
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;-><init>()V

    .line 49
    .local v1, "clockItemGroup":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;->eCLOCK_ITEM_GROUP_IMAGES:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setType(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$ClockItemTypes;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v3

    .line 52
    .local v3, "rect":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setGroupBoxTop(I)V

    .line 53
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setGroupBoxLeft(I)V

    .line 54
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setGroupBoxBottom(I)V

    .line 55
    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setGroupBoxRight(I)V

    .line 56
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setGroupItemCount(I)V

    .line 57
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mTimeLayout:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->getGravity()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setAlignment(I)V

    .line 58
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mTimeLayout:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;->getTimeOffset()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;->setTimeOffset(I)V

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 62
    .local v0, "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    instance-of v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;

    if-eqz v4, :cond_0

    .line 63
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;

    .end local v0    # "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->getClockItem()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method protected generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 35
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mIsDirty:Z

    if-eqz v1, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v0, "clockItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;>;"
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->generateClockItems(Ljava/util/List;)V

    .line 38
    invoke-virtual {p1, p2, p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getClock(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mClockCid:I

    .line 41
    .end local v0    # "clockItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;>;"
    :cond_0
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mClockCid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 42
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mClockCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    return-void
.end method

.method public getTimeLayout()Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;->mTimeLayout:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;

    return-object v0
.end method

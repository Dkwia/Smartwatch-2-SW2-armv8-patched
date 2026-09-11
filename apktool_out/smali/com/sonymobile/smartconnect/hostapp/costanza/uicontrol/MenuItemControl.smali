.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.source "MenuItemControl.java"


# instance fields
.field private mMenuItemCid:I

.field private mSubCid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;)V
    .locals 5
    .param p1, "menuItemView"    # Landroid/view/ViewGroup;
    .param p2, "menuControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .param p3, "controlFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-direct {p0, p1, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 24
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 26
    .local v1, "childView":Landroid/view/View;
    const/4 v3, -0x1

    invoke-virtual {p3, p0, v1, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;IZ)V

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "childView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
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
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    const/4 v4, 0x0

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 35
    .local v0, "itemSubCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2, v0, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 37
    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;->mIsDirty:Z

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getMenuItem(Ljava/util/List;Ljava/util/List;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;->mMenuItemCid:I

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v1

    .line 41
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;-><init>()V

    .line 42
    .local v2, "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxLeft(I)V

    .line 43
    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxTop(I)V

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxRight(I)V

    .line 45
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxBottom(I)V

    .line 46
    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenOpaque(Z)V

    .line 47
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;->mMenuItemCid:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setResourceCid(I)V

    .line 48
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;->mSubCid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 51
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    :cond_0
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;->mMenuItemCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;->mSubCid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

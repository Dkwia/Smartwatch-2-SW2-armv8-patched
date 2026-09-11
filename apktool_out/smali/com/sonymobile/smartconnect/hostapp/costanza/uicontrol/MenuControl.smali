.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.source "MenuControl.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;


# instance fields
.field protected mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

.field private mIsMenuWithSlideEffectGenerated:Z

.field private mIsMenuWithoutSlideEffectGenerated:Z

.field private final mIsOfflineMode:Z

.field private final mKey:I

.field private mMenuCid:I

.field private final mMenuView:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

.field private mSubScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;ZI)V
    .locals 6
    .param p1, "menuView"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    .param p2, "controlFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .param p3, "isOfflineMode"    # Z
    .param p4, "key"    # I

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-direct {p0, p1, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    .line 28
    const/4 v4, -0x1

    iput v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuCid:I

    .line 43
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuView:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    .line 44
    iput-boolean p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsOfflineMode:Z

    .line 45
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mKey:I

    .line 47
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuView:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->getChildCount()I

    move-result v0

    .line 48
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 49
    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 50
    .local v3, "menuItemView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 51
    .local v1, "height":I
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setTop(I)V

    .line 52
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBottom(I)V

    .line 54
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;

    invoke-direct {v4, v3, p0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuItemControl;-><init>(Landroid/view/ViewGroup;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "height":I
    .end local v3    # "menuItemView":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
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

    const/4 v10, 0x1

    .line 63
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .local v3, "itemCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 65
    .local v6, "itemSubScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-super {p0, p1, p2, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 69
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v7

    .line 71
    .local v7, "originalRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuView:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 72
    .local v9, "screenWidth":I
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuView:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 73
    .local v8, "screenHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, v9, v0

    invoke-direct {v2, v0, v4, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    .local v2, "rightAdjustedRect":Landroid/graphics/Rect;
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsMenuWithSlideEffectGenerated:Z

    if-eqz v0, :cond_1

    .line 76
    .local v4, "isSlideEffectEnabled":Z
    :goto_0
    iget-boolean v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsOfflineMode:Z

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->replaceMenu(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;ZZ)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuCid:I

    .line 79
    if-eqz v4, :cond_2

    .line 80
    iput-boolean v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsMenuWithSlideEffectGenerated:Z

    .line 85
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mSubScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->scheduleTouchUpdate()V

    .line 89
    .end local v2    # "rightAdjustedRect":Landroid/graphics/Rect;
    .end local v4    # "isSlideEffectEnabled":Z
    .end local v7    # "originalRect":Landroid/graphics/Rect;
    .end local v8    # "screenHeight":I
    .end local v9    # "screenWidth":I
    :cond_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuCid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {p4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-void

    .restart local v2    # "rightAdjustedRect":Landroid/graphics/Rect;
    .restart local v7    # "originalRect":Landroid/graphics/Rect;
    .restart local v8    # "screenHeight":I
    .restart local v9    # "screenWidth":I
    :cond_1
    move v4, v10

    .line 75
    goto :goto_0

    .line 82
    .restart local v4    # "isSlideEffectEnabled":Z
    :cond_2
    iput-boolean v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsMenuWithoutSlideEffectGenerated:Z

    goto :goto_1
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuCid:I

    return v0
.end method

.method public getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 128
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsOfflineMode:Z

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Z)V

    .line 129
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mKey:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 130
    return-void
.end method

.method public getMenuSubCids()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mSubScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    return-object v0
.end method

.method protected markAsClean()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mIsMenuWithoutSlideEffectGenerated:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->markAsClean()V

    .line 98
    :cond_0
    return-void
.end method

.method public onMenuAction(I)V
    .locals 7
    .param p1, "itemIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    if-nez v5, :cond_0

    .line 123
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuView:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->getChildCount()I

    move-result v5

    if-lt p1, v5, :cond_2

    move v0, v3

    .line 114
    .local v0, "isMenuDismissed":Z
    :goto_1
    if-nez v0, :cond_1

    .line 115
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mMenuView:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    invoke-virtual {v5, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    .line 117
    .local v2, "menuItem":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->getId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onMenuItemClick(I)V

    .line 118
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Sent menu item pressed intent, menuItem=%s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v5, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .end local v1    # "itemView":Landroid/view/View;
    .end local v2    # "menuItem":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->removeFromParent()V

    .line 122
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->invalidate()V

    goto :goto_0

    .end local v0    # "isMenuDismissed":Z
    :cond_2
    move v0, v4

    .line 112
    goto :goto_1
.end method

.method public setAefEventListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V
    .locals 0
    .param p1, "aefEventListener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .line 38
    return-void
.end method

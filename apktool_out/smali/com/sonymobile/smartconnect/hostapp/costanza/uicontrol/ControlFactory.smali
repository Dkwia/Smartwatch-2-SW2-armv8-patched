.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
.super Ljava/lang/Object;
.source "ControlFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "resourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private createGroupNode(Landroid/view/View;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 71
    instance-of v0, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;

    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;Z)V

    .line 74
    :goto_0
    return-object v0

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private createNode(Landroid/view/View;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 66
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;-><init>(Landroid/view/View;Z)V

    .line 67
    .local v0, "node":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    return-object v0
.end method

.method private createTimeControl(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1
    .param p1, "view"    # Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 79
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;Z)V

    return-object v0
.end method


# virtual methods
.method protected createImageControl(Landroid/widget/ImageView;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 88
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;-><init>(Landroid/widget/ImageView;ZLandroid/content/Context;)V

    .line 89
    .local v0, "imageNode":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;
    return-object v0
.end method

.method public createListControl(Landroid/widget/AdapterView;I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    .locals 1
    .param p2, "xmlLayoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-direct {v0, p1, p2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;-><init>(Landroid/widget/AdapterView;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;)V

    return-object v0
.end method

.method public createMenuControl(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;ZI)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .locals 1
    .param p1, "menuView"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    .param p2, "isOfflineMode"    # Z
    .param p3, "sourceCid"    # I

    .prologue
    .line 97
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;ZI)V

    return-object v0
.end method

.method protected createTextControl(Landroid/widget/TextView;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 83
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;-><init>(Landroid/widget/TextView;Z)V

    .line 84
    .local v0, "textNode":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;
    return-object v0
.end method

.method public createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;I)V
    .locals 1
    .param p1, "parentNode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "xmlLayoutId"    # I

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;IZ)V

    .line 36
    return-void
.end method

.method public createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;IZ)V
    .locals 10
    .param p1, "parentNode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "xmlLayoutId"    # I
    .param p4, "isUpdatable"    # Z

    .prologue
    .line 39
    instance-of v6, p2, Landroid/widget/AdapterView;

    if-eqz v6, :cond_1

    move-object v0, p2

    .line 40
    check-cast v0, Landroid/widget/AdapterView;

    .line 41
    .local v0, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, v0, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createListControl(Landroid/widget/AdapterView;I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 63
    .end local v0    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    instance-of v6, p2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 44
    invoke-direct {p0, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createGroupNode(Landroid/view/View;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;

    move-result-object v3

    .line 45
    .local v3, "groupNode":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    invoke-virtual {p1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    move-object v2, p2

    .line 47
    check-cast v2, Landroid/view/ViewGroup;

    .line 48
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 49
    .local v5, "nChilds":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 50
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {p0, v3, v1, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;IZ)V

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "groupNode":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
    .end local v4    # "i":I
    .end local v5    # "nChilds":I
    :cond_2
    instance-of v6, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    if-eqz v6, :cond_3

    .line 54
    check-cast p2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    .end local p2    # "view":Landroid/view/View;
    invoke-direct {p0, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createTimeControl(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    goto :goto_0

    .line 55
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 56
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p0, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createTextControl(Landroid/widget/TextView;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    goto :goto_0

    .line 57
    .restart local p2    # "view":Landroid/view/View;
    :cond_4
    instance-of v6, p2, Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 58
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p0, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createImageControl(Landroid/widget/ImageView;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    goto :goto_0

    .line 60
    .restart local p2    # "view":Landroid/view/View;
    :cond_5
    invoke-direct {p0, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createNode(Landroid/view/View;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 61
    const-string v6, "Created empty node for view: %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

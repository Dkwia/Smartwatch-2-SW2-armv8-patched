.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.source "WidgetControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    }
.end annotation


# instance fields
.field private final mExtensionCid:I

.field private final mInstanceId:I

.field private mLastCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field private mTouchControl:I

.field private final mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

.field private mWidgetScreenCid:I

.field private final mXmlLayoutId:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;IILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 1
    .param p1, "xmlLayoutId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "controlFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .param p4, "extensionCid"    # I
    .param p5, "instanceId"    # I
    .param p6, "targetState"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .param p7, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mWidgetScreenCid:I

    .line 43
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mXmlLayoutId:I

    .line 44
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .line 45
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mInstanceId:I

    .line 47
    invoke-virtual {p3, p0, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;I)V

    .line 49
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    if-eq p6, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->disableTouchResources()V

    .line 53
    :cond_0
    invoke-virtual {p0, p7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->setTargetColorMode(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 54
    invoke-virtual {p0, p6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->setTargetState(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)V

    .line 60
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    invoke-direct {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    .line 67
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mExtensionCid:I

    .line 68
    return-void
.end method

.method private getScreenResource(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;)I
    .locals 2
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
            ">;)I"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mExtensionCid:I

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mXmlLayoutId:I

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getWidgetScreen(Ljava/util/List;IILjava/util/List;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected generateBackgroundTouchControls(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;)V
    .locals 10
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
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->getViewId()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v4, v3

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getTouchResourceControl(Ljava/util/List;Landroid/graphics/Rect;ZZIIIII)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTouchControl:I

    .line 100
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTouchControl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public generateWidgetScreen(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;)I
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 105
    .local v1, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 107
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTouchResourcesEnabled:Z

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->generateBackgroundTouchControls(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;)V

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 113
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->markAsClean()V

    .line 115
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mLastCids:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mLastCids:Ljava/util/List;

    .line 118
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->getScreenResource(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mWidgetScreenCid:I

    .line 122
    :cond_1
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mWidgetScreenCid:I

    return v2
.end method

.method public getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 128
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mXmlLayoutId:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mExtensionCid:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 131
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mInstanceId:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 133
    return-void
.end method

.method public getTouchProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    return-object v0
.end method

.method public getUpdateInterval()I
    .locals 3

    .prologue
    .line 137
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->getUpdateInterval()I

    move-result v0

    .line 140
    .local v0, "updateInterval":I
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mIsSecondlyUpdatesAllowedInLpMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    if-ne v1, v2, :cond_1

    .line 143
    :cond_0
    const v1, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    .end local v0    # "updateInterval":I
    :cond_1
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onTouch(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;Ljava/lang/String;IIIII)V
    .locals 7
    .param p1, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    .param p2, "widgetKey"    # Ljava/lang/String;
    .param p3, "instanceId"    # I
    .param p4, "eventType"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "touchKey"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v6

    .line 152
    .local v6, "ctrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getViewId()I

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetClickIntent(Ljava/lang/String;III)V

    .line 157
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p4

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetTouchIntent(Ljava/lang/String;IIII)V

    goto :goto_0
.end method

.method public refreshView(Landroid/view/View;)V
    .locals 2
    .param p1, "updatedView"    # Landroid/view/View;

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v0

    .line 81
    .local v0, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->refreshView(Landroid/view/View;)V

    goto :goto_0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;
.source "V2MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;
    }
.end annotation


# instance fields
.field private final mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

.field private final mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

.field private final mCtrlExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

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

.field private mLastSubScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedMasterScreenCid:I

.field private final mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

.field private mUnlockedMasterScreenCid:I

.field private final mXmlLayoutId:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)V
    .locals 2
    .param p1, "xmlLayoutId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "controlFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .param p4, "ctrlExtension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;-><init>(Landroid/view/View;)V

    .line 27
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mUnlockedMasterScreenCid:I

    .line 28
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLockedMasterScreenCid:I

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLastSubScreens:Ljava/util/List;

    .line 64
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mXmlLayoutId:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mTouchUpdateNeededFlag:Z

    .line 68
    invoke-virtual {p3, p0, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;I)V

    .line 69
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    .line 71
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;

    invoke-virtual {p4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getIntentSender()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .line 73
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    invoke-direct {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    .line 74
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->setAefEventListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    .line 75
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mCtrlExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .line 76
    return-void
.end method

.method private getMasterResource(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)I
    .locals 7
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p4, "isTouchUpdatable"    # Z
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
            ">;Z",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mCtrlExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getCid()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mXmlLayoutId:I

    move-object v0, p1

    move-object v1, p2

    move-object v4, p3

    move-object v5, p5

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getMaster(Ljava/util/List;IILjava/util/List;Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method private offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;ZZ)V
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p3, "isTouchLockAppropriate"    # Z
    .param p4, "isTouchUpdateNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    if-nez p4, :cond_0

    if-nez p3, :cond_1

    .line 116
    :cond_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mCtrlExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getCid()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mUnlockedMasterScreenCid:I

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;-><init>(IILjava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;)V

    .line 117
    new-instance p2, Ljava/util/LinkedList;

    .end local p2    # "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 120
    .restart local p2    # "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    :cond_1
    if-eqz p3, :cond_2

    .line 121
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mCtrlExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getCid()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLockedMasterScreenCid:I

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;-><init>(IILjava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;)V

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public addMenu(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .locals 4
    .param p1, "extensionPackage"    # Ljava/lang/String;
    .param p2, "menuView"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->findMenu()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-result-object v0

    .line 134
    .local v0, "menuControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    .end local v0    # "menuControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mXmlLayoutId:I

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;ZI)V

    .line 136
    .restart local v0    # "menuControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->getInvalidateListener()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->setInvalidateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;)V

    .line 137
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->setAefEventListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->addChild(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->invalidate()V

    .line 143
    return-object v0
.end method

.method public connectToTouchProcessors()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->connectTouchProcessors(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    .line 80
    return-void
.end method

.method public findMenu()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .locals 3

    .prologue
    .line 147
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->children:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 148
    .local v0, "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    instance-of v2, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    if-eqz v2, :cond_0

    .line 149
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    .line 152
    .end local v0    # "child":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 177
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mXmlLayoutId:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 178
    return-void
.end method

.method public getTouchProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    return-object v0
.end method

.method protected popTouchUpdateNeededFlag()Z
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mTouchUpdateNeededFlag:Z

    .line 170
    .local v0, "flag":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mTouchUpdateNeededFlag:Z

    .line 171
    return v0
.end method

.method public refreshView(Landroid/view/View;)V
    .locals 2
    .param p1, "updatedView"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v0

    .line 158
    .local v0, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->refreshView(Landroid/view/View;)V

    .line 161
    :cond_0
    return-void
.end method

.method public updateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V
    .locals 1
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->updateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Z)V

    .line 84
    return-void
.end method

.method public updateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Z)V
    .locals 6
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "isRenderingForced"    # Z

    .prologue
    .line 88
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 89
    .local v2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 90
    .local v5, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 92
    .local v3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->generateBackgroundTouchControls(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;)V

    .line 95
    invoke-virtual {p0, p1, v2, v3, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->markAsClean()V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLastCids:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLastSubScreens:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLastCids:Ljava/util/List;

    .line 100
    iput-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLastSubScreens:Ljava/util/List;

    .line 101
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->getMasterResource(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mUnlockedMasterScreenCid:I

    .line 103
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->getMasterResource(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->mLockedMasterScreenCid:I

    .line 107
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz p2, :cond_3

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->isTouchLockAppropriate()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->popTouchUpdateNeededFlag()Z

    move-result v1

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;ZZ)V

    .line 110
    :cond_3
    return-void
.end method

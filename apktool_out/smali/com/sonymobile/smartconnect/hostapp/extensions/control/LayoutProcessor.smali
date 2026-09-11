.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;
.super Ljava/lang/Object;
.source "LayoutProcessor.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

.field private final mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

.field private final mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private mLastInflatedView:Landroid/view/View;

.field private mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

.field private final mMenuFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;

.field private final mNodeFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

.field private final mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

.field private final mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

.field private final mResetRunnable:Ljava/lang/Runnable;

.field private final mUpdateAndRenderRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "inflater"    # Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .param p3, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "inputProcessor"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
    .param p6, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p7, "nodeFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .param p8, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mResetRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mUpdateAndRenderRunnable:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    .line 76
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 77
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mMenuFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;

    .line 78
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    .line 81
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mNodeFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    .line 82
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 83
    iput-object p8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    return-object v0
.end method

.method private isLayoutStateValidForUpdate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastInflatedView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 217
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Ignored layout data, missing previous layout."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    if-nez v1, :cond_2

    .line 221
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "Ignored layout data, mLastMasterNode was null."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 226
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateListItems(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;[Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "listControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    .param p2, "content"    # [Landroid/os/Parcelable;

    .prologue
    .line 136
    if-eqz p2, :cond_0

    .line 137
    move-object v0, p2

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 138
    .local v1, "b":Landroid/os/Parcelable;
    check-cast v1, Landroid/os/Bundle;

    .end local v1    # "b":Landroid/os/Parcelable;
    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->updateItem(Landroid/os/Bundle;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onInvalidate(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V
    .locals 2
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mUpdateAndRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mUpdateAndRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method public onPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public onResuming(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 0
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 235
    return-void
.end method

.method public processImageOrTextUpdate(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V
    .locals 4
    .param p1, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->isLayoutStateValidForUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastInflatedView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->updateLayoutData(Landroid/view/View;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "updatedView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 203
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "Skipped the update, the referenced view was not found."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;)V

    .line 211
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->refreshView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public processLayout(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)V
    .locals 4
    .param p1, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
    .param p2, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .prologue
    .line 87
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {p2, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->setTargetScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getXmlLayoutId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getExtraLayoutData()[Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->inflateView(I[Landroid/os/Parcelable;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastInflatedView:Landroid/view/View;

    .line 92
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getXmlLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastInflatedView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mNodeFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;-><init>(ILandroid/view/View;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    .line 94
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->connectToTouchProcessors()V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->setInvalidateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;)V

    .line 96
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->updateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Z)V

    .line 98
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->setTouchListenerProvider(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;)V

    .line 100
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    .line 101
    return-void
.end method

.method public processListPositionMove(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V
    .locals 4
    .param p1, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->isLayoutStateValidForUpdate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 185
    .local v0, "eventBundle":Landroid/os/Bundle;
    const-string v3, "layout_reference"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    .local v1, "layoutReference":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .line 189
    .local v2, "listControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->setSelectedPosition(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public processUpdatedListCount(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)V
    .locals 11
    .param p1, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
    .param p2, "ctrlExt"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .prologue
    const/4 v6, 0x0

    .line 104
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->isLayoutStateValidForUpdate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 110
    .local v8, "eventBundle":Landroid/os/Bundle;
    const-string v1, "layout_reference"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 112
    .local v9, "layoutReference":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const-string v1, "List count update targeted listview with id=%d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v1, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .line 119
    .local v10, "listControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    if-eqz v10, :cond_0

    .line 120
    const-string v1, "list_count"

    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 121
    .local v4, "itemCount":I
    const-string v1, "list_item_position"

    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 123
    .local v5, "itemSelection":I
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v2

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getXmlLayoutId()I

    move-result v3

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-direct {v7, v6, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;IIILcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;)V

    .line 128
    .local v0, "adapter":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;
    invoke-virtual {v10, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->setAdapter(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V

    .line 130
    const-string v1, "list_content"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {p0, v10, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->updateListItems(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;[Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public processUpdatedListItem(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V
    .locals 7
    .param p1, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->isLayoutStateValidForUpdate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 160
    .local v0, "eventBundle":Landroid/os/Bundle;
    const-string v3, "layout_reference"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "layoutReference":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .line 163
    .local v2, "listControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    if-eqz v2, :cond_2

    .line 164
    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->updateItem(Landroid/os/Bundle;)V

    .line 165
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$3;

    invoke-direct {v4, p0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const-string v3, "Skipped list item update, targeted missing listview with id=%d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    .line 231
    return-void
.end method

.method public showMenu(Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuIntentData;)V
    .locals 6
    .param p1, "menuData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuIntentData;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->isLayoutStateValidForUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuIntentData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mMenuFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuIntentData;->getMenuItems()[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;->createOnline(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->addMenu(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    .line 151
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->mLastMasterNode:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->findMenu()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->setMenuListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;)V

    goto :goto_0
.end method

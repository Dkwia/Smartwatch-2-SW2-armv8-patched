.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.source "MasterControl.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;


# instance fields
.field private final mRenderables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeControl:I

.field private mTouchControl:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mRenderables:Ljava/util/Queue;

    .line 30
    return-void
.end method


# virtual methods
.method public findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 63
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mTouchControl:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mSwipeControl:I

    if-ne p1, v0, :cond_1

    .line 67
    .end local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object p0

    goto :goto_0
.end method

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

    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->getViewId()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v4, v3

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getTouchResourceControl(Ljava/util/List;Landroid/graphics/Rect;ZZIIIII)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mTouchControl:I

    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getSwipeResourceControl(Ljava/util/List;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mSwipeControl:I

    .line 48
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mTouchControl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mSwipeControl:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public getTouchProcessor(I)Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v0

    .line 55
    .local v0, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getTouchProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;)V
    .locals 1
    .param p1, "renderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mRenderables:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V
    .locals 1
    .param p1, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 37
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mRenderables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;->mRenderables:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

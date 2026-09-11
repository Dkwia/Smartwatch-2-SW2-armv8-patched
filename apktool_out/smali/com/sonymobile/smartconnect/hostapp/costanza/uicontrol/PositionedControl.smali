.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
.source "PositionedControl.java"


# instance fields
.field private mPositionedCid:I

.field private mShifterCid:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isUpdatable"    # Z

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;-><init>(Landroid/view/View;Z)V

    .line 19
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mPositionedCid:I

    .line 20
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mShifterCid:I

    .line 26
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->setPosition(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method private setPosition(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mX:I

    .line 31
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteTop(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mY:I

    .line 32
    return-void
.end method


# virtual methods
.method protected generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
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
    .line 40
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->generateTouchControl(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 42
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->getPositionedCid(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mPositionedCid:I

    .line 52
    invoke-virtual {p1, p2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getShifter(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mShifterCid:I

    .line 54
    :cond_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mShifterCid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public getPositionedCid()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mPositionedCid:I

    return v0
.end method

.method protected abstract getPositionedCid(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            ")I"
        }
    .end annotation
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->mY:I

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 74
    invoke-super/range {p0 .. p9}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 76
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;->setPosition(Landroid/view/View;)V

    .line 77
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;
.source "ClickProcessor.java"


# instance fields
.field private final mTouchedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->mTouchedView:Landroid/view/View;

    .line 13
    return-void
.end method

.method private isLongPressClickIndication(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;)Z
    .locals 1
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    .prologue
    .line 35
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->LongPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShortPressClickIndication(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;)Z
    .locals 2
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V
    .locals 2
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "timestamp"    # J

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->notifyTouchEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V

    .line 20
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->isShortPressClickIndication(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->notifyObjectShortClick(I)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->isLongPressClickIndication(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->mTouchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->notifyObjectLongClick(I)V

    goto :goto_0
.end method

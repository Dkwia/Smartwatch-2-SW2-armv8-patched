.class public abstract Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;
.super Ljava/lang/Object;
.source "InputDelegator.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseTouchProcessor"
.end annotation


# instance fields
.field protected mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

.field protected mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

.field private mLastSwipe:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->None:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    return-void
.end method

.method private getSwipeDirection(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 98
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Right:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Up:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    goto :goto_0

    .line 93
    :pswitch_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Down:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    goto :goto_0

    .line 95
    :pswitch_2
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Left:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTouchAction(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .locals 1
    .param p1, "touchIndicationAction"    # I

    .prologue
    .line 105
    packed-switch p1, :pswitch_data_0

    .line 111
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->None:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    goto :goto_0

    .line 107
    :pswitch_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->LongPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    goto :goto_0

    .line 108
    :pswitch_2
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    goto :goto_0

    .line 109
    :pswitch_3
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->ListItemAlignment:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    goto :goto_0

    .line 110
    :pswitch_4
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->MultiPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isAefEventListenerValid()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected notifyKeyEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;IJ)V
    .locals 1
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;
    .param p2, "keyCode"    # I
    .param p3, "timestamp"    # J

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onKey(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;IJ)V

    .line 125
    :cond_0
    return-void
.end method

.method protected notifyListItemAlignment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "listItem"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onListItemAlignment(Landroid/os/Bundle;)V

    .line 155
    :cond_0
    return-void
.end method

.method protected notifyListItemClick(Landroid/os/Bundle;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V
    .locals 1
    .param p1, "listItem"    # Landroid/os/Bundle;
    .param p2, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p3, "itemSubViewId"    # I

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onListItemClick(Landroid/os/Bundle;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V

    .line 149
    :cond_0
    return-void
.end method

.method protected notifyMenuItemClick(I)V
    .locals 1
    .param p1, "menuItemId"    # I

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onMenuItemClick(I)V

    .line 161
    :cond_0
    return-void
.end method

.method protected notifyObjectLongClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onObjectLongClick(I)V

    .line 143
    :cond_0
    return-void
.end method

.method protected notifyObjectShortClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onObjectShortClick(I)V

    .line 137
    :cond_0
    return-void
.end method

.method protected notifySwipeEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;)V
    .locals 1
    .param p1, "direction"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onSwipe(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected notifyTouchEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V
    .locals 6
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "timestamp"    # J

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->isAefEventListenerValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;->onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V

    .line 119
    :cond_0
    return-void
.end method

.method public onSwipe(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;)V
    .locals 0
    .param p1, "swipeIndication"    # Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mLastSwipe:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;

    .line 52
    return-void
.end method

.method protected abstract onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V
.end method

.method public onTouch(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V
    .locals 6
    .param p1, "touchIndication"    # Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getAction()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->getTouchAction(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    move-result-object v1

    .line 58
    .local v1, "action":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->None:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne v1, v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getKey()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 61
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 62
    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mLastSwipe:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mLastSwipe:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mLastSwipe:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;->getDirection()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->getSwipeDirection(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->notifySwipeEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;)V

    .line 67
    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mLastSwipe:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getTimestamp()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ignored swipe press."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 80
    :cond_5
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-eq v1, v0, :cond_6

    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->LongPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne v1, v0, :cond_7

    .line 81
    :cond_6
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    .line 84
    :cond_7
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getTimestamp()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V

    goto :goto_0
.end method

.method public setAefEventListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V
    .locals 0
    .param p1, "aefEventListener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;->mAefEventListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .line 47
    return-void
.end method

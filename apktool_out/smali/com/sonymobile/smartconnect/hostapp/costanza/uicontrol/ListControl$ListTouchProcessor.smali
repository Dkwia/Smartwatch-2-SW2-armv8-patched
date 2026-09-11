.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;
.source "ListControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListTouchProcessor"
.end annotation


# instance fields
.field protected mLastShortPressX:I

.field protected mLastShortPressY:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)V

    return-void
.end method

.method private findTopClickableViewIdByCoordinates(Landroid/view/View;II)I
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 102
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v0

    .line 103
    .local v0, "absLeft":I
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteTop(Landroid/view/View;)I

    move-result v1

    .line 104
    .local v1, "absTop":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-direct {v3, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .local v3, "r":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    const-string v7, "Testing if %d,%d is within %s."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    const/4 v5, -0x1

    .line 112
    .local v5, "topViewId":I
    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 115
    const-string v7, "%d,%d is within %s with id %d."

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 121
    :cond_3
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    move-object v6, p1

    .line 122
    check-cast v6, Landroid/view/ViewGroup;

    .line 123
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 124
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->findTopClickableViewIdByCoordinates(Landroid/view/View;II)I

    move-result v4

    .line 125
    .local v4, "subViewId":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 126
    move v5, v4

    .line 123
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "i":I
    .end local v4    # "subViewId":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_5
    return v5
.end method

.method private onListItemPress(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V
    .locals 5
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p2, "position"    # I

    .prologue
    .line 90
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getItem(I)Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "listItem":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressX:I

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressY:I

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->findTopClickableViewIdByCoordinates(Landroid/view/View;II)I

    move-result v1

    .line 97
    .local v1, "touchedSubViewId":I
    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->notifyListItemClick(Landroid/os/Bundle;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V

    .line 99
    .end local v1    # "touchedSubViewId":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V
    .locals 8
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "timestamp"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne p1, v0, :cond_0

    .line 45
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressX:I

    .line 46
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressY:I

    .line 50
    :cond_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$costanza$uicontrol$AefEventListener$TouchAction:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->ListItemAlignment:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne p1, v0, :cond_3

    .line 66
    move v7, p3

    .line 67
    .local v7, "position":I
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->None:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getItem(I)Landroid/os/Bundle;

    move-result-object v6

    .line 70
    .local v6, "itemBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 71
    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->notifyListItemAlignment(Landroid/os/Bundle;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->setSelection(I)Z

    .line 87
    .end local v6    # "itemBundle":Landroid/os/Bundle;
    .end local v7    # "position":I
    :cond_2
    :goto_1
    return-void

    .line 54
    :pswitch_0
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressX:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressY:I

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->notifyTouchEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressX:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastShortPressY:I

    move-object v0, p0

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->notifyTouchEvent(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V

    goto :goto_0

    .line 78
    :cond_3
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne p1, v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne v0, v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    invoke-direct {p0, v0, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->onListItemPress(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->LongPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    if-ne v0, v1, :cond_2

    .line 84
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->mLastPressState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    invoke-direct {p0, v0, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->onListItemPress(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V

    goto :goto_1

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

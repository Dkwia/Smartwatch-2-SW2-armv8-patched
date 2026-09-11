.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;
.super Ljava/lang/Object;
.source "AefEventAdaptor.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;


# instance fields
.field private final mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;)V
    .locals 0
    .param p1, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    .line 13
    return-void
.end method


# virtual methods
.method public onKey(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;IJ)V
    .locals 3
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;
    .param p2, "keyCode"    # I
    .param p3, "timestamp"    # J

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendControlKeyEventIntent(IIJ)V

    .line 40
    return-void
.end method

.method public onListItemAlignment(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "listItem"    # Landroid/os/Bundle;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendControlListItemSelectedIntent(Landroid/os/Bundle;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/os/Bundle;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V
    .locals 2
    .param p1, "listItem"    # Landroid/os/Bundle;
    .param p2, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p3, "itemSubViewId"    # I

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendControlListItemClickIntent(Landroid/os/Bundle;II)V

    .line 48
    :cond_0
    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 1
    .param p1, "menuItemId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendMenuItemSelectedIntent(I)V

    .line 53
    return-void
.end method

.method public onObjectLongClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendObjectLongClickIntent(I)V

    .line 23
    return-void
.end method

.method public onObjectShortClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendObjectShortClickIntent(I)V

    .line 18
    return-void
.end method

.method public onSwipe(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;)V
    .locals 2
    .param p1, "direction"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendControlSwipeEventIntent(I)V

    .line 34
    return-void
.end method

.method public onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V
    .locals 6
    .param p1, "action"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "timestamp"    # J

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->ordinal()I

    move-result v1

    move-wide v2, p4

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendControlTouchEventIntent(IJII)V

    .line 29
    return-void
.end method

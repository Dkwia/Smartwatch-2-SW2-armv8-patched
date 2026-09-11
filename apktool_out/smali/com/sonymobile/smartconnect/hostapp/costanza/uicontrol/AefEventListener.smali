.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;
.super Ljava/lang/Object;
.source "AefEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    }
.end annotation


# virtual methods
.method public abstract onKey(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$KeyAction;IJ)V
.end method

.method public abstract onListItemAlignment(Landroid/os/Bundle;)V
.end method

.method public abstract onListItemClick(Landroid/os/Bundle;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;I)V
.end method

.method public abstract onMenuItemClick(I)V
.end method

.method public abstract onObjectLongClick(I)V
.end method

.method public abstract onObjectShortClick(I)V
.end method

.method public abstract onSwipe(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;)V
.end method

.method public abstract onTouch(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;IIJ)V
.end method

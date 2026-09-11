.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;
.super Ljava/lang/Object;
.source "WatchFaceLongPressListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V
    .locals 0
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;->pickUp(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;->pickUp(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public pickUp(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 23
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 24
    .local v0, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 26
    const/4 v1, 0x1

    return v1
.end method

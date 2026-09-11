.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;
.super Ljava/lang/Object;
.source "WidgetLongPressListener.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;->pickUp(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public pickUp(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 19
    instance-of v2, p1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 21
    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->fromWidgetView(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    .line 23
    .local v0, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    invoke-virtual {p1, v4, v0, p1, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 31
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 25
    .end local v0    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    :cond_0
    const v2, 0x7f0d0053

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .line 26
    .local v1, "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->fromWidgetView(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Landroid/view/View$DragShadowBuilder;

    move-result-object v0

    .line 29
    .restart local v0    # "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    invoke-virtual {p1, v4, v0, v1, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0
.end method

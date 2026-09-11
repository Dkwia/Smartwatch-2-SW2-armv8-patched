.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "WidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetDragShadowBuilder"
.end annotation


# instance fields
.field private shadow:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 148
    return-void
.end method

.method public static fromWidgetView(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Landroid/view/View$DragShadowBuilder;
    .locals 6
    .param p0, "widgetView"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .prologue
    const/4 v5, 0x0

    .line 151
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;-><init>()V

    .line 152
    .local v0, "builder":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPreviewImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 154
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Drawable from id is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_0
    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    return-object v0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 173
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 175
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 176
    iget v0, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 177
    return-void
.end method

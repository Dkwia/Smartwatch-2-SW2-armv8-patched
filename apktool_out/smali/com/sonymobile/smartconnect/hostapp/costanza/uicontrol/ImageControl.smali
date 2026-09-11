.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;
.source "ImageControl.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "isUpdatable"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;-><init>(Landroid/view/View;Z)V

    .line 34
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->extractImage(Landroid/widget/ImageView;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->mLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 36
    return-void
.end method

.method private extractImage(Landroid/widget/ImageView;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .locals 12
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    if-nez v6, :cond_3

    .line 61
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    const-string v6, "Skipped too small ImageView (w=%d,h=%d)."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_1
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 104
    :cond_2
    :goto_0
    return-object v4

    .line 68
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 70
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->isImageViewEmpty(Landroid/widget/ImageView;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "Detected empty image view (id: %d, size: %dx%d), ignored it."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_4
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-eqz v6, :cond_7

    .line 76
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 77
    .local v4, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v5

    .line 81
    .local v5, "rect":Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getCompressedData()[B

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 86
    :cond_6
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getColorConfig(Landroid/content/Context;)Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    .end local v4    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_7
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-static {v6, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/16 v6, 0xa0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 98
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 101
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 102
    .restart local v4    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 88
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "Unsupported MimeType format"

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 90
    :cond_8
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    goto/16 :goto_0
.end method

.method private isImageViewEmpty(Landroid/widget/ImageView;)Z
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v6, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v6

    const/16 v7, 0xff

    if-ne v6, v7, :cond_2

    :cond_0
    move v1, v5

    .line 113
    .local v1, "isBackgroundNullOrFullyTransparent":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 114
    .local v3, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    if-eqz v3, :cond_1

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-ne v3, v6, :cond_3

    :cond_1
    move v2, v5

    .line 117
    .local v2, "isLayoutDataEmpty":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v5

    .end local v1    # "isBackgroundNullOrFullyTransparent":Z
    .end local v2    # "isLayoutDataEmpty":Z
    .end local v3    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_2
    move v1, v4

    .line 109
    goto :goto_0

    .restart local v1    # "isBackgroundNullOrFullyTransparent":Z
    .restart local v3    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_3
    move v2, v4

    .line 114
    goto :goto_1

    .restart local v2    # "isLayoutDataEmpty":Z
    :cond_4
    move v5, v4

    .line 117
    goto :goto_2
.end method


# virtual methods
.method protected getPositionedCid(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)I
    .locals 2
    .param p2, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
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

    .prologue
    .line 41
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->mLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->getTargetColorMode()Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    return v0
.end method

.method public refreshView(Landroid/view/View;)V
    .locals 5
    .param p1, "updatedView"    # Landroid/view/View;

    .prologue
    .line 47
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    .line 50
    .local v2, "imageView":Landroid/widget/ImageView;
    const-string v3, "Refreshed image view."

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->invalidate(Landroid/view/View;)V

    .line 52
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->extractImage(Landroid/widget/ImageView;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ImageControl;->mLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/ClassCastException;
    const-string v3, "Failed refreshing view, was not an ImageView."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

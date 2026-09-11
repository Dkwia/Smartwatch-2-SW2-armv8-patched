.class public Lcom/sonymobile/smartconnect/hostapp/util/TransparencyChecker;
.super Ljava/lang/Object;
.source "TransparencyChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDrawableOpaque(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 52
    instance-of v4, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_0

    move-object v2, p0

    .line 53
    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 54
    .local v2, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    const/16 v0, 0x18

    .line 55
    .local v0, "ALPHA_BIT_INDEX":I
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    ushr-int/lit8 v1, v4, 0x18

    .line 56
    .local v1, "alphaChannel":I
    const/16 v4, 0xff

    if-ne v1, v4, :cond_0

    const/4 v3, 0x1

    .line 59
    .end local v0    # "ALPHA_BIT_INDEX":I
    .end local v1    # "alphaChannel":I
    .end local v2    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    return v3
.end method

.method public static isViewOpaque(Landroid/view/View;)Z
    .locals 11
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/smartconnect/hostapp/util/TransparencyChecker;->isDrawableOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    .line 19
    .local v5, "isOpaque":Z
    if-eqz v5, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v7

    .line 23
    :cond_1
    instance-of v9, p0, Landroid/widget/ImageView;

    if-eqz v9, :cond_2

    move-object v3, p0

    .line 24
    check-cast v3, Landroid/widget/ImageView;

    .line 25
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0

    .line 33
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_2
    instance-of v9, p0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_4

    move-object v6, p0

    .line 34
    check-cast v6, Landroid/view/ViewGroup;

    .line 35
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 36
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 41
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/util/TransparencyChecker;->isViewOpaque(Landroid/view/View;)Z

    move-result v4

    .line 42
    .local v4, "isChildViewOpaque":Z
    if-nez v4, :cond_0

    .line 35
    .end local v4    # "isChildViewOpaque":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    :cond_4
    move v7, v8

    .line 48
    goto :goto_0
.end method

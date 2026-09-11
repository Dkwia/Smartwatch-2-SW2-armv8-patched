.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;
.super Ljava/lang/Object;
.source "TextLayoutDataExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractTextLayoutData(Landroid/widget/TextView;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .locals 12
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/16 v11, 0xa0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    .line 28
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 30
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    if-nez v5, :cond_2

    .line 31
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    const-string v5, "Skipped too small TextView (w=%d,h=%d)."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_1
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 53
    :goto_0
    return-object v2

    .line 37
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    const-string v5, "Creating text bitmap (w=%d,h=%d,text=%s)."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 44
    .local v3, "textBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 46
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 50
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 51
    .local v2, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

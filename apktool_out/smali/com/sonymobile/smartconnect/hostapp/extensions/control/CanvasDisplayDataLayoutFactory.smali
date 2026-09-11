.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;
.super Ljava/lang/Object;
.source "CanvasDisplayDataLayoutFactory.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastPackage:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mScreenBitmap:Landroid/graphics/Bitmap;

.field private final mScreenCanvas:Landroid/graphics/Canvas;

.field private final mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenTranslation"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 50
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceWidth:I

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenCanvas:Landroid/graphics/Canvas;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 61
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public assembleLayout(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;
    .locals 6
    .param p1, "displayData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->drawDisplayDataOnCanvas(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 68
    .local v1, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getTargetX(I)I

    move-result v2

    .line 71
    .local v2, "targetX":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getTargetY(I)I

    move-result v3

    .line 72
    .local v3, "targetY":I
    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setOffset(II)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->layoutBitmap(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;

    move-result-object v4

    return-object v4
.end method

.method protected drawDisplayDataOnCanvas(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "displayData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;

    .prologue
    const/4 v5, 0x1

    .line 77
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mLastPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mLastPackage:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 84
    :cond_0
    iget-boolean v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mResizeToFullScreen:Z

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceWidth:I

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceHeight:I

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Scaled up bitmap to fullscreen."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->isSameSize(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetWidth:I

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v3, v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetHeight:I

    invoke-static {v1, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Scaled up screen bitmap to target screen."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 103
    :cond_2
    :goto_0
    return-object v0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected layoutBitmap(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;
    .locals 8
    .param p1, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .prologue
    const v7, 0x7f0d0003

    const/4 v6, 0x0

    .line 108
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 109
    .local v3, "view":Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v4, v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetWidth:I

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v5, v5, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetHeight:I

    invoke-direct {v2, v4, v5, v6, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 111
    .local v2, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "bitmapView":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getXOffset()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setLeft(I)V

    .line 117
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getYOffset()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTop(I)V

    .line 118
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getXOffset()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getWidth(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setRight(I)V

    .line 119
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getYOffset()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getHeight(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setBottom(I)V

    .line 121
    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 124
    .local v1, "layoutValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;>;"
    invoke-virtual {v1, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 127
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;-><init>(ILandroid/util/SparseArray;Landroid/view/View;)V

    return-object v4
.end method

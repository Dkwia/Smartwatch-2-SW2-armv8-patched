.class public Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;
.super Ljava/lang/Object;
.source "LayoutData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapTransformer"
.end annotation


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRightSizedBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$Config;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mRightSizedBitmap:Landroid/graphics/Bitmap;

    .line 50
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mRightSizedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mCanvas:Landroid/graphics/Canvas;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public transform(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mRightSizedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 58
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->mRightSizedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

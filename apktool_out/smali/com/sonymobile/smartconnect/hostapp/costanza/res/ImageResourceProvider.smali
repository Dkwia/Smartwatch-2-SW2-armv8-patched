.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.source "ImageResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$1;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    }
.end annotation


# static fields
.field private static final DECIMAL_PRECISION_SHIFTER:I = 0xe

.field private static final LUMA_BLUE_FRACTION:I = 0x74b

.field private static final LUMA_GREEN_FRACTION:I = 0x2591

.field private static final LUMA_RED_FRACTION:I = 0x1322


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected final mCostanzaHeight:I

.field protected final mCostanzaWidth:I

.field private mDefaultLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

.field private final mDeflateBuffer:[B

.field private final mDeflater:Ljava/util/zip/Deflater;

.field private final mMaxBytesPerPixel:I

.field private final mMaxBytesPerScreen:I

.field private final mPixelBufferArray:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;Landroid/content/Context;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .param p5, "bufferPool"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 67
    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflater:Ljava/util/zip/Deflater;

    .line 508
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    .line 509
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mCostanzaHeight:I

    .line 510
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mCostanzaWidth:I

    .line 512
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mMaxBytesPerPixel:I

    .line 513
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mCostanzaHeight:I

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mCostanzaWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mMaxBytesPerPixel:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mMaxBytesPerScreen:I

    .line 514
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->PixelBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mMaxBytesPerScreen:I

    invoke-virtual {p5, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;->getBuffer(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mPixelBufferArray:[B

    .line 515
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->DeflateBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mMaxBytesPerScreen:I

    invoke-virtual {p5, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;->getBuffer(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflateBuffer:[B

    .line 516
    return-void
.end method

.method private static ensure565or8888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 709
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    .line 711
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 713
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object p0
.end method

.method private getDefaultEmptyImage()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 855
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDefaultLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-nez v1, :cond_0

    .line 856
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 857
    .local v0, "emptyLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 858
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDefaultLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 860
    .end local v0    # "emptyLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDefaultLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    return-object v1
.end method

.method private getImageLayoutData(Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .locals 7
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imageConversion"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;
    .param p5, "useEmptyOnError"    # Z

    .prologue
    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3

    .line 616
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 619
    .local v3, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setUri(Landroid/net/Uri;)V

    .line 620
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getCompressionFormat(Landroid/content/Context;)Landroid/graphics/Bitmap$CompressFormat;

    .line 624
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v3, p2, p3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 625
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 627
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$costanza$res$ImageResourceProvider$ImageFilter:[I

    invoke-virtual {p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 641
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Unknown image conversion"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 645
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 661
    .end local v3    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :goto_1
    return-object v3

    .line 633
    .restart local v3    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Desaturating bitmap"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 634
    :cond_1
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->deSaturateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 635
    goto :goto_0

    .line 637
    :pswitch_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Creating silhouette version of bitmap"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 638
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->silhouetteBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 639
    goto :goto_0

    .line 649
    :catch_0
    move-exception v2

    .line 650
    .local v2, "ex":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    .line 654
    .end local v2    # "ex":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
    .end local v3    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_3
    if-eqz p5, :cond_5

    .line 655
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 656
    .local v1, "emptyLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 657
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Replaced invalid image %s with empty image."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v3, v1

    .line 658
    goto :goto_1

    .line 661
    .end local v1    # "emptyLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_5
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    goto :goto_1

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getImageOrDefault(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 2
    .param p2, "imageCid"    # I
    .param p3, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .param p4, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;I",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getDefaultEmptyImage()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    .line 852
    :cond_0
    return-void
.end method

.method private relayoutView(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;)V
    .locals 7
    .param p1, "view"    # Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x80000000

    .line 835
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 836
    .local v2, "viewParent":Landroid/view/ViewParent;
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 837
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 838
    .local v1, "parentViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 840
    .local v3, "widthMS":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 842
    .local v0, "heightMS":I
    invoke-virtual {p1, v3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->measure(II)V

    .line 843
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->layout(IIII)V

    .line 845
    .end local v0    # "heightMS":I
    .end local v1    # "parentViewGroup":Landroid/view/ViewGroup;
    .end local v3    # "widthMS":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDeflatedImage(Ljava/util/List;ILandroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 10
    .param p2, "cid"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;I",
            "Landroid/graphics/Bitmap;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    const/4 v5, 0x0

    .line 672
    invoke-static {p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->ensure565or8888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 674
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mPixelBufferArray:[B

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 675
    :cond_0
    const/4 v1, -0x1

    .line 692
    :goto_0
    return v1

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mPixelBufferArray:[B

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v1, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 679
    .local v2, "pixelByteBuffer":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Transparent:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    if-ne p4, v1, :cond_2

    .line 680
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mPixelBufferArray:[B

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v1, v5, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 684
    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 686
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    move-object v1, p0

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap$Config;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 689
    .local v0, "resourceHasher":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflateBuffer:[B

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflater:Ljava/util/zip/Deflater;

    move-object v4, p3

    move-object v5, v2

    move v8, p2

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;[BLjava/util/zip/Deflater;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 692
    .local v3, "resourceCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    invoke-virtual {p0, p1, v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->reuseResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v1

    goto :goto_0

    .line 682
    .end local v0    # "resourceHasher":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;
    .end local v3    # "resourceCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    :cond_2
    invoke-virtual {p3, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    goto :goto_1
.end method

.method protected getDeflatedImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getDeflatedImage(Ljava/util/List;ILandroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    return v0
.end method

.method public getImage(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 1
    .param p2, "cid"    # I
    .param p3, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .param p4, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;I",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    if-eqz p3, :cond_0

    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-ne p3, v0, :cond_1

    .line 543
    :cond_0
    const/4 v0, -0x1

    .line 545
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getDeflatedImage(Ljava/util/List;ILandroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    goto :goto_0
.end method

.method public getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 1
    .param p2, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .param p3, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-ne p2, v0, :cond_1

    .line 534
    :cond_0
    const/4 v0, -0x1

    .line 537
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getDeflatedImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    goto :goto_0
.end method

.method public getImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 7
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "imageConversion"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;
    .param p6, "useEmptyOnError"    # Z
    .param p7, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;",
            "Z",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    if-nez p2, :cond_0

    .line 553
    const/4 v0, -0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    .line 556
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImageLayoutData(Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v6

    .line 558
    .local v6, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :try_start_0
    invoke-virtual {p0, p1, v6, p7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 560
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->recycle()V

    throw v0
.end method

.method public getImageRange(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 32
    .param p2, "timeControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;
    .param p3, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;->getTimeView()Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    move-result-object v27

    .line 720
    .local v27, "view":Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v10

    .line 722
    .local v10, "cidCount":I
    new-instance v17, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 723
    .local v17, "hasher":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mResourceDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$UiControlHierarchyHasher;->hash(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)[B

    move-result-object v16

    .line 724
    .local v16, "hash":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->findCid([B)I

    move-result v24

    .line 725
    .local v24, "rangeCid":I
    const/16 v28, -0x1

    move/from16 v0, v24

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-object/from16 v28, v0

    add-int/lit8 v29, v10, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getCidRange(I)I

    move-result v24

    .line 727
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->cacheCid(I[B)V

    .line 731
    :cond_0
    add-int/lit8 v12, v24, 0x1

    .line 732
    .local v12, "cidRangeStart":I
    add-int v11, v12, v10

    .line 733
    .local v11, "cidRangeEnd":I
    move/from16 v20, v12

    .line 735
    .local v20, "imageCid":I
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 737
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v0, v13, Landroid/graphics/drawable/LevelListDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v23, v13

    .line 738
    check-cast v23, Landroid/graphics/drawable/LevelListDrawable;

    .line 739
    .local v23, "levelList":Landroid/graphics/drawable/LevelListDrawable;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 740
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 741
    .local v8, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v29

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 743
    .local v7, "b":Landroid/graphics/Bitmap;
    new-instance v9, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    invoke-direct {v9, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;-><init>(Landroid/graphics/Bitmap;)V

    .line 745
    .local v9, "bitmapTransformer":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v11, :cond_3

    .line 746
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LevelListDrawable;->selectDrawable(I)Z

    .line 747
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/LevelListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 748
    .local v15, "frameDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v0, v15, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 749
    new-instance v21, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;)V

    .line 750
    .local v21, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .end local v15    # "frameDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 751
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v29

    sget-object v30, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImageOrDefault(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 755
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 756
    const-string v28, "Got image in range idx:%d, cid:0x%08x, view_size:%dx%d."

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    :cond_1
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 759
    .end local v21    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .restart local v15    # "frameDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 760
    const-string v28, "Got empty drawable from levellist, assuming end reached prematurely."

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 766
    .end local v15    # "frameDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "bitmapTransformer":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;
    .end local v18    # "i":I
    .end local v23    # "levelList":Landroid/graphics/drawable/LevelListDrawable;
    :cond_4
    :goto_1
    move/from16 v0, v20

    if-ge v0, v11, :cond_9

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getDefaultEmptyImage()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v28

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    .line 821
    const-string v28, "Added default empty image resource for cid:0x%08x."

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 819
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 769
    :cond_5
    instance-of v0, v13, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move-object v8, v13

    .line 771
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 772
    .restart local v8    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v29

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 774
    .restart local v7    # "b":Landroid/graphics/Bitmap;
    new-instance v9, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    invoke-direct {v9, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;-><init>(Landroid/graphics/Bitmap;)V

    .line 776
    .restart local v9    # "bitmapTransformer":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;
    const/high16 v28, 0x43b40000    # 360.0f

    int-to-float v0, v10

    move/from16 v29, v0

    div-float v5, v28, v29

    .line 777
    .local v5, "angleStep":F
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v11, :cond_4

    .line 778
    const-string v28, "Getting rotated image in range idx:%d, cid:0x%08x, view_size:%dx%d, rotation=%f."

    const/16 v29, 0x5

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x4

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v5

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    new-instance v21, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-object/from16 v0, v21

    invoke-direct {v0, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;)V

    .line 781
    .restart local v21    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v5

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setRotation(F)V

    .line 782
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 783
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v29

    sget-object v30, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 786
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImageOrDefault(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 787
    const-string v28, "Got image in range idx:%d, cid:0x%08x, view_size:%dx%d."

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 790
    .end local v5    # "angleStep":F
    .end local v7    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "bitmapTransformer":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;
    .end local v18    # "i":I
    .end local v21    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTextResArray()[Ljava/lang/CharSequence;

    move-result-object v26

    .line 791
    .local v26, "textResArray":[Ljava/lang/CharSequence;
    if-eqz v26, :cond_8

    .line 792
    new-instance v14, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;

    invoke-direct {v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;-><init>()V

    .line 794
    .local v14, "extractor":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;
    move-object/from16 v6, v26

    .local v6, "arr$":[Ljava/lang/CharSequence;
    array-length v0, v6

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    aget-object v25, v6, v19

    .line 795
    .local v25, "text":Ljava/lang/CharSequence;
    move/from16 v0, v20

    if-lt v0, v11, :cond_7

    .line 796
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 797
    const-string v28, "Too many text resources for type, ignoring the rest, %s."

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v25, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 802
    :cond_7
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->relayoutView(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;)V

    .line 805
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;->extractTextLayoutData(Landroid/widget/TextView;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v21

    .line 806
    .restart local v21    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v29

    sget-object v30, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move-object/from16 v0, v21

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImageOrDefault(Ljava/util/List;ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 809
    const-string v28, "Got text-image %s, cid:0x%08x view_size:%dx%d."

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v25, v29, v30

    const/16 v30, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getWidth()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    invoke-virtual/range {v27 .. v27}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getHeight()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    add-int/lit8 v20, v20, 0x1

    .line 794
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 814
    .end local v6    # "arr$":[Ljava/lang/CharSequence;
    .end local v14    # "extractor":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;
    .end local v19    # "i$":I
    .end local v21    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .end local v22    # "len$":I
    .end local v25    # "text":Ljava/lang/CharSequence;
    :cond_8
    const-string v28, "Missing text resources."

    invoke-static/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 824
    .end local v26    # "textResArray":[Ljava/lang/CharSequence;
    :cond_9
    return v12
.end method

.method public getNewImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 14
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "imageConversion"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;
    .param p6, "useEmptyOnError"    # Z
    .param p7, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;",
            "Z",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 568
    .local p1, "newResource":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    if-nez p2, :cond_0

    .line 569
    const/4 v2, -0x1

    .line 596
    :goto_0
    return v2

    :cond_0
    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 572
    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImageLayoutData(Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v13

    .line 574
    .local v13, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    if-eqz v13, :cond_1

    :try_start_0
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v13, v2, :cond_2

    .line 575
    :cond_1
    const/4 v2, -0x1

    .line 598
    :goto_1
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->recycle()V

    goto :goto_0

    .line 577
    :cond_2
    const/4 v5, -0x1

    .line 578
    .local v5, "cid":I
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 580
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->ensure565or8888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 582
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mPixelBufferArray:[B

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    invoke-static {v2, v4, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 583
    .local v3, "pixelByteBuffer":Ljava/nio/ByteBuffer;
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Transparent:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-object/from16 v0, p7

    if-ne v0, v2, :cond_3

    .line 584
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mPixelBufferArray:[B

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v2, v4, v8, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 588
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 590
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    move-object v2, p0

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap$Config;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 593
    .local v1, "resourceHasher":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;

    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflateBuffer:[B

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflater:Ljava/util/zip/Deflater;

    move-object v8, v3

    move v11, v5

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;[BLjava/util/zip/Deflater;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 596
    .local v6, "resourceCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    invoke-virtual {p0, p1, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->cacheNewResource(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;)I

    move-result v2

    goto :goto_1

    .line 586
    .end local v1    # "resourceHasher":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;
    .end local v6    # "resourceCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
    :cond_3
    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 598
    .end local v3    # "pixelByteBuffer":Ljava/nio/ByteBuffer;
    .end local v5    # "cid":I
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->recycle()V

    throw v2
.end method

.method public getTextLineImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    if-nez p2, :cond_0

    .line 606
    const/4 v0, -0x1

    .line 608
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getDeflatedImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    goto :goto_0
.end method

.method public getUncachedDeflatedImage(ILandroid/graphics/Bitmap;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    .locals 5
    .param p1, "cid"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 697
    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->ensure565or8888(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 699
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mPixelBufferArray:[B

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 700
    .local v0, "pixelByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 702
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflateBuffer:[B

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->mDeflater:Ljava/util/zip/Deflater;

    invoke-direct {v1, p2, v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;[BLjava/util/zip/Deflater;)V

    .line 705
    .local v1, "resourceCreator":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;
    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->createDeflatedImage(ILandroid/graphics/Bitmap;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    move-result-object v2

    return-object v2
.end method

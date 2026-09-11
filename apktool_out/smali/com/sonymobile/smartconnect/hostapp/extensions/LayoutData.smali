.class public Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
.super Ljava/lang/Object;
.source "LayoutData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$1;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;
    }
.end annotation


# static fields
.field public static EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mBitmapTransformer:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCompressedData:[B

.field private mPath:Ljava/lang/String;

.field private mRawData:Landroid/graphics/Bitmap;

.field private mResourceId:I

.field private mRotation:F

.field private mScaleOption:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

.field private mScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

.field private mSizeRect:Landroid/graphics/Rect;

.field private mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

.field private mTargetSizeRect:Landroid/graphics/Rect;

.field private mUri:Landroid/net/Uri;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->EmptyLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 174
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWNSCALE_KEEPING_ASPECT_RATIO:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScaleOption:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .line 183
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;)V
    .locals 1
    .param p1, "bitmapTransformer"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 174
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWNSCALE_KEEPING_ASPECT_RATIO:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScaleOption:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .line 186
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapTransformer:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    .line 187
    return-void
.end method

.method private copyBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 366
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, p3, :cond_1

    .line 367
    :cond_0
    int-to-float v3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 368
    .local v1, "sx":F
    int-to-float v3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 369
    .local v2, "sy":F
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 372
    .end local v1    # "sx":F
    .end local v2    # "sy":F
    :cond_1
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 373
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRotation:F

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 376
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    const-string v3, "Creating bitmap %dx%d from %dx%d, rotation=%f."

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRotation:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapTransformer:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    if-nez v3, :cond_4

    .line 382
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-direct {v3, p2, p3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;-><init>(IILandroid/graphics/Bitmap$Config;)V

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapTransformer:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    .line 384
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapTransformer:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;

    invoke-virtual {v3, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$BitmapTransformer;->transform(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private decodeBitmap(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "decodeOptions"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x0

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 391
    .local v2, "res":Landroid/content/res/Resources;
    :try_start_0
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$LayoutData$DataSourceType:[I

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getType()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 413
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported image source type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getType()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 420
    :cond_0
    :goto_0
    return-object v3

    .line 394
    :pswitch_0
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mResourceId:I

    invoke-static {v2, v4, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 399
    .local v1, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v1, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 403
    .end local v1    # "is":Ljava/io/InputStream;
    :pswitch_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 404
    .restart local v1    # "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v1, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 407
    .end local v1    # "is":Ljava/io/InputStream;
    :pswitch_3
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mPath:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 410
    :pswitch_4
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRawData:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScaleOption:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Landroid/content/Context;IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scaleOption"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .prologue
    .line 287
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    .line 288
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 360
    :goto_0
    return-object v11

    .line 291
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmapOptions(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 295
    .local v4, "decodedOptions":Landroid/graphics/BitmapFactory$Options;
    if-lez p2, :cond_1

    if-gtz p3, :cond_3

    .line 296
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "Invalid bitmap size: %d, %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_2
    const/4 v11, 0x1

    const/4 v12, 0x1

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_0

    .line 301
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getType()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    move-result-object v11

    sget-object v12, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->RAW:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    if-ne v11, v12, :cond_5

    .line 302
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRawData:Landroid/graphics/Bitmap;

    iput-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 325
    :goto_1
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v11, :cond_8

    .line 326
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "Created empty bitmap due to failure (w:%d,h:%d)."

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_4
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 328
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 305
    :cond_5
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 307
    .local v3, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "Getting bitmap at expected size: %d, %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_6
    :try_start_0
    iget-object v11, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineCompressionFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 312
    .local v2, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    invoke-static {v2, v11}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineColorConfig(Landroid/graphics/Bitmap$CompressFormat;[B)Landroid/graphics/Bitmap$Config;

    move-result-object v11

    iput-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 315
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v4, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v11

    iput v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 318
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->decodeBitmap(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    .end local v2    # "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    :catch_0
    move-exception v6

    .line 320
    .local v6, "e":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "Unsupported MimeType format: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_7
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 331
    .end local v3    # "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "e":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
    :cond_8
    sget-object v11, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_b

    .line 332
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-ne v11, v0, :cond_9

    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-ne v11, v0, :cond_9

    iget v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRotation:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_a

    .line 334
    :cond_9
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v11, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->copyBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 360
    :cond_a
    :goto_2
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 336
    :cond_b
    sget-object v11, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWNSCALE_KEEPING_ASPECT_RATIO:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_e

    .line 337
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-gt v11, v0, :cond_c

    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-le v11, v0, :cond_a

    .line 338
    :cond_c
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int v10, v11, p2

    .line 339
    .local v10, "sizeDiffWidth":I
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int v9, v11, p3

    .line 341
    .local v9, "sizeDiffHeight":I
    if-le v10, v9, :cond_d

    .line 342
    move/from16 v0, p2

    int-to-float v11, v0

    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v12, v12

    div-float v5, v11, v12

    .line 347
    .local v5, "diffRatio":F
    :goto_3
    const/4 v11, 0x1

    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v5

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 348
    .local v8, "newWidth":I
    const/4 v11, 0x1

    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v5

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 349
    .local v7, "newHeight":I
    const-string v11, "Downscaling: diffRatio=%f, width:%d=>%d(%d), height:%d=>%d(%d)"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget v14, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget v14, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v11, v8, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->copyBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 344
    .end local v5    # "diffRatio":F
    .end local v7    # "newHeight":I
    .end local v8    # "newWidth":I
    :cond_d
    move/from16 v0, p3

    int-to-float v11, v0

    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v12, v12

    div-float v5, v11, v12

    .restart local v5    # "diffRatio":F
    goto :goto_3

    .line 354
    .end local v5    # "diffRatio":F
    .end local v9    # "sizeDiffHeight":I
    .end local v10    # "sizeDiffWidth":I
    :cond_e
    sget-object v11, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWN_SAMPLE_AND_CROP:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_a

    .line 355
    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-gt v11, v0, :cond_f

    iget v11, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-le v11, v0, :cond_a

    .line 356
    :cond_f
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v11, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->copyBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_2
.end method

.method private getBitmapOptions(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;
    .locals 8
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 441
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v4, :cond_0

    .line 442
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 443
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 445
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 446
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 447
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 448
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 495
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v4

    .line 451
    :cond_1
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$LayoutData$DataSourceType:[I

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 459
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mResourceId:I

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, "ne":Landroid/content/res/Resources$NotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 464
    const-string v4, "Failed to decode resource."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    .end local v2    # "ne":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRawData:Landroid/graphics/Bitmap;

    .line 470
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 471
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    .line 453
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :pswitch_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v7, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 476
    :pswitch_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 479
    :catch_1
    move-exception v1

    .line 480
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Failed to decode bitmap size."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 482
    .local v3, "se":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "No permission to decode bitmap options."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 487
    .end local v3    # "se":Ljava/lang/SecurityException;
    :pswitch_4
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 214
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 215
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSizeRect:Landroid/graphics/Rect;

    .line 216
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    .line 217
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mUri:Landroid/net/Uri;

    .line 218
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 219
    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mTargetSizeRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mTargetSizeRect:Landroid/graphics/Rect;

    .line 278
    .local v0, "sizeRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 277
    .end local v0    # "sizeRect":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 499
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSizeRect:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 501
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmapOptions(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 502
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 503
    .local v2, "width":I
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 504
    .local v0, "height":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSizeRect:Landroid/graphics/Rect;

    .line 510
    .end local v0    # "height":I
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "width":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSizeRect:Landroid/graphics/Rect;

    return-object v3

    .line 506
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSizeRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getColorConfig(Landroid/content/Context;)Landroid/graphics/Bitmap$Config;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 527
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 529
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getCompressionFormat(Landroid/content/Context;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineColorConfig(Landroid/graphics/Bitmap$CompressFormat;[B)Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 535
    :goto_0
    return-object v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "ex":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed determining color config, reverting to 8888."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 535
    .end local v0    # "ex":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    goto :goto_0
.end method

.method public getCompressedData()[B
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    return-object v0
.end method

.method public getCompressionFormat(Landroid/content/Context;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmapOptions(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 523
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineCompressionFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    return-object v1
.end method

.method public getHeight(Landroid/content/Context;)I
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mResourceId:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRotation:F

    return v0
.end method

.method public getScreen()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    return-object v0
.end method

.method public getType()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth(Landroid/content/Context;)I
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getXOffset()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mXOffset:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mYOffset:I

    return v0
.end method

.method public isValidTargetSize()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mTargetSizeRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mTargetSizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mTargetSizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRawData:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRawData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 562
    :cond_1
    return-void
.end method

.method public setCompressedData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->reset()V

    .line 227
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCompressedData:[B

    .line 228
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->COMPRESSED_DATA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 229
    return-void
.end method

.method public setData(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->reset()V

    .line 208
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRawData:Landroid/graphics/Bitmap;

    .line 209
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->RAW:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 210
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mXOffset:I

    .line 191
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mYOffset:I

    .line 192
    return-void
.end method

.method setPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->reset()V

    .line 247
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mPath:Ljava/lang/String;

    .line 248
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->FILE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 249
    return-void
.end method

.method public setResourceId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->reset()V

    .line 257
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mResourceId:I

    .line 258
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->RESOURCE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 259
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 565
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mRotation:F

    .line 566
    return-void
.end method

.method public setScaling(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V
    .locals 0
    .param p1, "scaleOption"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScaleOption:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .line 552
    return-void
.end method

.method public setScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V
    .locals 0
    .param p1, "screen"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 263
    return-void
.end method

.method public setTargetSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 540
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mTargetSizeRect:Landroid/graphics/Rect;

    .line 541
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mCachedBitmap:Landroid/graphics/Bitmap;

    .line 542
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 543
    return-void
.end method

.method public setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scaleOption"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .prologue
    .line 546
    invoke-virtual {p0, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setScaling(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 547
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(II)V

    .line 548
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->reset()V

    .line 237
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mUri:Landroid/net/Uri;

    .line 238
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->URI:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->mSourceType:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 239
    return-void
.end method

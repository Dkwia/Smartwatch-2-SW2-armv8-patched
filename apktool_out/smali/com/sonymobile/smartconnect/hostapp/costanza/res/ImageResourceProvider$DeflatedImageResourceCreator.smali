.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "ImageResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeflatedImageResourceCreator"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCid:I

.field private final mDeflateBuffer:[B

.field private final mDeflater:Ljava/util/zip/Deflater;

.field private final mPixelBufferArray:[B

.field private final mPixelByteBuffer:Ljava/nio/ByteBuffer;

.field private final mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;[BLjava/util/zip/Deflater;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pixelByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "deflateBuffer"    # [B
    .param p4, "deflater"    # Ljava/util/zip/Deflater;

    .prologue
    .line 132
    const/4 v5, -0x1

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;-><init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;[BLjava/util/zip/Deflater;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;[BLjava/util/zip/Deflater;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pixelByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "deflateBuffer"    # [B
    .param p4, "deflater"    # Ljava/util/zip/Deflater;
    .param p5, "cid"    # I
    .param p6, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelByteBuffer:Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelBufferArray:[B

    .line 124
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflateBuffer:[B

    .line 125
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflater:Ljava/util/zip/Deflater;

    .line 126
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mCid:I

    .line 127
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .line 128
    return-void
.end method

.method private convertToTargetColorMode([BILandroid/graphics/Bitmap$Config;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 10
    .param p1, "pixelArray"    # [B
    .param p2, "byteCount"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .prologue
    .line 205
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->BlackAndGray1Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    if-ne p4, v8, :cond_2

    .line 206
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v8, :cond_1

    .line 207
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_8

    .line 208
    aget-byte v8, p1, v4

    and-int/lit16 v6, v8, 0xff

    .line 209
    .local v6, "r":I
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    .line 210
    .local v2, "g":I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    .line 211
    .local v1, "b":I
    add-int/lit8 v8, v4, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v0, v8, 0xff

    .line 215
    .local v0, "a":I
    mul-int/lit16 v8, v6, 0x1322

    mul-int/lit16 v9, v2, 0x2591

    add-int/2addr v8, v9

    mul-int/lit16 v9, v1, 0x74b

    add-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0xe

    .line 217
    .local v5, "luma":I
    div-int/lit8 v5, v5, 0x11

    .line 218
    packed-switch v5, :pswitch_data_0

    .line 239
    const/4 v1, 0x0

    move v2, v1

    move v6, v1

    .line 243
    :goto_1
    int-to-byte v8, v6

    aput-byte v8, p1, v4

    .line 244
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v2

    aput-byte v9, p1, v8

    .line 245
    add-int/lit8 v8, v4, 0x2

    int-to-byte v9, v1

    aput-byte v9, p1, v8

    .line 246
    add-int/lit8 v9, v4, 0x3

    if-lez v0, :cond_0

    const/16 v8, 0xff

    :goto_2
    int-to-byte v8, v8

    aput-byte v8, p1, v9

    .line 207
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 231
    :pswitch_0
    const/4 v1, 0x0

    move v6, v1

    .line 232
    const/16 v2, 0xff

    .line 233
    goto :goto_1

    .line 246
    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    .line 249
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "g":I
    .end local v4    # "i":I
    .end local v5    # "luma":I
    .end local v6    # "r":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, p2, :cond_8

    .line 250
    aget-byte v8, p1, v4

    and-int/lit16 v7, v8, 0xff

    .line 251
    .local v7, "rg":I
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v3, v8, 0xff

    .line 253
    .local v3, "gb":I
    and-int/lit16 v8, v7, 0xf8

    shr-int/lit8 v9, v7, 0x5

    or-int v6, v8, v9

    .line 254
    .restart local v6    # "r":I
    shl-int/lit8 v8, v7, 0x5

    and-int/lit16 v7, v8, 0xe0

    .line 255
    and-int/lit16 v8, v3, 0xe0

    shr-int/lit8 v8, v8, 0x3

    or-int/2addr v8, v7

    shr-int/lit8 v9, v7, 0x6

    or-int v2, v8, v9

    .line 256
    .restart local v2    # "g":I
    shl-int/lit8 v8, v3, 0x3

    and-int/lit16 v3, v8, 0xf8

    .line 257
    shr-int/lit8 v8, v3, 0x5

    or-int v1, v3, v8

    .line 261
    .restart local v1    # "b":I
    mul-int/lit16 v8, v6, 0x1322

    mul-int/lit16 v9, v2, 0x2591

    add-int/2addr v8, v9

    mul-int/lit16 v9, v1, 0x74b

    add-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0xe

    .line 263
    .restart local v5    # "luma":I
    div-int/lit8 v5, v5, 0x11

    .line 264
    packed-switch v5, :pswitch_data_1

    .line 285
    const/4 v3, 0x0

    move v7, v3

    .line 289
    :goto_4
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 290
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v3

    aput-byte v9, p1, v8

    .line 249
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 277
    :pswitch_1
    const/4 v7, 0x7

    .line 278
    const/16 v3, 0xe0

    .line 279
    goto :goto_4

    .line 293
    .end local v1    # "b":I
    .end local v2    # "g":I
    .end local v3    # "gb":I
    .end local v4    # "i":I
    .end local v5    # "luma":I
    .end local v6    # "r":I
    .end local v7    # "rg":I
    :cond_2
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->BlackAndGray8Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    if-ne p4, v8, :cond_5

    .line 294
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v8, :cond_4

    .line 295
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, p2, :cond_8

    .line 296
    aget-byte v8, p1, v4

    and-int/lit16 v6, v8, 0xff

    .line 297
    .restart local v6    # "r":I
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    .line 298
    .restart local v2    # "g":I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    .line 299
    .restart local v1    # "b":I
    add-int/lit8 v8, v4, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v0, v8, 0xff

    .line 303
    .restart local v0    # "a":I
    mul-int/lit16 v8, v6, 0x1322

    mul-int/lit16 v9, v2, 0x2591

    add-int/2addr v8, v9

    mul-int/lit16 v9, v1, 0x74b

    add-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0xe

    .line 305
    .restart local v5    # "luma":I
    div-int/lit8 v5, v5, 0x11

    .line 306
    packed-switch v5, :pswitch_data_2

    .line 337
    const/4 v1, 0x0

    move v2, v1

    move v6, v1

    .line 341
    :goto_6
    int-to-byte v8, v6

    aput-byte v8, p1, v4

    .line 342
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v2

    aput-byte v9, p1, v8

    .line 343
    add-int/lit8 v8, v4, 0x2

    int-to-byte v9, v1

    aput-byte v9, p1, v8

    .line 344
    add-int/lit8 v9, v4, 0x3

    if-lez v0, :cond_3

    const/16 v8, 0xff

    :goto_7
    int-to-byte v8, v8

    aput-byte v8, p1, v9

    .line 295
    add-int/lit8 v4, v4, 0x4

    goto :goto_5

    .line 312
    :pswitch_2
    const/16 v1, 0x55

    move v2, v1

    move v6, v1

    .line 313
    goto :goto_6

    .line 316
    :pswitch_3
    const/16 v1, 0x50

    move v2, v1

    move v6, v1

    .line 317
    goto :goto_6

    .line 320
    :pswitch_4
    const/16 v1, 0x45

    move v2, v1

    move v6, v1

    .line 321
    goto :goto_6

    .line 324
    :pswitch_5
    const/16 v1, 0x40

    move v2, v1

    move v6, v1

    .line 325
    goto :goto_6

    .line 328
    :pswitch_6
    const/16 v1, 0x35

    move v2, v1

    move v6, v1

    .line 329
    goto :goto_6

    .line 331
    :pswitch_7
    const/16 v1, 0x30

    move v2, v1

    move v6, v1

    .line 333
    :pswitch_8
    const/16 v1, 0x25

    move v2, v1

    move v6, v1

    .line 334
    goto :goto_6

    .line 344
    :cond_3
    const/4 v8, 0x0

    goto :goto_7

    .line 347
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "g":I
    .end local v4    # "i":I
    .end local v5    # "luma":I
    .end local v6    # "r":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    if-ge v4, p2, :cond_8

    .line 348
    aget-byte v8, p1, v4

    and-int/lit16 v7, v8, 0xff

    .line 349
    .restart local v7    # "rg":I
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v3, v8, 0xff

    .line 351
    .restart local v3    # "gb":I
    and-int/lit16 v8, v7, 0xf8

    shr-int/lit8 v9, v7, 0x5

    or-int v6, v8, v9

    .line 352
    .restart local v6    # "r":I
    shl-int/lit8 v8, v7, 0x5

    and-int/lit16 v7, v8, 0xe0

    .line 353
    and-int/lit16 v8, v3, 0xe0

    shr-int/lit8 v8, v8, 0x3

    or-int/2addr v8, v7

    shr-int/lit8 v9, v7, 0x6

    or-int v2, v8, v9

    .line 354
    .restart local v2    # "g":I
    shl-int/lit8 v8, v3, 0x3

    and-int/lit16 v3, v8, 0xf8

    .line 355
    shr-int/lit8 v8, v3, 0x5

    or-int v1, v3, v8

    .line 359
    .restart local v1    # "b":I
    mul-int/lit16 v8, v6, 0x1322

    mul-int/lit16 v9, v2, 0x2591

    add-int/2addr v8, v9

    mul-int/lit16 v9, v1, 0x74b

    add-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0xe

    .line 361
    .restart local v5    # "luma":I
    div-int/lit8 v5, v5, 0x11

    .line 362
    packed-switch v5, :pswitch_data_3

    .line 392
    :goto_9
    const/4 v1, 0x0

    move v2, v1

    move v6, v1

    .line 396
    :goto_a
    shl-int/lit8 v8, v6, 0x3

    ushr-int/lit8 v9, v2, 0x5

    and-int/lit8 v9, v9, 0x3

    or-int v7, v8, v9

    .line 397
    shl-int/lit8 v8, v2, 0x3

    and-int/lit8 v9, v1, 0x1f

    or-int v3, v8, v9

    .line 398
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 399
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v3

    aput-byte v9, p1, v8

    .line 347
    add-int/lit8 v4, v4, 0x2

    goto :goto_8

    .line 368
    :pswitch_9
    const/16 v1, 0x55

    move v2, v1

    move v6, v1

    .line 369
    goto :goto_a

    .line 372
    :pswitch_a
    const/16 v1, 0x50

    move v2, v1

    move v6, v1

    .line 373
    goto :goto_a

    .line 376
    :pswitch_b
    const/16 v1, 0x45

    move v2, v1

    move v6, v1

    .line 377
    goto :goto_a

    .line 380
    :pswitch_c
    const/16 v1, 0x40

    move v2, v1

    move v6, v1

    .line 381
    goto :goto_a

    .line 384
    :pswitch_d
    const/16 v1, 0x35

    move v2, v1

    move v6, v1

    .line 385
    goto :goto_a

    .line 387
    :pswitch_e
    const/16 v1, 0x30

    move v2, v1

    move v6, v1

    .line 389
    :pswitch_f
    const/16 v1, 0x25

    move v2, v1

    move v6, v1

    goto :goto_9

    .line 402
    .end local v1    # "b":I
    .end local v2    # "g":I
    .end local v3    # "gb":I
    .end local v4    # "i":I
    .end local v5    # "luma":I
    .end local v6    # "r":I
    .end local v7    # "rg":I
    :cond_5
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Grayscale3Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    if-ne p4, v8, :cond_8

    .line 403
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p3, v8, :cond_7

    .line 404
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_b
    if-ge v4, p2, :cond_8

    .line 405
    aget-byte v8, p1, v4

    and-int/lit16 v6, v8, 0xff

    .line 406
    .restart local v6    # "r":I
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    .line 407
    .restart local v2    # "g":I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    .line 408
    .restart local v1    # "b":I
    add-int/lit8 v8, v4, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v0, v8, 0xff

    .line 412
    .restart local v0    # "a":I
    mul-int/lit16 v8, v6, 0x1322

    mul-int/lit16 v9, v2, 0x2591

    add-int/2addr v8, v9

    mul-int/lit16 v9, v1, 0x74b

    add-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0xe

    .line 414
    .restart local v5    # "luma":I
    div-int/lit8 v5, v5, 0x11

    .line 415
    packed-switch v5, :pswitch_data_4

    .line 441
    const/4 v1, 0x0

    move v2, v1

    move v6, v1

    .line 445
    :goto_c
    int-to-byte v8, v6

    aput-byte v8, p1, v4

    .line 446
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v2

    aput-byte v9, p1, v8

    .line 447
    add-int/lit8 v8, v4, 0x2

    int-to-byte v9, v1

    aput-byte v9, p1, v8

    .line 448
    add-int/lit8 v9, v4, 0x3

    if-lez v0, :cond_6

    const/16 v8, 0xff

    :goto_d
    int-to-byte v8, v8

    aput-byte v8, p1, v9

    .line 404
    add-int/lit8 v4, v4, 0x4

    goto :goto_b

    .line 421
    :pswitch_10
    const/16 v1, 0xff

    move v2, v1

    move v6, v1

    .line 422
    goto :goto_c

    .line 427
    :pswitch_11
    const/16 v1, 0xff

    move v6, v1

    .line 428
    const/4 v2, 0x0

    .line 429
    goto :goto_c

    .line 434
    :pswitch_12
    const/4 v1, 0x0

    move v6, v1

    .line 435
    const/16 v2, 0xff

    .line 436
    goto :goto_c

    .line 448
    :cond_6
    const/4 v8, 0x0

    goto :goto_d

    .line 451
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "g":I
    .end local v4    # "i":I
    .end local v5    # "luma":I
    .end local v6    # "r":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_e
    if-ge v4, p2, :cond_8

    .line 452
    aget-byte v8, p1, v4

    and-int/lit16 v7, v8, 0xff

    .line 453
    .restart local v7    # "rg":I
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v3, v8, 0xff

    .line 455
    .restart local v3    # "gb":I
    and-int/lit16 v8, v7, 0xf8

    shr-int/lit8 v9, v7, 0x5

    or-int v6, v8, v9

    .line 456
    .restart local v6    # "r":I
    shl-int/lit8 v8, v7, 0x5

    and-int/lit16 v7, v8, 0xe0

    .line 457
    and-int/lit16 v8, v3, 0xe0

    shr-int/lit8 v8, v8, 0x3

    or-int/2addr v8, v7

    shr-int/lit8 v9, v7, 0x6

    or-int v2, v8, v9

    .line 458
    .restart local v2    # "g":I
    shl-int/lit8 v8, v3, 0x3

    and-int/lit16 v3, v8, 0xf8

    .line 459
    shr-int/lit8 v8, v3, 0x5

    or-int v1, v3, v8

    .line 463
    .restart local v1    # "b":I
    mul-int/lit16 v8, v6, 0x1322

    mul-int/lit16 v9, v2, 0x2591

    add-int/2addr v8, v9

    mul-int/lit16 v9, v1, 0x74b

    add-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0xe

    .line 465
    .restart local v5    # "luma":I
    div-int/lit8 v5, v5, 0x11

    .line 466
    packed-switch v5, :pswitch_data_5

    .line 492
    const/4 v3, 0x0

    move v7, v3

    .line 496
    :goto_f
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 497
    add-int/lit8 v8, v4, 0x1

    int-to-byte v9, v3

    aput-byte v9, p1, v8

    .line 451
    add-int/lit8 v4, v4, 0x2

    goto :goto_e

    .line 472
    :pswitch_13
    const/16 v3, 0xff

    move v7, v3

    .line 473
    goto :goto_f

    .line 478
    :pswitch_14
    const/16 v7, 0xf8

    .line 479
    const/16 v3, 0x1f

    .line 480
    goto :goto_f

    .line 485
    :pswitch_15
    const/4 v7, 0x7

    .line 486
    const/16 v3, 0xe0

    .line 487
    goto :goto_f

    .line 501
    .end local v1    # "b":I
    .end local v2    # "g":I
    .end local v3    # "gb":I
    .end local v4    # "i":I
    .end local v5    # "luma":I
    .end local v6    # "r":I
    .end local v7    # "rg":I
    :cond_8
    return-void

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 306
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 362
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 415
    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    .line 466
    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method protected createDeflatedImage(ILandroid/graphics/Bitmap;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    .locals 9
    .param p1, "cid"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 159
    new-instance v3, Landroid/util/TimingLogger;

    const-string v4, "Costanza"

    const-string v5, "deflateImage"

    invoke-direct {v3, v4, v5}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v3, "logger":Landroid/util/TimingLogger;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelBufferArray:[B

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->convertToTargetColorMode([BILandroid/graphics/Bitmap$Config;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V

    .line 164
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v4, v5, :cond_0

    .line 174
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    invoke-static {v4, v5}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 175
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelBufferArray:[B

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->convertPremultipliedPixelsFromBIG_ENDIAN_RGBA8888toLITTLE_ENDIAN_ARGB4444([BI)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 177
    const-string v4, "Converted pixels from 8888."

    invoke-virtual {v3, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflater:Ljava/util/zip/Deflater;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelBufferArray:[B

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mPixelByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v4, v5, v8, v6}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 181
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finish()V

    .line 182
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflater:Ljava/util/zip/Deflater;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflateBuffer:[B

    invoke-virtual {v4, v5}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    .line 183
    .local v1, "deflatedSize":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finished()Z

    move-result v4

    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 184
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflater:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->reset()V

    .line 185
    const-string v4, "Deflated pixels."

    invoke-virtual {v3, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mDeflateBuffer:[B

    invoke-static {v4, v8, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 188
    .local v0, "deflatedBytes":[B
    const-string v4, "Copied deflated pixels to destination."

    invoke-virtual {v3, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 190
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    const/4 v4, -0x1

    invoke-direct {v2, p1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;-><init>(II)V

    .line 191
    .local v2, "image":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->setData([B)V

    .line 192
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->setWidth(I)V

    .line 193
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->setHeight(I)V

    .line 194
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->setColorType(Landroid/graphics/Bitmap$Config;)V

    .line 195
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_ZLIB:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->setImageType(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;)V

    .line 197
    invoke-virtual {v3}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 199
    return-object v2
.end method

.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 1
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->createDeflatedImage(ILandroid/graphics/Bitmap;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    move-result-object v0

    return-object v0
.end method

.method public getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I
    .locals 2
    .param p1, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .prologue
    .line 138
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mCid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;->getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$DeflatedImageResourceCreator;->mCid:I

    goto :goto_0
.end method

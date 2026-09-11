.class public Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;,
        Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;,
        Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    }
.end annotation


# static fields
.field public static final GRAY_MATRIX:[F

.field private static final GRAY_VALUE:F = 64.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->GRAY_MATRIX:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x42800000    # 64.0f
        0x0
        0x0
        0x0
        0x0
        0x42800000    # 64.0f
        0x0
        0x0
        0x0
        0x0
        0x42800000    # 64.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method public static convertPremultipliedPixelsFromBIG_ENDIAN_RGBA8888toLITTLE_ENDIAN_ARGB4444([BI)I
    .locals 9
    .param p0, "mPixelArray"    # [B
    .param p1, "byteCount"    # I

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "dstIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v3, v2

    .end local v2    # "dstIndex":I
    .local v3, "dstIndex":I
    :goto_0
    if-ge v5, p1, :cond_1

    .line 210
    aget-byte v7, p0, v5

    and-int/lit16 v6, v7, 0xff

    .line 211
    .local v6, "r":I
    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v4, v7, 0xff

    .line 212
    .local v4, "g":I
    add-int/lit8 v7, v5, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v1, v7, 0xff

    .line 213
    .local v1, "b":I
    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v0, v7, 0xff

    .line 215
    .local v0, "a":I
    if-lez v0, :cond_0

    .line 216
    mul-int/lit16 v7, v1, 0xff

    div-int v1, v7, v0

    .line 217
    mul-int/lit16 v7, v4, 0xff

    div-int v4, v7, v0

    .line 218
    mul-int/lit16 v7, v6, 0xff

    div-int v6, v7, v0

    .line 222
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    and-int/lit16 v7, v4, 0xf0

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p0, v3

    .line 223
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v3    # "dstIndex":I
    and-int/lit16 v7, v0, 0xf0

    shr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p0, v2

    .line 209
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 226
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "g":I
    .end local v6    # "r":I
    :cond_1
    return v3
.end method

.method public static deSaturateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 39
    if-nez p0, :cond_1

    .line 40
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "BitmapUtils.deSaturateBitmap: source bitmap is null"

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    return-object v2

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 45
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 51
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 52
    .local v2, "dest":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 54
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 57
    .local v1, "colorMatrix":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 58
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 59
    .local v3, "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 60
    invoke-virtual {v0, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static determineColorConfig(Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap$Config;
    .locals 2
    .param p0, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 153
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 155
    :pswitch_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static determineColorConfig(Landroid/graphics/Bitmap$CompressFormat;[B)Landroid/graphics/Bitmap$Config;
    .locals 3
    .param p0, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p1, "data"    # [B

    .prologue
    .line 132
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 133
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determinePngColorFormat([B)Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    move-result-object v0

    .line 134
    .local v0, "pngColorFormat":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$util$BitmapUtils$PngColorFormat:[I

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 139
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 142
    .end local v0    # "pngColorFormat":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    :goto_0
    return-object v1

    .line 137
    .restart local v0    # "pngColorFormat":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    :pswitch_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 142
    .end local v0    # "pngColorFormat":Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineColorConfig(Landroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static determineColorConfig([B)Landroid/graphics/Bitmap$Config;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 147
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineCompressionFormat([B)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    .line 148
    .local v0, "compressFormat":Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineColorConfig(Landroid/graphics/Bitmap$CompressFormat;[B)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    return-object v1
.end method

.method public static determineCompressionFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p0, :cond_2

    .line 162
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 167
    :goto_0
    return-object v0

    .line 164
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 166
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static determineCompressionFormat([B)Landroid/graphics/Bitmap$CompressFormat;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 174
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 178
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->determineCompressionFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    return-object v2
.end method

.method public static determinePngColorFormat([B)Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    .locals 2
    .param p0, "pngData"    # [B

    .prologue
    .line 127
    const/16 v1, 0x19

    aget-byte v0, p0, v1

    .line 128
    .local v0, "colorFormat":I
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->valueOf(I)Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    move-result-object v1

    return-object v1
.end method

.method public static determineSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "decodedOptions"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I

    .prologue
    .line 183
    const v0, 0x3f4ccccd    # 0.8f

    .line 185
    .local v0, "decreaseFactor":F
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float v2, v4, v5

    .line 186
    .local v2, "xScale":F
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float v3, v4, v5

    .line 188
    .local v3, "yScale":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v1, v4, v5

    .line 190
    .local v1, "sampleSize":F
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    const-string v4, "Determined scale: %f from srcWidth=%d, srcHeight=%d, targetWidth=%d, targetHeight=%d."

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_0
    float-to-int v4, v1

    return v4
.end method

.method public static silhouetteBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 72
    if-nez p0, :cond_1

    .line 73
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "BitmapUtils.silhouetteBitmap: source bitmap is null"

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 74
    :cond_0
    const/4 v2, 0x0

    .line 96
    :goto_0
    return-object v2

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 78
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 85
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 86
    .local v2, "dest":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 88
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 90
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 91
    .local v1, "colorMatrix":Landroid/graphics/ColorMatrix;
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->GRAY_MATRIX:[F

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 92
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 93
    .local v3, "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    invoke-virtual {v0, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

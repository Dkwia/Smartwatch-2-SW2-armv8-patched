.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;
.super Ljava/lang/Object;
.source "DisplayData.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field mData:[B

.field mDataUri:Landroid/net/Uri;

.field private mHeight:I

.field mPackageName:Ljava/lang/String;

.field mResizeToFullScreen:Z

.field private mSizeRect:Landroid/graphics/Rect;

.field private mWidth:I

.field mXOffsetPos:I

.field mYOffsetPos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dataUri"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "xOffsetPos"    # I
    .param p5, "yOffsetPos"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mPackageName:Ljava/lang/String;

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mDataUri:Landroid/net/Uri;

    .line 36
    :cond_0
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    .line 37
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mXOffsetPos:I

    .line 38
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mYOffsetPos:I

    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mXOffsetPos:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mYOffsetPos:I

    if-ne v0, v1, :cond_1

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mResizeToFullScreen:Z

    .line 47
    :cond_1
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mXOffsetPos:I

    if-ne v0, v1, :cond_2

    .line 48
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mXOffsetPos:I

    .line 51
    :cond_2
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mYOffsetPos:I

    if-ne v0, v1, :cond_3

    .line 52
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mYOffsetPos:I

    .line 54
    :cond_3
    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mDataUri:Landroid/net/Uri;

    invoke-static {p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/BitmapDecoder;->decodeBytesOrUri(Landroid/content/Context;[BLandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmap:Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapOptions(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 90
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v1

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "Failed to read bitmap properties."

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mSizeRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getBitmapOptions(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 110
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mWidth:I

    .line 111
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mHeight:I

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mWidth:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mSizeRect:Landroid/graphics/Rect;

    .line 114
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mSizeRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHeight(Landroid/content/Context;)I
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMimeType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getBitmapOptions(Landroid/content/Context;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth(Landroid/content/Context;)I
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mXOffsetPos:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mYOffsetPos:I

    return v0
.end method

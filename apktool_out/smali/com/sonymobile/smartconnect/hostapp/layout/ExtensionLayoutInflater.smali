.class public Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
.super Ljava/lang/Object;
.source "ExtensionLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mLayoutInflaterFactory:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private final mResourceContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "extPkgName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;II)V
    .locals 4
    .param p1, "extPkgName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    move-object v1, p2

    .line 70
    .local v1, "resolvedResourceContext":Landroid/content/Context;
    :goto_0
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResourceContext:Landroid/content/Context;

    .line 74
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResourceContext:Landroid/content/Context;

    const v3, 0x103006b

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 76
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResources:Landroid/content/res/Resources;

    .line 78
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mLayoutInflaterFactory:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;

    .line 79
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResourceContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v2

    if-nez v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mLayoutInflaterFactory:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;

    invoke-virtual {v2, v3}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 85
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mContext:Landroid/content/Context;

    .line 86
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxWidth:I

    .line 87
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxHeight:I

    .line 88
    return-void

    .line 62
    .end local v1    # "resolvedResourceContext":Landroid/content/Context;
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "resolvedResourceContext":Landroid/content/Context;
    goto :goto_0

    .line 64
    .end local v1    # "resolvedResourceContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Extension package not found %s, reverting to hostapp context."

    invoke-static {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 66
    move-object v1, p2

    .restart local v1    # "resolvedResourceContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private applyExtractedImages(Landroid/view/View;Ljava/util/Queue;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "images":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;>;"
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v2, p1

    .line 198
    check-cast v2, Landroid/view/ViewGroup;

    .line 199
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 200
    .local v6, "nChilds":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 201
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, "childView":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->applyExtractedImages(Landroid/view/View;Ljava/util/Queue;)V

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v6    # "nChilds":I
    :cond_0
    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 205
    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .local v5, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    move-object v4, p1

    .line 206
    check-cast v4, Landroid/widget/ImageView;

    .line 207
    .local v4, "imageView":Landroid/widget/ImageView;
    instance-of v7, v5, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-eqz v7, :cond_3

    .line 208
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 210
    const-string v7, "Applying extracted image res for ImageView [id=0x%08x]."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_1
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->isValidTargetSize()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 215
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_2
    :goto_1
    return-void

    .line 219
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    .restart local v5    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private findNonNullByteArray([Ljava/lang/String;Landroid/os/Bundle;)[B
    .locals 5
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 392
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 393
    .local v2, "extra":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 394
    .local v1, "array":[B
    if-eqz v1, :cond_0

    .line 398
    .end local v1    # "array":[B
    .end local v2    # "extra":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 392
    .restart local v1    # "array":[B
    .restart local v2    # "extra":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "array":[B
    .end local v2    # "extra":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findNonNullString([Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    .line 382
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 383
    .local v1, "extra":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "string":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 388
    .end local v1    # "extra":Ljava/lang/String;
    .end local v4    # "string":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 382
    .restart local v1    # "extra":Ljava/lang/String;
    .restart local v4    # "string":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "extra":Ljava/lang/String;
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getBitmapLayoutData(Landroid/os/Bundle;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 354
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 356
    .local v2, "syncLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data"

    aput-object v4, v3, v5

    const-string v4, "widget_image_data"

    aput-object v4, v3, v6

    invoke-direct {p0, v3, p1}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->findNonNullByteArray([Ljava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v0

    .line 361
    .local v0, "buffer":[B
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setCompressedData([B)V

    .line 378
    .end local v2    # "syncLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :goto_0
    return-object v2

    .line 365
    .restart local v2    # "syncLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_0
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "data_uri"

    aput-object v4, v3, v5

    const-string v4, "widget_image_uri"

    aput-object v4, v3, v6

    invoke-direct {p0, v3, p1}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->findNonNullString([Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "dataUri":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 371
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 372
    const-string v3, "file://%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 374
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 378
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private inflateViewInternal(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 182
    .local v1, "inflatedView":Landroid/view/View;
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 184
    .local v2, "layoutParser":Landroid/content/res/XmlResourceParser;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mLayoutInflaterFactory:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;->reset()V

    .line 185
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 187
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mLayoutInflaterFactory:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;->access$000(Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;)Ljava/util/Queue;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->applyExtractedImages(Landroid/view/View;Ljava/util/Queue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v2    # "layoutParser":Landroid/content/res/XmlResourceParser;
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Inflate failed!"

    invoke-static {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0
.end method


# virtual methods
.method public applyDefaultValues(Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "defaultValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v10, -0x1

    .line 402
    instance-of v9, p1, Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    move-object v2, p1

    .line 403
    check-cast v2, Landroid/view/ViewGroup;

    .line 404
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 405
    .local v7, "nChilds":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_1

    .line 406
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 407
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {p0, v1, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->applyDefaultValues(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    .end local v7    # "nChilds":I
    :cond_0
    instance-of v9, p1, Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 411
    .local v4, "id":I
    if-eq v4, v10, :cond_1

    .line 412
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 413
    .local v8, "text":Ljava/lang/CharSequence;
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .end local v4    # "id":I
    .end local v8    # "text":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    return-void

    .line 415
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    instance-of v9, p1, Landroid/widget/ImageView;

    if-eqz v9, :cond_1

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 417
    .restart local v4    # "id":I
    if-eq v4, v10, :cond_1

    .line 418
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .local v6, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    move-object v5, p1

    .line 419
    check-cast v5, Landroid/widget/ImageView;

    .line 420
    .local v5, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 421
    instance-of v9, v6, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-eqz v9, :cond_3

    .line 422
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 425
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public extractDefaultValues(Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "defaultValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const/4 v6, -0x1

    .line 432
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 433
    check-cast v1, Landroid/view/ViewGroup;

    .line 434
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 435
    .local v4, "nChilds":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 436
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->extractDefaultValues(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v4    # "nChilds":I
    :cond_0
    instance-of v5, p1, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 441
    .local v3, "id":I
    if-eq v3, v6, :cond_1

    .line 442
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    .end local v3    # "id":I
    :cond_1
    :goto_1
    return-void

    .line 444
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    instance-of v5, p1, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 446
    .restart local v3    # "id":I
    if-eq v3, v6, :cond_1

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public inflateView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->inflateView(I[Landroid/os/Parcelable;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateView(I[Landroid/os/Parcelable;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "layoutId"    # I
    .param p2, "extraLayoutData"    # [Landroid/os/Parcelable;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->inflateViewInternal(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "inflatedView":Landroid/view/View;
    if-nez p3, :cond_1

    .line 99
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "rootLayout":Landroid/widget/FrameLayout;
    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    move-object v0, v1

    .line 107
    .end local v1    # "rootLayout":Landroid/widget/FrameLayout;
    :cond_1
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->updateLayout(Landroid/view/View;[Landroid/os/Parcelable;)V

    .line 109
    invoke-virtual {p0, v0, p3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 112
    :cond_2
    return-object v0
.end method

.method public layout(Landroid/view/View;)V
    .locals 1
    .param p1, "inflatedView"    # Landroid/view/View;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 117
    return-void
.end method

.method public layout(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 13
    .param p1, "inflatedView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 123
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    const-string v9, "Performing layout for 0x%08x, %s."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    aput-object p1, v10, v7

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 129
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_4

    .line 130
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxWidth:I

    .line 131
    .local v5, "width":I
    if-eqz p2, :cond_1

    .line 132
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 135
    :cond_1
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxHeight:I

    .line 136
    .local v0, "height":I
    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 140
    :cond_2
    const-string v9, "View defaults (w=%d,h=%d)."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v5, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_3
    :goto_0
    if-nez p2, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_8

    move v2, v7

    .line 162
    .local v2, "isTopContainer":Z
    :goto_1
    if-eqz v2, :cond_9

    const/high16 v4, 0x40000000    # 2.0f

    .line 166
    .local v4, "mode":I
    :goto_2
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 171
    .local v6, "widthMS":I
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 173
    .local v1, "heightMS":I
    const-string v9, "Adjusted view layout size (isTop=%b,w=%d,h=%d)."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v12

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1, v6, v1}, Landroid/view/View;->measure(II)V

    .line 175
    invoke-virtual {p1, v8, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 176
    return-void

    .line 144
    .end local v0    # "height":I
    .end local v1    # "heightMS":I
    .end local v2    # "isTopContainer":Z
    .end local v4    # "mode":I
    .end local v5    # "width":I
    .end local v6    # "widthMS":I
    :cond_4
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    .restart local v5    # "width":I
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    .restart local v0    # "height":I
    if-ltz v5, :cond_5

    if-gez v0, :cond_6

    :cond_5
    if-nez p2, :cond_6

    .line 148
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxWidth:I

    .line 149
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxHeight:I

    goto :goto_0

    .line 151
    :cond_6
    const-string v9, "View layout params (w=%d,h=%d)."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    if-gez v5, :cond_7

    .line 153
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 156
    :cond_7
    if-gez v0, :cond_3

    .line 157
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_8
    move v2, v8

    .line 161
    goto :goto_1

    .line 162
    .restart local v2    # "isTopContainer":Z
    :cond_9
    const/high16 v4, -0x80000000

    goto :goto_2
.end method

.method public updateLayout(Landroid/view/View;[Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "extraLayoutData"    # [Landroid/os/Parcelable;

    .prologue
    .line 288
    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getBundleArray([Landroid/os/Parcelable;)[Landroid/os/Bundle;

    move-result-object v3

    .line 289
    .local v3, "layoutDataBundles":[Landroid/os/Bundle;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 290
    move-object v0, v3

    .local v0, "arr$":[Landroid/os/Bundle;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 291
    .local v1, "data":Landroid/os/Bundle;
    invoke-virtual {p0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->updateLayoutData(Landroid/view/View;Landroid/os/Bundle;)Landroid/view/View;

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "arr$":[Landroid/os/Bundle;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public updateLayoutData(Landroid/view/View;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutData"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 297
    const/4 v5, 0x0

    .line 299
    .local v5, "updatedView":Landroid/view/View;
    if-eqz p2, :cond_7

    .line 300
    const-string v6, "layout_reference"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, "layoutReference":I
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 302
    if-nez v5, :cond_1

    .line 303
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    const-string v6, "Layout ref, 0x%08x, was not found in %d, %s."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    .end local v1    # "layoutReference":I
    :cond_0
    :goto_0
    return-object v5

    .line 307
    .restart local v1    # "layoutReference":I
    :cond_1
    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 308
    const-string v6, "text_from extension"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "text":Ljava/lang/String;
    move-object v4, v5

    .line 309
    check-cast v4, Landroid/widget/TextView;

    .line 310
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_2
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_5

    .line 313
    invoke-direct {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->getBitmapLayoutData(Landroid/os/Bundle;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v2

    .line 314
    .local v2, "syncLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    if-eqz v2, :cond_4

    move-object v0, v5

    .line 315
    check-cast v0, Landroid/widget/ImageView;

    .line 316
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_3

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->ONLY_DOWN_SAMPLE_LOADING:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v2, v6, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 330
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 332
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 333
    const-string v6, "ImageView updated ref, 0x%08x."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_3
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxWidth:I

    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->mMaxHeight:I

    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->ONLY_DOWN_SAMPLE_LOADING:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v2, v6, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    goto :goto_1

    .line 335
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 336
    const-string v6, "No image found for ImageView, 0x%08x."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    .end local v2    # "syncLayoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_5
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "View type not supported. Class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 342
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 346
    .end local v1    # "layoutReference":I
    :cond_7
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 347
    const-string v6, "Layout data is null."

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
.super Landroid/widget/ImageView;
.source "WidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView$WidgetDragShadowBuilder;
    }
.end annotation


# static fields
.field public static final ALPHA_DISABLED:I = 0x22

.field public static final ALPHA_ENABLED:I = 0xff


# instance fields
.field private mUseCustomIcon:Z

.field private mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .line 47
    return-void
.end method

.method private getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "previewImageUri"    # Landroid/net/Uri;

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "b":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    .local v9, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 100
    .local v3, "cr":Landroid/content/ContentResolver;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 101
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    invoke-static {v6, v12, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v4, v12, Landroid/util/DisplayMetrics;->density:F

    .line 105
    .local v4, "density":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v7, v12

    .line 106
    .local v7, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v8, v12

    .line 107
    .local v8, "maxWidth":I
    const/4 v11, 0x1

    .line 109
    .local v11, "scale":I
    iget v12, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v12, v7, :cond_0

    iget v12, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v12, v8, :cond_1

    .line 110
    :cond_0
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-double v14, v14

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v11, v12

    .line 114
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 115
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Loading scale:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for widget "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " maxHeight: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " maxWidth: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 119
    :cond_2
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v10, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 123
    const/4 v12, 0x0

    invoke-static {v6, v12, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 124
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .end local v4    # "density":F
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "maxHeight":I
    .end local v8    # "maxWidth":I
    .end local v10    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "scale":I
    :cond_3
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v5

    .line 126
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 127
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WidgetView preview not loaded for uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPreviewImageUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0

    .line 129
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 130
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 131
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WidgetView preview not loaded for uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPreviewImageUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    const/16 v0, 0xff

    .line 62
    .local v0, "alpha":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setAlpha(I)V

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->invalidate()V

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 65
    return-void

    .line 61
    .end local v0    # "alpha":I
    :cond_0
    const/16 v0, 0x22

    goto :goto_0
.end method

.method public setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    .locals 1
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)V

    .line 140
    return-void
.end method

.method public setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)V
    .locals 1
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .param p2, "useCurstomIcon"    # Z

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 81
    iput-boolean p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mUseCustomIcon:Z

    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    if-eqz v0, :cond_2

    .line 83
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mUseCustomIcon:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getListPreviewResource()I

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getListPreviewResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setImageResource(I)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPreviewImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->mWidget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

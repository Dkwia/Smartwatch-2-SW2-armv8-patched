.class Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "ExtensionLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomLayoutInflaterFactory"
.end annotation


# instance fields
.field private final mExtractedImages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;->mExtractedImages:Ljava/util/Queue;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;->getExtractedImages()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method private getExtractedImages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;->mExtractedImages:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 252
    const-string v5, "ImageView"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string v6, "id"

    invoke-interface {p3, v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 255
    .local v4, "viewId":I
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string v6, "src"

    invoke-interface {p3, v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, "srcId":I
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string v6, "rotation"

    const/4 v7, 0x0

    invoke-interface {p3, v5, v6, v7}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    .line 259
    .local v1, "rotation":F
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 260
    .local v0, "data":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setRotation(F)V

    .line 261
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setResourceId(I)V

    .line 262
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;->mExtractedImages:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 264
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    const-string v5, "Extracted image res and rotation for ImageView [id=0x%08x], srcId=%d, rot=%f."

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    .end local v0    # "data":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .end local v1    # "rotation":F
    .end local v2    # "srcId":I
    .end local v4    # "viewId":I
    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    .line 268
    :cond_2
    const-string v5, "com.sonyericsson.extras.liveware.aef.widget.TimeLayout"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;

    invoke-direct {v3, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 272
    :cond_3
    const-string v5, "com.sonyericsson.extras.liveware.aef.widget.TimeView"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;

    invoke-direct {v3, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    .local v3, "timeView":Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    const-string v5, "Created TimeView (timeType=%s, textSize=%f, text=%s, timeStateCount=%d)."

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeType()Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTextSize()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater$CustomLayoutInflaterFactory;->mExtractedImages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 244
    return-void
.end method

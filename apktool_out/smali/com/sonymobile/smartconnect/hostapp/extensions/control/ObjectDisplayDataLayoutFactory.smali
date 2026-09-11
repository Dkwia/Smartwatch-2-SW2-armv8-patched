.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;
.super Ljava/lang/Object;
.source "ObjectDisplayDataLayoutFactory.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "screenTranslation"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 28
    return-void
.end method


# virtual methods
.method public assembleLayout(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;
    .locals 11
    .param p1, "displayData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;

    .prologue
    const v10, 0x7f0d0003

    const/4 v9, 0x0

    .line 36
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .local v3, "layoutValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;>;"
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 38
    .local v2, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {v2, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    .line 39
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getX()I

    move-result v7

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getY()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setOffset(II)V

    .line 40
    iget-object v7, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    if-eqz v7, :cond_0

    .line 41
    iget-object v7, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mData:[B

    invoke-virtual {v2, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setCompressedData([B)V

    .line 48
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v7, v7, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetWidth:I

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getWidth(Landroid/content/Context;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 49
    .local v6, "width":I
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v7, v7, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetHeight:I

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getHeight(Landroid/content/Context;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 54
    .local v1, "height":I
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWN_SAMPLE_AND_CROP:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v2, v6, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 56
    invoke-virtual {v3, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v5, "view":Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v7, v7, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetWidth:I

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v8, v8, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetHeight:I

    invoke-direct {v4, v7, v8, v9, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 61
    .local v4, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-virtual {v5, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v0, Landroid/view/View;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "bitmapView":Landroid/view/View;
    invoke-virtual {v0, v10}, Landroid/view/View;->setId(I)V

    .line 65
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getXOffset()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setLeft(I)V

    .line 66
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getYOffset()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setTop(I)V

    .line 67
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getXOffset()I

    move-result v7

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getWidth(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setRight(I)V

    .line 68
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getYOffset()I

    move-result v7

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getHeight(Landroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/view/View;->setBottom(I)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v5, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;->addView(Landroid/view/View;)V

    .line 73
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v3, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;-><init>(ILandroid/util/SparseArray;Landroid/view/View;)V

    return-object v7

    .line 42
    .end local v0    # "bitmapView":Landroid/view/View;
    .end local v1    # "height":I
    .end local v4    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v5    # "view":Lcom/sonymobile/smartconnect/hostapp/extensions/control/CostanzaAbsoluteLayout;
    .end local v6    # "width":I
    :cond_0
    iget-object v7, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mDataUri:Landroid/net/Uri;

    if-eqz v7, :cond_1

    .line 43
    iget-object v7, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 45
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Missing display data."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

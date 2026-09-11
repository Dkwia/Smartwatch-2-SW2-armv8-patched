.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;
.source "PartiallyUpdatingCanvasDisplayDataLayoutFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenTranslation"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/CanvasDisplayDataLayoutFactory;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 25
    return-void
.end method


# virtual methods
.method public assembleLayout(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;
    .locals 12
    .param p1, "displayData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;

    .prologue
    .line 29
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getX()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getScaledX(I)I

    move-result v4

    .line 30
    .local v4, "scaledX":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getY()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getScaledY(I)I

    move-result v5

    .line 31
    .local v5, "scaledY":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getX()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getTargetX(I)I

    move-result v6

    .line 32
    .local v6, "targetX":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getY()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getTargetY(I)I

    move-result v7

    .line 33
    .local v7, "targetY":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getWidth(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getScaledWidth(I)I

    move-result v2

    .line 34
    .local v2, "clipWidth":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getHeight(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->getScaledHeight(I)I

    move-result v1

    .line 36
    .local v1, "clipHeight":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v8, v8, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetWidth:I

    sub-int/2addr v8, v4

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 37
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v8, v8, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetHeight:I

    sub-int/2addr v8, v5

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->drawDisplayDataOnCanvas(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Extracting partial image, scaled params: x=%d,y=%d,w=%d,h=%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-static {v0, v4, v5, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 45
    .local v3, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->mScreenTranslation:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    .line 46
    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 47
    invoke-virtual {v3, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setOffset(II)V

    .line 49
    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;->layoutBitmap(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;

    move-result-object v8

    return-object v8
.end method

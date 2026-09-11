.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;
.super Ljava/lang/Object;
.source "DisplayDataProcessor.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$2;
    }
.end annotation


# instance fields
.field private final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field private final mContext:Landroid/content/Context;

.field private final mCostanzaLayoutFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

.field private final mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

.field private final mNewmanLayoutFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;

.field private final mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

.field private final mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

.field private final mResetRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p3, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p4, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p5, "inputProcessor"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mResetRunnable:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 53
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->NEWMAN_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/PartiallyUpdatingCanvasDisplayDataLayoutFactory;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mNewmanLayoutFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;

    .line 56
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ObjectDisplayDataLayoutFactory;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mCostanzaLayoutFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;

    .line 59
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .line 60
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 61
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    .line 62
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 65
    return-void
.end method

.method private determineScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .locals 5
    .param p1, "displayData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;
    .param p2, "ctrlExt"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .prologue
    .line 113
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getTargetScreen()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    .line 114
    .local v0, "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->UNKNOWN:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    if-eq v0, v4, :cond_0

    move-object v1, v0

    .line 131
    .end local v0    # "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .local v1, "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    :goto_0
    return-object v1

    .line 118
    .end local v1    # "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .restart local v0    # "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getX()I

    move-result v2

    .line 119
    .local v2, "x":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getY()I

    move-result v3

    .line 121
    .local v3, "y":I
    if-gtz v2, :cond_1

    if-lez v3, :cond_2

    .line 122
    :cond_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 129
    :goto_1
    invoke-virtual {p2, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->setTargetScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V

    move-object v1, v0

    .line 131
    .end local v0    # "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .restart local v1    # "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    goto :goto_0

    .line 124
    .end local v1    # "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .restart local v0    # "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getBitmapSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->getAppropriateScreenTranslation(Landroid/graphics/Rect;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    goto :goto_1
.end method

.method private getAppropriateScreenTranslation(Landroid/graphics/Rect;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .locals 10
    .param p1, "originalSize"    # Landroid/graphics/Rect;

    .prologue
    .line 165
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 166
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 167
    .local v5, "sizeAdjustedForDensity":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 168
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 170
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->values()[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 171
    .local v4, "screenTranslation":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    const-string v6, "Testing size: %d,%d against %s and %s."

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    const/4 v8, 0x3

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    invoke-virtual {v4, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->isSameSourceSize(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->isSameSourceSize(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    .end local v4    # "screenTranslation":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    :cond_1
    :goto_1
    return-object v4

    .line 170
    .restart local v4    # "screenTranslation":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v4    # "screenTranslation":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    :cond_3
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    goto :goto_1
.end method

.method private getLayoutFactory(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;
    .locals 2
    .param p1, "screen"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .prologue
    .line 99
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$LayoutData$DeviceScreenTranslation:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mCostanzaLayoutFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;

    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mNewmanLayoutFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isDisplayDataWithinBoundraries(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Z
    .locals 6
    .param p1, "targetScreen"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .param p2, "displayData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;

    .prologue
    .line 140
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getX()I

    move-result v2

    .line 141
    .local v2, "x":I
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getY()I

    move-result v3

    .line 142
    .local v3, "y":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getWidth(Landroid/content/Context;)I

    move-result v4

    iget v5, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 144
    .local v1, "width":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;->getHeight(Landroid/content/Context;)I

    move-result v4

    iget v5, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    .local v0, "height":I
    iget v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceWidth:I

    if-gt v2, v4, :cond_0

    iget v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->sourceWidth:I

    if-gt v3, v4, :cond_0

    neg-int v4, v1

    if-lt v2, v4, :cond_0

    neg-int v4, v0

    if-ge v3, v4, :cond_2

    .line 151
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "DISPLAY_DATA_INTENT: Image out of bounds!"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 152
    :cond_1
    const/4 v4, 0x0

    .line 154
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearDisplay()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->clearScreen()V

    .line 200
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public onResuming(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 0
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 190
    return-void
.end method

.method public processDisplayData(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)V
    .locals 11
    .param p1, "displayData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;
    .param p2, "ctrlExt"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->determineScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    move-result-object v2

    .line 69
    .local v2, "screen":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Detected screen: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->isDisplayDataWithinBoundraries(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ignored invalid display data."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->getLayoutFactory(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;

    move-result-object v9

    .line 78
    .local v9, "layoutFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;
    invoke-interface {v9, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutFactory;->assembleLayout(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;

    move-result-object v8

    .line 80
    .local v8, "layout":Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->getInflatedView()Landroid/view/View;

    move-result-object v6

    .line 81
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6, v4}, Landroid/view/View;->setLeft(I)V

    .line 82
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetWidth:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setRight(I)V

    .line 83
    invoke-virtual {v6, v4}, Landroid/view/View;->setTop(I)V

    .line 84
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->targetHeight:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setBottom(I)V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    if-nez v0, :cond_3

    .line 87
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getCid()I

    move-result v1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-direct {v7, v10, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;-><init>(ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/View;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    .line 90
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->generateInitialResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->setTouchListenerProvider(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/AccessoryScreenLayout;->getLayoutValues()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v0, v1, v6, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->update(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Landroid/view/View;Landroid/util/SparseArray;)V

    .line 95
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->mLastMasterControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    .line 186
    return-void
.end method

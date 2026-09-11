.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;
.super Landroid/widget/RelativeLayout;
.source "WatchFaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;
    }
.end annotation


# static fields
.field private static final PICK_UP_ON_LONG_RESS:Z


# instance fields
.field private cellHeight:I

.field private cellWidth:I

.field private mCellBorderPaint:Landroid/graphics/Paint;

.field private mCellConflictPaint:Landroid/graphics/Paint;

.field private mCellFreePaint:Landroid/graphics/Paint;

.field private mCellHoverBitmap:Landroid/graphics/Bitmap;

.field private mCellHoverPaint:Landroid/graphics/Paint;

.field private mCellPreviewBackgroundPaint:Landroid/graphics/Paint;

.field private mCellUsedBitmap:Landroid/graphics/Bitmap;

.field private mCellUsedPaint:Landroid/graphics/Paint;

.field private mCells:[[I

.field private mHoverLocation:[I

.field private mLongPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;

.field private mPath:Landroid/graphics/Path;

.field private mPreviewMode:Z

.field private mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

.field private mWatchFaceListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;

.field private numColnums:I

.field private numRows:I

.field private viewToWatchHeightRatio:F

.field private viewToWatchWidthRatio:F

.field private watchToViewHeightRatio:F

.field private watchToViewWidthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->init()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->init()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->applyWatchFace()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->updatePreviewAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->savePreviewImage()V

    return-void
.end method

.method private addView(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V
    .locals 7
    .param p1, "widgetView"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .param p2, "position"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 275
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mLongPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;

    invoke-virtual {p1, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 276
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setLongClickable(Z)V

    .line 279
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    div-float v5, v6, v5

    mul-float v2, v4, v5

    .line 280
    .local v2, "widgetSnappedLocationX":F
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    div-float v5, v6, v5

    mul-float v3, v4, v5

    .line 281
    .local v3, "widgetSnappedLocationY":F
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setX(F)V

    .line 282
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {p1, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setY(F)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    mul-float v1, v4, v5

    .line 286
    .local v1, "viewWidth":F
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    mul-float v0, v4, v5

    .line 287
    .local v0, "viewHeight":F
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, v1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 288
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, v0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 289
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->invalidate()V

    .line 290
    return-void
.end method

.method private addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;II)Z
    .locals 5
    .param p1, "view"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 249
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v4

    invoke-virtual {v3, p2, p3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->addWidget(IILcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    move-result-object v1

    .line 251
    .local v1, "position":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 253
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    if-eqz v3, :cond_0

    .line 255
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->removeView(Landroid/view/View;)V

    .line 260
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mLongPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;

    invoke-virtual {p1, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 262
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addView(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    .line 263
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->notifyWatchFaceUpdated()V

    .line 264
    const/4 v3, 0x1

    .line 266
    :goto_1
    return v3

    .line 258
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .end local p1    # "view":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .local v2, "view":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    move-object p1, v2

    .end local v2    # "view":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .restart local p1    # "view":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    goto :goto_0

    .line 266
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private applyWatchFace()V
    .locals 6

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->removeAllViews()V

    .line 169
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->calculateRatios()V

    .line 170
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mLongPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;

    .line 171
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v3

    .line 172
    .local v3, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 173
    .local v1, "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .line 175
    .local v2, "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    invoke-direct {p0, v2, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addView(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    goto :goto_0

    .line 177
    .end local v1    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    .end local v2    # "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->invalidate()V

    .line 178
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->notifyWatchFaceUpdated()V

    .line 179
    return-void
.end method

.method private calculateRatios()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getMaxWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    .line 305
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getMaxHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    .line 306
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 307
    :cond_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    div-float v0, v3, v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    .line 308
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    div-float v0, v3, v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    .line 310
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New widthRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New heightRation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 315
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->prepareBorderPath()V

    .line 317
    :cond_3
    return-void
.end method

.method private drawBackgroundGrid(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPreviewMode:Z

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellPreviewBackgroundPaint:Landroid/graphics/Paint;

    .line 363
    .local v5, "paint":Landroid/graphics/Paint;
    :goto_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numColnums:I

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellWidth:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    mul-float v3, v0, v2

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numRows:I

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellHeight:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    mul-float v4, v0, v2

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 365
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPreviewMode:Z

    if-nez v0, :cond_3

    .line 367
    const/4 v10, 0x0

    .line 368
    .local v10, "startX":I
    const/4 v11, 0x0

    .line 369
    .local v11, "startY":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numColnums:I

    if-ge v8, v0, :cond_2

    .line 370
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellWidth:I

    mul-int v10, v8, v0

    .line 371
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numRows:I

    if-ge v9, v0, :cond_1

    .line 372
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellHeight:I

    mul-int v11, v9, v0

    move-object v6, p0

    move-object v7, p1

    .line 373
    invoke-direct/range {v6 .. v11}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->drawCellBackground(Landroid/graphics/Canvas;IIII)V

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 362
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "startX":I
    .end local v11    # "startY":I
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellFreePaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 369
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "startX":I
    .restart local v11    # "startY":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 377
    .end local v9    # "j":I
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 381
    .end local v8    # "i":I
    .end local v10    # "startX":I
    .end local v11    # "startY":I
    :cond_3
    return-void
.end method

.method private drawCellBackground(Landroid/graphics/Canvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "startX"    # I
    .param p5, "startY"    # I

    .prologue
    const/4 v4, 0x0

    .line 392
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCells:[[I

    aget-object v0, v0, p2

    aget v0, v0, p3

    packed-switch v0, :pswitch_data_0

    .line 409
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellConflictPaint:Landroid/graphics/Paint;

    .line 412
    .local v5, "paint":Landroid/graphics/Paint;
    :goto_0
    int-to-float v0, p4

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    mul-float/2addr v1, v0

    int-to-float v0, p5

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellWidth:I

    add-int/2addr v0, p4

    int-to-float v0, v0

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellHeight:I

    add-int/2addr v0, p5

    int-to-float v0, v0

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    mul-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 416
    .end local v5    # "paint":Landroid/graphics/Paint;
    :goto_1
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellUsedBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, p4

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    mul-float/2addr v1, v2

    int-to-float v2, p5

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 402
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellHoverBitmap:Landroid/graphics/Bitmap;

    int-to-float v1, p4

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    mul-float/2addr v1, v2

    int-to-float v2, p5

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    mul-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 406
    :pswitch_3
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellConflictPaint:Landroid/graphics/Paint;

    .line 407
    .restart local v5    # "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRelativeWatchCoordinate([IFF)V
    .locals 3
    .param p1, "relativeLocation"    # [I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 340
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 341
    .local v0, "xInWatch":I
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    mul-float/2addr v2, p3

    float-to-int v1, v2

    .line 342
    .local v1, "yInWatch":I
    const/4 v2, 0x0

    aput v0, p1, v2

    .line 343
    const/4 v2, 0x1

    aput v1, p1, v2

    .line 346
    return-void
.end method

.method private getRelativeWidgetMiddle([ILcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;FF)V
    .locals 4
    .param p1, "relativeLocation"    # [I
    .param p2, "view"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .param p3, "locationX"    # F
    .param p4, "locationY"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 328
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchWidthRatio:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    sub-float v0, p3, v0

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->viewToWatchHeightRatio:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float v1, p4, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getRelativeWatchCoordinate([IFF)V

    .line 332
    return-void
.end method

.method private getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .locals 2

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 551
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFaceListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;

    .line 106
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->setBackgroundColor(I)V

    .line 108
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 110
    .local v1, "density":F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellBorderPaint:Landroid/graphics/Paint;

    .line 111
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellBorderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellBorderPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    mul-float v3, v5, v1

    aput v3, v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    aput v3, v2, v7

    const/4 v3, 0x2

    mul-float v4, v5, v1

    aput v4, v2, v3

    const/4 v3, 0x3

    mul-float v4, v5, v1

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 118
    .local v0, "dashPathEffect":Landroid/graphics/DashPathEffect;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 119
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellFreePaint:Landroid/graphics/Paint;

    .line 120
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellFreePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellPreviewBackgroundPaint:Landroid/graphics/Paint;

    .line 122
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellPreviewBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellHoverPaint:Landroid/graphics/Paint;

    .line 124
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellHoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellUsedPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellUsedPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellConflictPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellConflictPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020085

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellHoverBitmap:Landroid/graphics/Bitmap;

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCellUsedBitmap:Landroid/graphics/Bitmap;

    .line 133
    return-void
.end method

.method private notifyWatchFaceUpdated()V
    .locals 2

    .prologue
    .line 471
    const-string v0, "Will update listener directly"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 472
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFaceListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFaceListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;->onUpdated(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 476
    :cond_0
    return-void
.end method

.method private prepareBorderPath()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 422
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numColnums:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numRows:I

    if-lez v5, :cond_0

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    cmpg-float v5, v5, v8

    if-lez v5, :cond_0

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_1

    .line 449
    :cond_0
    return-void

    .line 426
    :cond_1
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPath:Landroid/graphics/Path;

    .line 427
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numColnums:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numRows:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x4

    new-array v4, v5, [F

    .line 429
    .local v4, "pathLinesArray":[F
    const/4 v3, 0x0

    .line 430
    .local v3, "offset":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numColnums:I

    if-ge v0, v5, :cond_2

    .line 431
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellWidth:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 432
    add-int/lit8 v3, v3, 0x1

    aput v8, v4, v3

    .line 433
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellWidth:I

    mul-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 434
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numRows:I

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellHeight:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewWidthRatio:F

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 435
    add-int/lit8 v3, v3, 0x1

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_2
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numRows:I

    if-ge v1, v5, :cond_3

    .line 438
    aput v8, v4, v3

    .line 439
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellHeight:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 440
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numColnums:I

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellWidth:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 441
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellHeight:I

    mul-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->watchToViewHeightRatio:F

    div-float v6, v7, v6

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 442
    add-int/lit8 v3, v3, 0x1

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_3
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_2
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 446
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPath:Landroid/graphics/Path;

    aget v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    aget v7, v4, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 447
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPath:Landroid/graphics/Path;

    add-int/lit8 v2, v2, 0x1

    aget v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    aget v7, v4, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private savePreviewImage()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWidth()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getHeight()I

    move-result v11

    if-nez v11, :cond_2

    .line 557
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 558
    const-string v11, "Watchface has not been laid out, no preview update"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0019

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    .line 564
    .local v7, "previewWidth":I
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c001a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v6, v11

    .line 566
    .local v6, "previewHeight":I
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 568
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPreviewMode:Z

    .line 569
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->draw(Landroid/graphics/Canvas;)V

    .line 570
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 571
    invoke-static {v0, v7, v6, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 572
    iput-boolean v14, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mPreviewMode:Z

    .line 573
    const/4 v8, 0x0

    .line 574
    .local v8, "stream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 575
    .local v4, "file":Ljava/io/File;
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getThumbnailImageUri()Landroid/net/Uri;

    move-result-object v10

    .line 576
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_6

    .line 578
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 605
    :cond_3
    :goto_1
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v0, v11, v12, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 606
    if-eqz v4, :cond_4

    .line 607
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setThumbnailUri(Landroid/net/Uri;)V

    .line 610
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v2

    .line 612
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 613
    const-string v11, "Could not save watchFace preview to file"

    invoke-static {v11, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 579
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 580
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 581
    const-string v11, "FileNotFoundException: Could not save watchFace preview to file. File may have been a drawable resource. Will try to make a new file"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 585
    :cond_5
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 586
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_3
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v8    # "stream":Ljava/io/OutputStream;
    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .restart local v8    # "stream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 593
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_1

    .line 587
    :catch_2
    move-exception v3

    .line 588
    .end local v8    # "stream":Ljava/io/OutputStream;
    .local v3, "e2":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 589
    const-string v11, "FileNotFoundException: Could not make new file, returning"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 596
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e2":Ljava/io/FileNotFoundException;
    .restart local v8    # "stream":Ljava/io/OutputStream;
    :cond_6
    :try_start_4
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 597
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :try_start_5
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .end local v8    # "stream":Ljava/io/OutputStream;
    .local v9, "stream":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    move-object v8, v9

    .line 603
    .end local v9    # "stream":Ljava/io/OutputStream;
    .restart local v8    # "stream":Ljava/io/OutputStream;
    goto/16 :goto_1

    .line 598
    :catch_3
    move-exception v2

    .line 599
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 600
    const-string v11, "FileNotFoundException: Could not save watchFace preview to file"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 598
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .line 587
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "stream":Ljava/io/OutputStream;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "file":Ljava/io/File;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method private updatePreviewAsync()V
    .locals 2

    .prologue
    .line 514
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 546
    return-void
.end method


# virtual methods
.method public addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Z
    .locals 5
    .param p1, "widgetView"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .prologue
    .line 219
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->addWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    move-result-object v1

    .line 220
    .local v1, "position":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 222
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    if-eqz v3, :cond_0

    .line 224
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->removeView(Landroid/view/View;)V

    .line 232
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mLongPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceLongPressListener;

    invoke-virtual {p1, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addView(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    .line 235
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->notifyWatchFaceUpdated()V

    .line 236
    const/4 v3, 0x1

    .line 238
    :goto_1
    return v3

    .line 227
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .end local p1    # "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .local v2, "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    move-object p1, v2

    .end local v2    # "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .restart local p1    # "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    goto :goto_0

    .line 238
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;FFZ)Z
    .locals 3
    .param p1, "view"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .param p2, "locationX"    # F
    .param p3, "locationY"    # F
    .param p4, "center"    # Z

    .prologue
    .line 194
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 195
    .local v0, "relativeLocation":[I
    if-eqz p4, :cond_0

    .line 196
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getRelativeWidgetMiddle([ILcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;FF)V

    .line 200
    :goto_0
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;II)Z

    move-result v1

    return v1

    .line 198
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getRelativeWatchCoordinate([IFF)V

    goto :goto_0
.end method

.method public clearWatchFace()V
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->removeAllViews()V

    .line 627
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->removeAllWidgets()V

    .line 628
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->invalidate()V

    .line 629
    return-void
.end method

.method public dropPickedUpWidgetBack(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Z
    .locals 1
    .param p1, "widgetView"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .prologue
    const/4 v0, -0x1

    .line 293
    invoke-direct {p0, p1, v0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;II)Z

    move-result v0

    return v0
.end method

.method public endHover()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mHoverLocation:[I

    .line 484
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->endHover()V

    .line 485
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->invalidate()V

    .line 486
    return-void
.end method

.method public getWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    return-object v0
.end method

.method public hover(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Landroid/view/DragEvent;)V
    .locals 5
    .param p1, "v"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .param p2, "e"    # Landroid/view/DragEvent;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mHoverLocation:[I

    if-nez v1, :cond_0

    .line 459
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mHoverLocation:[I

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mHoverLocation:[I

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getRelativeWidgetMiddle([ILcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;FF)V

    .line 463
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mHoverLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mHoverLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->hover(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;II)Z

    move-result v0

    .line 465
    .local v0, "updated":Z
    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->invalidate()V

    .line 468
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->drawBackgroundGrid(Landroid/graphics/Canvas;)V

    .line 354
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 355
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->onPause()V

    .line 634
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 299
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->calculateRatios()V

    .line 300
    return-void
.end method

.method public removeWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Z)Z
    .locals 3
    .param p1, "view"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .param p2, "pickup"    # Z

    .prologue
    .line 204
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->removeWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)Z

    move-result v0

    .line 205
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->notifyWatchFaceUpdated()V

    .line 208
    :cond_0
    return v0
.end method

.method public setWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 2
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 142
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getNumColnums()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numColnums:I

    .line 143
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getNumRows()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->numRows:I

    .line 144
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCellWidth()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellWidth:I

    .line 145
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCellHeight()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->cellHeight:I

    .line 146
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCells()[[I

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->mCells:[[I

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->applyWatchFace()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 153
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public updatePreview()V
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    const-string v1, "Will wait before doing preview"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 493
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 494
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 511
    .end local v0    # "viewTreeObserver":Landroid/view/ViewTreeObserver;
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->updatePreviewAsync()V

    .line 508
    const-string v1, "Will update listener after preview"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

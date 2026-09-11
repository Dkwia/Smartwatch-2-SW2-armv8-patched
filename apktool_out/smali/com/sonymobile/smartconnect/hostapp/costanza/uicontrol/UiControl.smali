.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
.super Ljava/lang/Object;
.source "UiControl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;
    }
.end annotation


# static fields
.field protected static final NO_KEY:I = -0x1

.field protected static final NO_VIEW_ID:I = -0x1

.field public static final UPDATE_INTERVAL_MINUTE:I = 0xea60

.field public static final UPDATE_INTERVAL_SECOND:I = 0x3e8


# instance fields
.field private mBackgroundCid:I

.field private mButtonCid:I

.field private final mClickProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

.field private mInvalidateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

.field protected mIsDirty:Z

.field private mIsLongClickable:Z

.field protected mIsSecondlyUpdatesAllowedInLpMode:Z

.field private mIsShortClickable:Z

.field private mIsUpdatable:Z

.field private mKey:I

.field protected mParent:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

.field protected mRect:Landroid/graphics/Rect;

.field private mShortPressCid:I

.field private mShortPressColor:I

.field private mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

.field private mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field protected mTouchResourcesEnabled:Z

.field protected mTouchUpdateNeededFlag:Z

.field private mUpdateInterval:I

.field protected mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;-><init>(Landroid/view/View;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isUpdatable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsDirty:Z

    .line 48
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mViewId:I

    .line 50
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mKey:I

    .line 54
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    .line 55
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mButtonCid:I

    .line 56
    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressColor:I

    .line 57
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressCid:I

    .line 60
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsUpdatable:Z

    .line 62
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mUpdateInterval:I

    .line 66
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTouchResourcesEnabled:Z

    .line 68
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .line 70
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .line 78
    iput-boolean p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsUpdatable:Z

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mView:Landroid/view/View;

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mViewId:I

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsShortClickable:Z

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsLongClickable:Z

    .line 84
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->extractRectangle(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mRect:Landroid/graphics/Rect;

    .line 86
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsUpdatable:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    invoke-direct {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mClickProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mClickProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    goto :goto_0
.end method

.method private extractRectangle(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v1

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteTop(Landroid/view/View;)I

    move-result v2

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteTop(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private generateBackgroundResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 7
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p4, "background"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    .line 222
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const-string v3, "Creating background node: %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_0
    instance-of v3, p4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_2

    .line 227
    check-cast p4, Landroid/graphics/drawable/ColorDrawable;

    .end local p4    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 229
    .local v0, "color":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v2, "r":Landroid/graphics/Rect;
    invoke-static {p5}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 231
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 232
    invoke-static {p5}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteTop(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 233
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 235
    invoke-virtual {p1, p2, v0, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getBox(Ljava/util/List;IILandroid/graphics/Rect;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    .line 252
    .end local v0    # "color":I
    .end local v2    # "r":Landroid/graphics/Rect;
    :goto_0
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    if-eq v3, v6, :cond_1

    .line 253
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_1
    return-void

    .line 236
    .restart local p4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v3, p4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 237
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 238
    .local v1, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .end local p4    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 239
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v1, v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 241
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {p1, p2, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    goto :goto_0

    .line 242
    .end local v1    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .restart local p4    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-eqz v3, :cond_4

    .line 243
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 244
    .restart local v1    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v1, v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 246
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {p1, p2, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    goto :goto_0

    .line 249
    .end local v1    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_4
    iput v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    goto :goto_0
.end method

.method private generatePressedStateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;)V
    .locals 7
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p4, "background"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    const/4 v6, 0x0

    .line 260
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    const-string v3, "Creating pressed state resources: %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_0
    instance-of v3, p4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    move-object v3, p4

    .line 265
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressColor:I

    .line 280
    :cond_1
    :goto_0
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressCid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v1

    .line 282
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;-><init>()V

    .line 283
    .local v2, "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    invoke-virtual {v2, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxLeft(I)V

    .line 284
    invoke-virtual {v2, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxTop(I)V

    .line 285
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxRight(I)V

    .line 286
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxBottom(I)V

    .line 287
    invoke-static {p4}, Lcom/sonymobile/smartconnect/hostapp/util/TransparencyChecker;->isDrawableOpaque(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenOpaque(Z)V

    .line 288
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressCid:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setResourceCid(I)V

    .line 289
    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    :cond_2
    return-void

    .line 266
    :cond_3
    instance-of v3, p4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 267
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .local v0, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    move-object v3, p4

    .line 268
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 269
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v0, v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 271
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {p1, p2, v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressCid:I

    goto :goto_0

    .line 273
    .end local v0    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_4
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 275
    .restart local v0    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v0, v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 277
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {p1, p2, v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressCid:I

    goto/16 :goto_0
.end method

.method private notifyInvalidateListener()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mInvalidateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mInvalidateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

    invoke-interface {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;->onInvalidate(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public allowUpdatesEverySecondInLowPowerMode(Z)V
    .locals 0
    .param p1, "allowSecondlyUpdates"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsSecondlyUpdatesAllowedInLpMode:Z

    .line 434
    return-void
.end method

.method protected connectTouchProcessors(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V
    .locals 1
    .param p1, "aefEventListener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mClickProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mClickProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;->setAefEventListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    .line 335
    :cond_0
    return-void
.end method

.method public disableTouchResources()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTouchResourcesEnabled:Z

    .line 426
    return-void
.end method

.method public findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 313
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mKey:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mButtonCid:I

    if-ne v0, p1, :cond_1

    .line 316
    .end local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findUiControlByViewId(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 306
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mViewId:I

    if-ne v0, p1, :cond_0

    .line 309
    .end local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    const/4 v1, -0x1

    .line 144
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsDirty:Z

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 147
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 148
    const/4 v0, 0x0

    new-array v7, v0, [I

    .line 149
    .local v7, "stateSetUnpressed":[I
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 150
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mView:Landroid/view/View;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->generateBackgroundResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 154
    .end local v7    # "stateSetUnpressed":[I
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->generateTouchControl(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 164
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mButtonCid:I

    if-eq v0, v1, :cond_3

    .line 158
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mButtonCid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_3
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    if-eq v0, v1, :cond_1

    .line 161
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected generateTouchControl(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTouchResourcesEnabled:Z

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const-string v0, "Creating touch control for %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsDirty:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 195
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_3

    .line 196
    const/4 v0, 0x1

    new-array v11, v0, [I

    const/4 v0, 0x0

    const v1, 0x10100a7

    aput v1, v11, v0

    .line 197
    .local v11, "stateSetPressed":[I
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 198
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mView:Landroid/view/View;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->generatePressedStateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/view/View;Ljava/util/List;)V

    .line 203
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    .end local v11    # "stateSetPressed":[I
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsShortClickable:Z

    iget-boolean v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsLongClickable:Z

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mViewId:I

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressColor:I

    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressColor:I

    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressCid:I

    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mShortPressCid:I

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getTouchResourceControl(Ljava/util/List;Landroid/graphics/Rect;ZZIIIII)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mButtonCid:I

    .line 207
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->scheduleTouchUpdate()V

    .line 210
    :cond_4
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mButtonCid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 211
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mButtonCid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBackgroundCid()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mBackgroundCid:I

    return v0
.end method

.method public getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method protected getInvalidateListener()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mInvalidateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

    return-object v0
.end method

.method protected getParent()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mParent:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    return-object v0
.end method

.method public getRectangle()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getTargetColorMode()Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    return-object v0
.end method

.method protected getTargetState()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    return-object v0
.end method

.method protected getTouchProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mClickProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/touch/ClickProcessor;

    return-object v0
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mUpdateInterval:I

    return v0
.end method

.method protected getViewId()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mViewId:I

    return v0
.end method

.method public indexOf(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)I
    .locals 1
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 324
    const/4 v0, -0x1

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->invalidate(Z)V

    .line 362
    return-void
.end method

.method protected invalidate(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->extractRectangle(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mRect:Landroid/graphics/Rect;

    .line 357
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->invalidate()V

    .line 358
    return-void
.end method

.method protected invalidate(Z)V
    .locals 1
    .param p1, "markAsDirty"    # Z

    .prologue
    .line 365
    if-eqz p1, :cond_0

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsDirty:Z

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->notifyInvalidateListener()V

    .line 369
    return-void
.end method

.method protected isClickable()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsShortClickable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsLongClickable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTouchLockAppropriate()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method protected isTouchUpdateNeeded()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTouchUpdateNeededFlag:Z

    return v0
.end method

.method protected markAsClean()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsDirty:Z

    .line 378
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 296
    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    .line 297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mIsDirty:Z

    .line 298
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->extractRectangle(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mRect:Landroid/graphics/Rect;

    .line 300
    :cond_1
    return-void
.end method

.method public parent()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mParent:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    return-object v0
.end method

.method public refreshView(Landroid/view/View;)V
    .locals 0
    .param p1, "updatedView"    # Landroid/view/View;

    .prologue
    .line 303
    return-void
.end method

.method public remove(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V
    .locals 0
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 399
    return-void
.end method

.method protected removeFromParent()V
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getParent()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v0

    .line 386
    .local v0, "uiControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->isTouchUpdateNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->scheduleTouchUpdate()V

    .line 390
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->remove(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)V

    .line 392
    :cond_1
    return-void
.end method

.method protected scheduleTouchUpdate()V
    .locals 2

    .prologue
    .line 417
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTouchUpdateNeededFlag:Z

    .line 418
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->getParent()Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    move-result-object v0

    .line 419
    .local v0, "parent":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->scheduleTouchUpdate()V

    .line 422
    :cond_0
    return-void
.end method

.method public setInvalidateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mInvalidateListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl$InvalidateListener;

    .line 353
    return-void
.end method

.method protected setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mKey:I

    .line 123
    return-void
.end method

.method protected setTargetColorMode(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 0
    .param p1, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetColorMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .line 104
    return-void
.end method

.method protected setTargetState(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)V
    .locals 0
    .param p1, "accState"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mTargetState:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .line 112
    return-void
.end method

.method protected setUpdateInterval(I)V
    .locals 0
    .param p1, "updateInterval"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->mUpdateInterval:I

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;->toString(Ljava/lang/StringBuilder;I)V

    .line 172
    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    return-void
.end method

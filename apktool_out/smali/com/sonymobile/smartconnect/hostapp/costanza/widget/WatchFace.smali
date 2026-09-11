.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
.super Ljava/lang/Object;
.source "WatchFace.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    }
.end annotation


# static fields
.field public static final CONFLICT:I = 0x3

.field public static DISPLAY_MODE_GRAYSCALE:I = 0x0

.field public static DISPLAY_MODE_NORMAL:I = 0x0

.field public static final FREE:I = 0x0

.field public static final HOVER:I = 0x2

.field public static final USED:I = 0x1

.field public static final WIDGET:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient cells:[[I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCid:I

.field private mDisplayId:I

.field private mDisplayMode:I

.field private transient mHoverWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

.field private mIsInstalled:Z

.field private mIsMarkedForDeletion:Z

.field private mIsSelected:Z

.field private mLastEditedTime:J

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mName:Ljava/lang/String;

.field private mNumColnums:I

.field private mNumRows:I

.field private transient mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

.field private transient mThumbnailUri:Landroid/net/Uri;

.field private mThumbnailUriString:Ljava/lang/String;

.field private widgetPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->DISPLAY_MODE_GRAYSCALE:I

    .line 79
    const/4 v0, 0x2

    sput v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->DISPLAY_MODE_NORMAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "numColumns"    # I
    .param p2, "numRows"    # I
    .param p3, "cellWidth"    # I
    .param p4, "cellHeight"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    .line 104
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    .line 105
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellWidth:I

    .line 106
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellHeight:I

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->init()V

    .line 108
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellWidth:I

    return v0
.end method

.method private addWidgetPosition(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V
    .locals 1
    .param p1, "widgetPosition"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setLastEditedTime()V

    .line 318
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setOccupiedState(ILcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 321
    return-void
.end method

.method private isFree(IIII)Z
    .locals 10
    .param p1, "startColnum"    # I
    .param p2, "startRow"    # I
    .param p3, "widgetWidthColnums"    # I
    .param p4, "widgetWidthRows"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 500
    add-int/lit8 v6, p3, -0x1

    add-int v2, p1, v6

    .line 501
    .local v2, "loopUntilColnum":I
    add-int/lit8 v6, p4, -0x1

    add-int v3, p2, v6

    .line 503
    .local v3, "loopUntilRow":I
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    if-lt v2, v6, :cond_1

    .line 504
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    const-string v6, "Widget not placed, sticks out to the right, x = %d, colnums= %d, loopingUntil = %d "

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    :cond_0
    :goto_0
    return v4

    .line 509
    :cond_1
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    if-lt v3, v6, :cond_2

    .line 510
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 511
    const-string v6, "Widget not placed, sticks out at bottom, x = %d, rows= %d, loopingUntil = %d "

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_2
    if-gez p1, :cond_3

    .line 516
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    const-string v6, "Widget not placed, sticks out to left, x = %d, rows= %d, loopingUntil = %d "

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 521
    :cond_3
    if-gez p2, :cond_4

    .line 522
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 523
    const-string v6, "Widget not placed, sticks out at top, x = %d, rows= %d, loopingUntil = %d "

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 528
    :cond_4
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-gt v0, v2, :cond_7

    .line 529
    move v1, p2

    .local v1, "j":I
    :goto_2
    if-gt v1, v3, :cond_6

    .line 530
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    aget-object v6, v6, v0

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    .line 531
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 532
    const-string v6, "Widget not placed, cell %d:%d was taken"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 529
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 528
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    .end local v1    # "j":I
    :cond_7
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 539
    const-string v6, "Widget is free to be placed starting in cell %d:%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move v4, v5

    .line 541
    goto/16 :goto_0
.end method

.method private isFree(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)Z
    .locals 4
    .param p1, "widgetPosition"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 424
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v0

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v1

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v2

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isFree(IIII)Z

    move-result v0

    return v0
.end method

.method private setOccupiedState(IIIII)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "widthColnums"    # I
    .param p5, "widthRows"    # I

    .prologue
    .line 469
    add-int/lit8 v4, p4, -0x1

    add-int v2, p2, v4

    .line 470
    .local v2, "loopUntilColnum":I
    add-int/lit8 v4, p5, -0x1

    add-int v3, p3, v4

    .line 472
    .local v3, "loopUntilRow":I
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    if-ge v2, v4, :cond_0

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    if-lt v3, v4, :cond_2

    .line 473
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 474
    const-string v4, "Can\'t set occupied positions, out of bounds"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 487
    :cond_1
    return-void

    .line 479
    :cond_2
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 480
    move v1, p3

    .local v1, "j":I
    :goto_1
    if-gt v1, v3, :cond_4

    .line 481
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    aget-object v4, v4, v0

    aput p1, v4, v1

    .line 482
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 483
    const-string v4, "Set as used, cell %d:%d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setOccupiedState(ILcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "widgetPosition"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 414
    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v2

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v3

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v4

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setOccupiedState(IIIII)V

    .line 417
    return-void
.end method

.method private updateHover(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V
    .locals 4
    .param p1, "widgetPosition"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->clearHover()V

    .line 570
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getStartColnum()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v2

    if-gt v0, v2, :cond_4

    .line 571
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 570
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getStartRow()I

    move-result v1

    .local v1, "j":I
    :goto_1
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$600(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 576
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    if-ge v1, v2, :cond_2

    if-gez v1, :cond_3

    .line 575
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 580
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    or-int/lit8 v3, v3, 0x2

    aput v3, v2, v1

    goto :goto_2

    .line 583
    .end local v1    # "j":I
    :cond_4
    return-void
.end method


# virtual methods
.method public addWidget(IILcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    const/4 v0, 0x0

    .line 282
    if-nez p3, :cond_1

    .line 283
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const-string v1, "Widget null, returning false"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    invoke-virtual {p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v1

    if-nez v1, :cond_3

    .line 288
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string v1, "Widget width/height 0, cannot be placed"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual {p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxWidth:I

    if-gt v1, v2, :cond_4

    invoke-virtual {p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxHeight:I

    if-le v1, v2, :cond_5

    .line 293
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "Widget too big to fit on WatchFace"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 299
    :cond_5
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;IILcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .line 300
    .local v0, "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to place widget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 303
    :cond_6
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isFree(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 304
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->addWidgetPosition(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    goto :goto_0

    .line 311
    :cond_7
    invoke-virtual {p0, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->dropPickedUpWidgetBack(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    move-result-object v0

    goto :goto_0
.end method

.method public addWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    .locals 5
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    const/4 v2, 0x0

    .line 233
    if-nez p1, :cond_1

    .line 234
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const-string v3, "Widget null, returning false"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    :cond_0
    move-object v1, v2

    .line 269
    :goto_0
    return-object v1

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v3

    if-gtz v3, :cond_4

    .line 239
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    const-string v3, "Widget width/height 0, cannot be placed"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    :cond_3
    move-object v1, v2

    .line 242
    goto :goto_0

    .line 243
    :cond_4
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxWidth:I

    if-gt v3, v4, :cond_5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxHeight:I

    if-le v3, v4, :cond_7

    .line 244
    :cond_5
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    const-string v3, "Widget too big to fit on WatchFace"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    :cond_6
    move-object v1, v2

    .line 247
    goto :goto_0

    .line 250
    :cond_7
    const/4 v1, 0x0

    .line 252
    .local v1, "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->findFreePosition(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :try_end_0
    .catch Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    if-nez v1, :cond_a

    .line 260
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No position found for widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    :cond_8
    move-object v1, v2

    .line 263
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget: already on watch face"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    :cond_9
    move-object v1, v2

    .line 257
    goto/16 :goto_0

    .line 265
    .end local v0    # "e":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;
    :cond_a
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Placing widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 268
    :cond_b
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->addWidgetPosition(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    goto/16 :goto_0
.end method

.method public clearHover()V
    .locals 4

    .prologue
    .line 594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    if-ge v0, v2, :cond_1

    .line 595
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    if-ge v1, v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    and-int/lit8 v3, v3, -0x3

    aput v3, v2, v1

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method public dropPickedUpWidgetBack(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    .locals 3
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isFree(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 392
    .local v0, "addWidget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->addWidgetPosition(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    .line 393
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 403
    .end local v0    # "addWidget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :goto_0
    return-object v0

    .line 397
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    const-string v1, "No need to drop a picked up widget"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 402
    :cond_1
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 403
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    goto :goto_0
.end method

.method public endHover()V
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->clearHover()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mHoverWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 591
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 832
    if-ne p0, p1, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v1

    .line 834
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 835
    goto :goto_0

    .line 836
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 837
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 838
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 839
    .local v0, "other":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCid:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCid:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 840
    goto :goto_0
.end method

.method public findFreePosition(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    .locals 7
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 438
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->widgetPositions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 439
    .local v4, "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 440
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    throw v5

    .line 443
    .end local v4    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_1
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-direct {v4, p0, v6, v6, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;IILcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .line 444
    .restart local v4    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    if-ge v3, v5, :cond_4

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    if-ge v0, v5, :cond_3

    .line 446
    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v5

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I

    move-result v6

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isFree(IIII)Z

    move-result v2

    .line 448
    .local v2, "isFree":Z
    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {v4, v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->setPositionInCells(II)Z

    .line 454
    .end local v0    # "i":I
    .end local v2    # "isFree":Z
    .end local v4    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :goto_2
    return-object v4

    .line 445
    .restart local v0    # "i":I
    .restart local v2    # "isFree":Z
    .restart local v4    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    .end local v2    # "isFree":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "i":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellWidth:I

    return v0
.end method

.method public getCells()[[I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    return-object v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCid:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mDisplayId:I

    return v0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mDisplayMode:I

    return v0
.end method

.method public getLastEditedTime()J
    .locals 2

    .prologue
    .line 869
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mLastEditedTime:J

    return-wide v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxWidth:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumColnums()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    return v0
.end method

.method public getThumbnailImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUri:Landroid/net/Uri;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetsPositions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->widgetPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 824
    const/16 v0, 0x1f

    .line 825
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 826
    .local v1, "result":I
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCid:I

    add-int/lit8 v1, v2, 0x1f

    .line 827
    return v1
.end method

.method public hover(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;II)Z
    .locals 3
    .param p1, "v"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "update":Z
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mHoverWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    if-nez v1, :cond_1

    .line 553
    const/4 v0, 0x1

    .line 554
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v2

    invoke-direct {v1, p0, p2, p3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;IILcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mHoverWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 558
    :goto_0
    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mHoverWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->updateHover(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    .line 561
    :cond_0
    return v0

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mHoverWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-static {v1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;II)Z

    move-result v0

    goto :goto_0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setWidgetPositions(Ljava/util/ArrayList;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCellWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getNumColnums()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setMaxWidth(I)V

    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCellHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getNumRows()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setMaxHeight(I)V

    .line 117
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    .line 118
    return-void
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mIsInstalled:Z

    return v0
.end method

.method public isMarkedForDeletion()Z
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mIsMarkedForDeletion:Z

    return v0
.end method

.method public isNative()Z
    .locals 2

    .prologue
    .line 849
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCid:I

    sget v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->CID_START_VALUE:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mIsSelected:Z

    return v0
.end method

.method public markForDeletion()V
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mIsMarkedForDeletion:Z

    .line 862
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 877
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 878
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mHoverWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 879
    return-void
.end method

.method readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 376
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->cells:[[I

    .line 377
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->widgetPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 378
    .local v1, "position":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setOccupiedState(ILcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    goto :goto_0

    .line 380
    .end local v1    # "position":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_0
    return-object p0
.end method

.method public removeAllWidgets()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->endHover()V

    .line 363
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setLastEditedTime()V

    .line 365
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setOccupiedState(IIIII)V

    .line 366
    return-void
.end method

.method public removeWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)Z
    .locals 5
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .param p2, "pickup"    # Z

    .prologue
    const/4 v3, 0x0

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "positionToRemove":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->widgetPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 334
    .local v2, "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    move-object v1, v2

    .line 339
    .end local v2    # "widgetPosition":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_1
    if-eqz v1, :cond_3

    .line 340
    invoke-direct {p0, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setOccupiedState(ILcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    .line 341
    if-eqz p2, :cond_2

    .line 346
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 350
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mPickedUpWidgetPosition:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->updateHover(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)V

    .line 351
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setLastEditedTime()V

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 355
    :cond_3
    return v3
.end method

.method public setCellHeight(I)V
    .locals 0
    .param p1, "cellHeight"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellHeight:I

    .line 174
    return-void
.end method

.method public setCellWidth(I)V
    .locals 0
    .param p1, "cellWidth"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCellWidth:I

    .line 188
    return-void
.end method

.method protected setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 815
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mCid:I

    .line 816
    return-void
.end method

.method public setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mDisplayId:I

    .line 160
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 0
    .param p1, "displayMode"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mDisplayMode:I

    .line 230
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0
    .param p1, "isInstalled"    # Z

    .prologue
    .line 857
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mIsInstalled:Z

    .line 858
    return-void
.end method

.method public setLastEditedTime()V
    .locals 2

    .prologue
    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mLastEditedTime:J

    .line 874
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxHeight:I

    .line 202
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mMaxWidth:I

    .line 216
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mName:Ljava/lang/String;

    .line 607
    return-void
.end method

.method public setNumColnums(I)V
    .locals 0
    .param p1, "numColnums"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumColnums:I

    .line 132
    return-void
.end method

.method public setNumRows(I)V
    .locals 0
    .param p1, "numRows"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mNumRows:I

    .line 146
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 845
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mIsSelected:Z

    .line 846
    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "thumbnail"    # Landroid/net/Uri;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUri:Landroid/net/Uri;

    .line 625
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUriString:Ljava/lang/String;

    .line 626
    return-void
.end method

.method public setThumbnailUriString(Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbnailUriString"    # Ljava/lang/String;

    .prologue
    .line 629
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUri:Landroid/net/Uri;

    .line 630
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->mThumbnailUriString:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setWidgetPositions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->widgetPositions:Ljava/util/ArrayList;

    .line 639
    return-void
.end method

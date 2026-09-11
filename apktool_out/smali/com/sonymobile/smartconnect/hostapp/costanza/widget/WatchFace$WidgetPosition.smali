.class public Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
.super Ljava/lang/Object;
.source "WatchFace.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetPosition"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private endColnum:I

.field private endRow:I

.field private heightRows:I

.field private startColumn:I

.field private startRow:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

.field private widget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

.field private widthColumns:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;IILcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    .locals 0
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    invoke-virtual {p0, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .line 669
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->setPosition(II)Z

    .line 670
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 647
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 647
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 647
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 647
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 647
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->setPosition(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 647
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->endColnum:I

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .prologue
    .line 647
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->endRow:I

    return v0
.end method

.method private setPosition(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 745
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    .line 746
    .local v0, "oldStartColnum":I
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    .line 748
    .local v1, "oldStartRow":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    .line 749
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    .line 751
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->x:I

    .line 752
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->y:I

    .line 754
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    if-eqz v2, :cond_0

    .line 755
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->endColnum:I

    .line 756
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->endRow:I

    .line 759
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location in cells for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 763
    :cond_1
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 790
    if-ne p0, p1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return v1

    .line 792
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 793
    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 795
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 796
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 797
    .local v0, "other":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 798
    goto :goto_0

    .line 799
    :cond_4
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 800
    goto :goto_0

    .line 801
    :cond_5
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 802
    goto :goto_0

    .line 803
    :cond_6
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 804
    goto :goto_0
.end method

.method public getHeightRows()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    return v0
.end method

.method public getStartColnum()I
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    return v0
.end method

.method public getStartRow()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    return v0
.end method

.method public getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    return-object v0
.end method

.method public getWidthColnums()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 779
    const/16 v0, 0x1f

    .line 780
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 781
    .local v1, "result":I
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    add-int/lit8 v1, v2, 0x1f

    .line 782
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    add-int v1, v2, v3

    .line 783
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    add-int v1, v2, v3

    .line 784
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    add-int v1, v2, v3

    .line 785
    return v1
.end method

.method public setPositionInCells(II)Z
    .locals 2
    .param p1, "column"    # I
    .param p2, "row"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$700(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$800(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 682
    :cond_0
    const/4 v0, 0x0

    .line 686
    :goto_0
    return v0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v1

    mul-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->setPosition(II)Z

    .line 686
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    .locals 4
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    const/4 v0, 0x0

    .line 700
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 702
    if-nez p1, :cond_0

    .line 703
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    .line 704
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    .line 709
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    .line 707
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    if-nez v2, :cond_0

    const-string v1, ""

    .line 770
    .local v1, "widgetName":Ljava/lang/String;
    :goto_0
    const-string v2, "WidgetPosition %s. size: %d:%d in location %d:%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widthColumns:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->heightRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startColumn:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->startRow:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "returnString":Ljava/lang/String;
    return-object v0

    .line 769
    .end local v0    # "returnString":Ljava/lang/String;
    .end local v1    # "widgetName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->widget:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

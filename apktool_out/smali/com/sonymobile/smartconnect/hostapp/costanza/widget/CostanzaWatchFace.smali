.class public Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
.source "CostanzaWatchFace.java"


# static fields
.field public static final CELL_HEIGHT:I = 0x22

.field public static final CELL_WIDTH:I = 0x2b

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "cid"    # I

    .prologue
    const/4 v2, 0x5

    .line 24
    const/16 v0, 0x2b

    const/16 v1, 0x22

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;-><init>(IIII)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;->setCid(I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->init()V

    .line 34
    sget v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;->DISPLAY_MODE_GRAYSCALE:I

    sget v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;->DISPLAY_MODE_NORMAL:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;->setDisplayMode(I)V

    .line 35
    return-void
.end method

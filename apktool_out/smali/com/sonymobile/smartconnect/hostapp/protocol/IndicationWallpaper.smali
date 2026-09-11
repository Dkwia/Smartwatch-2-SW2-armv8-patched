.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationWallpaper.java"


# instance fields
.field private mAction:I

.field private mCid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 17
    const/16 v0, 0x98

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->type:I

    .line 18
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->mAction:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->mCid:I

    return v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 31
    const-string v0, "action"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const-string v0, "wallpaperCid"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->appendHexProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

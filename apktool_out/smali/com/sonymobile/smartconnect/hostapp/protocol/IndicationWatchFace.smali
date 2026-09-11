.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationWatchFace.java"


# static fields
.field public static final ACTION_CODE_SET:I = 0x0

.field public static final ACTION_GET_CURRENT:I = 0x1


# instance fields
.field private mAction:I

.field private mCid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 24
    const/16 v0, 0x95

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->type:I

    .line 25
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->mAction:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->mCid:I

    return v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 38
    const-string v0, "action"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v0, "watchFaceCid"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->appendHexProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

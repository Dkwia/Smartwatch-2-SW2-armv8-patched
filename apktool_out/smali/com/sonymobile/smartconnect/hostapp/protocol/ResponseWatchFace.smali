.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseWatchFace.java"


# static fields
.field public static final RESP_CODE_ALREADY_EXIST:I = 0x5

.field public static final RESP_CODE_INCONSISTENT_CID:I = 0x2

.field public static final RESP_CODE_OK:I = 0x0

.field public static final RESP_CODE_OTHER_PROBLEM:I = 0x6

.field public static final RESP_CODE_TOO_MANY:I = 0x4

.field public static final RESP_CODE_UNKNOWN_CID:I = 0x1

.field public static final RESP_CODE_WRONG_REF_CID:I = 0x3


# instance fields
.field private mAction:I

.field private mResult:I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 38
    const/16 v0, 0x8c

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->type:I

    .line 39
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mAction:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mResult:I

    return v0
.end method

.method public getTimestamp()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mValues:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mValues:[I

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mValues:[I

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mAction:I

    .line 48
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mResult:I

    .line 56
    return-void
.end method

.method public setValues([I)V
    .locals 0
    .param p1, "values"    # [I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mValues:[I

    .line 66
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 71
    const-string v0, "action"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "result"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "values"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->mValues:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

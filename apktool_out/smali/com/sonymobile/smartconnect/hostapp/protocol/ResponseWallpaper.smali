.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseWallpaper.java"


# static fields
.field public static final RESP_CODE_ALREADY_EXIST:I = 0x5

.field public static final RESP_CODE_OK:I = 0x0

.field public static final RESP_CODE_OTHER_PROBLEM:I = 0x6

.field public static final RESP_CODE_TOO_MANY:I = 0x4

.field public static final RESP_CODE_UNKNOWN_ACTION:I = 0x1

.field public static final RESP_CODE_WRONG_DIMENSIONS:I = 0x3

.field public static final RESP_CODE_WRONG_REF_CID:I = 0x2


# instance fields
.field private mAction:I

.field private mResult:I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 23
    const/16 v0, 0x97

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->type:I

    .line 24
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mAction:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mResult:I

    return v0
.end method

.method public getTimestamp()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mValues:[I

    array-length v0, v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mValues:[I

    aget v0, v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mValues:[I

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mAction:I

    .line 32
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mResult:I

    .line 40
    return-void
.end method

.method public setValues([I)V
    .locals 0
    .param p1, "values"    # [I

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mValues:[I

    .line 50
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 55
    const-string v0, "action"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v0, "result"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v0, "values"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->mValues:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

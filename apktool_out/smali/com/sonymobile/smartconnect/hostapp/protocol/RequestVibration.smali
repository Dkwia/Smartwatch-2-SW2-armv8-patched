.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestVibration.java"


# instance fields
.field private mOffDuration:I

.field private mOnDuration:I

.field private mRepeats:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "newMessageId"    # I
    .param p2, "onDuration"    # I
    .param p3, "offDuration"    # I
    .param p4, "repeats"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 26
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mOnDuration:I

    .line 27
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mOffDuration:I

    .line 28
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mRepeats:I

    .line 29
    const/16 v0, 0x81

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->type:I

    .line 30
    return-void
.end method


# virtual methods
.method public getOffDuration()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mOffDuration:I

    return v0
.end method

.method public getOnDuration()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mOnDuration:I

    return v0
.end method

.method public getRepeats()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mRepeats:I

    return v0
.end method

.method public setOffDuration(I)V
    .locals 0
    .param p1, "offDuration"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mOffDuration:I

    .line 46
    return-void
.end method

.method public setOnDuration(I)V
    .locals 0
    .param p1, "onDuration"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mOnDuration:I

    .line 38
    return-void
.end method

.method public setRepeats(I)V
    .locals 0
    .param p1, "repeats"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;->mRepeats:I

    .line 54
    return-void
.end method

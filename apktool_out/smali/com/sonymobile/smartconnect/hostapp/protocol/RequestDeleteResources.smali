.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestDeleteResources.java"


# instance fields
.field private mCidRangeFirst:I

.field private mCidRangeLast:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 22
    const/16 v0, 0x91

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCidRangeFirst()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->mCidRangeFirst:I

    return v0
.end method

.method public getCidRangeLast()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->mCidRangeLast:I

    return v0
.end method

.method public setCidRangeFirst(I)V
    .locals 0
    .param p1, "firstCid"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->mCidRangeFirst:I

    .line 31
    return-void
.end method

.method public setCidRangeLast(I)V
    .locals 0
    .param p1, "lastCid"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->mCidRangeLast:I

    .line 39
    return-void
.end method

.method public setSingleCid(I)V
    .locals 0
    .param p1, "singleCid"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->mCidRangeLast:I

    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->mCidRangeFirst:I

    .line 43
    return-void
.end method

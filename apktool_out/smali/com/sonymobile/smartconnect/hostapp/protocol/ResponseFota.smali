.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseFota.java"


# instance fields
.field private mAction:I

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 18
    const/4 v0, 0x7

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->type:I

    .line 19
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->mAction:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->mValue:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->mAction:I

    .line 28
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->mValue:I

    .line 36
    return-void
.end method

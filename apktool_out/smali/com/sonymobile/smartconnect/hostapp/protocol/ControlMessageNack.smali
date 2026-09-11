.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageNack;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ControlMessageNack.java"


# instance fields
.field private mNackMessageId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 13
    const/16 v0, 0xa

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageNack;->type:I

    .line 14
    return-void
.end method


# virtual methods
.method public getNackMessageId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageNack;->mNackMessageId:I

    return v0
.end method

.method public setNackMessageId(I)V
    .locals 0
    .param p1, "nackMessageId"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageNack;->mNackMessageId:I

    .line 24
    return-void
.end method

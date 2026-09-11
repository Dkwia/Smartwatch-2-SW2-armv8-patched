.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ConfirmationOpenResource.java"


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 16
    const/16 v0, 0x84

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;->type:I

    .line 17
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;->mStatus:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;->mStatus:I

    .line 25
    return-void
.end method

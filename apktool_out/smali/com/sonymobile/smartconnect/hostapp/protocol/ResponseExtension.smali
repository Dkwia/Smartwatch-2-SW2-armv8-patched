.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseExtension.java"


# instance fields
.field private mAction:I

.field private mExtensionCid:I

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 19
    const/16 v0, 0x69

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->type:I

    .line 20
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->mAction:I

    return v0
.end method

.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->mExtensionCid:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->mValue:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->mAction:I

    .line 29
    return-void
.end method

.method public setExtensionCid(I)V
    .locals 0
    .param p1, "mExtensionCid"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->mExtensionCid:I

    .line 45
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->mValue:I

    .line 37
    return-void
.end method

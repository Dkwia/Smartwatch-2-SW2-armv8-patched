.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationNotificationAllRead.java"


# instance fields
.field private mExtensionCid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 19
    const/16 v0, 0x8d

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 20
    return-void
.end method


# virtual methods
.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead;->mExtensionCid:I

    return v0
.end method

.method public setExtensionCid(I)V
    .locals 0
    .param p1, "extensionCid"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead;->mExtensionCid:I

    .line 34
    return-void
.end method

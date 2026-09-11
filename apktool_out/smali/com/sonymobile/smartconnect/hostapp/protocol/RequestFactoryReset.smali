.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestFactoryReset.java"


# static fields
.field public static final ACTION_EXECUTE:I = 0x1

.field public static final ACTION_INFO:I


# instance fields
.field private mAction:I

.field private mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 28
    const/16 v0, 0x14

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;->type:I

    .line 29
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;->mAction:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;->mStatus:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;->mAction:I

    .line 41
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;->mStatus:I

    .line 49
    return-void
.end method

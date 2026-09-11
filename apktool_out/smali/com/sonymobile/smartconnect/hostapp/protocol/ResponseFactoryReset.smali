.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseFactoryReset.java"


# static fields
.field public static final STATUS_DIRTY:I = 0x1

.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_RESET:I


# instance fields
.field private mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 28
    const/16 v0, 0x15

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;->type:I

    .line 29
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;->mStatus:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;->mStatus:I

    .line 37
    return-void
.end method

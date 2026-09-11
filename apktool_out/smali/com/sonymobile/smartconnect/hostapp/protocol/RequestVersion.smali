.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVersion;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestVersion.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 13
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVersion;->type:I

    .line 14
    return-void
.end method

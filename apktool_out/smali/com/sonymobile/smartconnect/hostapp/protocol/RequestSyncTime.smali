.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSyncTime;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestSyncTime.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 17
    const/16 v0, 0x82

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSyncTime;->type:I

    .line 18
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ControlMessageSetTimeReq.java"


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 16
    const/16 v0, 0x16

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;->type:I

    .line 17
    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;->mTime:J

    return-wide v0
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;->mTime:J

    .line 39
    return-void
.end method

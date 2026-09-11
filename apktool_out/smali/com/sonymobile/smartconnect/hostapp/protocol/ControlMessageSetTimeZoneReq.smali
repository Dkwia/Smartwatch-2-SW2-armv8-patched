.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ControlMessageSetTimeZoneReq.java"


# instance fields
.field private mTimeZoneOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 20
    const/16 v0, 0x85

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;->type:I

    .line 21
    return-void
.end method


# virtual methods
.method public getTimeZoneOffset()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;->mTimeZoneOffset:I

    return v0
.end method

.method public setTimeZoneOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;->mTimeZoneOffset:I

    .line 41
    return-void
.end method

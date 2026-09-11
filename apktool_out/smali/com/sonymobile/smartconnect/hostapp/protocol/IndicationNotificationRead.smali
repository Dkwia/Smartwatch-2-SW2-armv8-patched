.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationNotificationRead.java"


# instance fields
.field private mNotificationCid:I

.field private mRead:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 20
    const/16 v0, 0x86

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 21
    return-void
.end method


# virtual methods
.method public getNotificationCid()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->mNotificationCid:I

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->mRead:Z

    return v0
.end method

.method public setNotificationCid(I)V
    .locals 0
    .param p1, "notificationCid"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->mNotificationCid:I

    .line 35
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->mRead:Z

    .line 49
    return-void
.end method

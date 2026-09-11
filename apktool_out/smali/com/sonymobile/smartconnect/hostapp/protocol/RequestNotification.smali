.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestNotification.java"


# static fields
.field public static final ACTION_NOTIFICATION_ADDED:I


# instance fields
.field private mAction:I

.field private mValue:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "action"    # I
    .param p3, "value"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 28
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;->type:I

    .line 29
    invoke-virtual {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;->setAction(I)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;->setValue(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;->mAction:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;->mValue:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;->mAction:I

    .line 39
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;->mValue:I

    .line 47
    return-void
.end method

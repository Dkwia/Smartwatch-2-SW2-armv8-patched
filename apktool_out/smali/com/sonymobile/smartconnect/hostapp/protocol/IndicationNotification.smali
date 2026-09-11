.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationNotification.java"


# static fields
.field public static final NOTIF_IND_ACTION_NOTIFICATION_ACTION_1:I = 0x0

.field public static final NOTIF_IND_ACTION_NOTIFICATION_ACTION_2:I = 0x1

.field public static final NOTIF_IND_ACTION_NOTIFICATION_ACTION_3:I = 0x2


# instance fields
.field private mAction:I

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 38
    const/16 v0, 0x70

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->type:I

    .line 39
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->mAction:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->mValue:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->mAction:I

    .line 47
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->mValue:I

    .line 55
    return-void
.end method

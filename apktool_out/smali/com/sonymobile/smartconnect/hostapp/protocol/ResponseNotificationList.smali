.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseNotificationList.java"


# instance fields
.field private mExtensionCid:I

.field private mNotificationList:[Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 20
    const/16 v0, 0x88

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 21
    return-void
.end method


# virtual methods
.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;->mExtensionCid:I

    return v0
.end method

.method public getNotificationList()[Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;->mNotificationList:[Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;

    return-object v0
.end method

.method public setExtensionCid(I)V
    .locals 0
    .param p1, "extensionCid"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;->mExtensionCid:I

    .line 35
    return-void
.end method

.method public setNotificationList([Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;)V
    .locals 0
    .param p1, "notificationList"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;->mNotificationList:[Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;

    .line 49
    return-void
.end method

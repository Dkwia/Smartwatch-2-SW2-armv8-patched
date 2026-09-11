.class public Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
.super Ljava/lang/Object;
.source "ControlMessageFactory.java"


# instance fields
.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V
    .locals 0
    .param p1, "msgProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 18
    return-void
.end method


# virtual methods
.method public createConfirmationMsg()Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    return-object v0
.end method

.method public createRenderMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;
    .locals 3
    .param p1, "masterCid"    # I

    .prologue
    .line 43
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    return-object v0
.end method

.method public createScreenStateMsg(II)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;
    .locals 3
    .param p1, "cid"    # I
    .param p2, "screenState"    # I

    .prologue
    .line 29
    packed-switch p2, :pswitch_data_0

    .line 38
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    goto :goto_0

    .line 33
    :pswitch_1
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createStartMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    return-object v0
.end method

.method public createStopMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 25
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->newMessageId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;-><init>(III)V

    return-object v0
.end method

.method protected newMessageId()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v0

    return v0
.end method

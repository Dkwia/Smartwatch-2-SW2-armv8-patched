.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ControlMessageAck.java"


# instance fields
.field private mAckMessageId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 13
    const/16 v0, 0x9

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->type:I

    .line 14
    return-void
.end method


# virtual methods
.method public getAckMessageId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->mAckMessageId:I

    return v0
.end method

.method public setAckMessageId(I)V
    .locals 0
    .param p1, "ackMessageId"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->mAckMessageId:I

    .line 24
    return-void
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 29
    const-string v0, "AckMsgId"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->mAckMessageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

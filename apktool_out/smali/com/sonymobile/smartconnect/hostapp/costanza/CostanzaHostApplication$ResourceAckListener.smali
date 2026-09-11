.class Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;
.super Ljava/lang/Object;
.source "CostanzaHostApplication.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResourceAckListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 201
    const/16 v0, 0x9

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 205
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;

    .line 206
    .local v0, "msgAck":Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "ACK received with messageId: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->getAckMessageId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->getAckMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->onMessageAck(I)V

    .line 210
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->getAckMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->ackMessage(I)V

    .line 211
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$ResourceAckListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageAck;->getAckMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->ackMessage(I)V

    .line 212
    return-void
.end method

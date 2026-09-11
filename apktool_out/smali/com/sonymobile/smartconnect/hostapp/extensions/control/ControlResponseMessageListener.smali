.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlResponseMessageListener;
.super Ljava/lang/Object;
.source "ControlResponseMessageListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mRenderListener:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;)V
    .locals 0
    .param p1, "renderListener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlResponseMessageListener;->mRenderListener:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;

    .line 21
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x6b

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 30
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;

    .line 32
    .local v0, "ctrlResponse":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "Received ControlResponse (action=%d, value=%d)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;->getAction()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlResponseMessageListener;->mRenderListener:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;->onRendered()V

    .line 40
    :cond_1
    return-void
.end method

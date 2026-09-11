.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/TouchIndicationMessageListener;
.super Ljava/lang/Object;
.source "TouchIndicationMessageListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mInputDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;)V
    .locals 0
    .param p1, "inputProcessor"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/TouchIndicationMessageListener;->mInputDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    .line 20
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x73

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 29
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    .line 31
    .local v0, "touchIndication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Touch received: x=%d, y=%d, action=%d, key=0x%08x."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getKey()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/TouchIndicationMessageListener;->mInputDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->delegateInput(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V

    .line 36
    return-void
.end method

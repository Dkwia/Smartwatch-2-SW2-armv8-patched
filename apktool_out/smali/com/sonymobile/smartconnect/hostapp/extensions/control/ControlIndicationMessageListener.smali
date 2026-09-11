.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;
.super Ljava/lang/Object;
.source "ControlIndicationMessageListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

.field private final mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

.field private final mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;

.field private final mHandler:Landroid/os/Handler;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Landroid/os/Handler;)V
    .locals 0
    .param p1, "controlExtensionStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
    .param p2, "extensionProvider"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;
    .param p3, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p4, "costanzaMsgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p5, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 36
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;

    .line 37
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 38
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    .line 39
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "x2"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->sendActivePowerSaveIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    return-void
.end method

.method private sendActivePowerSaveIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "isActivePowerSaveModeOn"    # Z

    .prologue
    .line 104
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionOnTop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->getTop()Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 106
    .local v0, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getIntentSender()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    move-result-object v1

    .line 107
    .local v1, "extIntentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    invoke-virtual {v1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendPowerSaveModeChangedIntent(Z)V

    .line 109
    .end local v0    # "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    .end local v1    # "extIntentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x6c

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 7
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 49
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;

    .line 50
    .local v0, "ctrlIndication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->getCid()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByCidProvider;->getExtensionByCid(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v1

    .line 52
    .local v1, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Got CTRL_INDICATION with action=%d for cid=0x%08x belonging to %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    if-nez v1, :cond_3

    .line 56
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Didn\'t find extension by CID: %s."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 101
    :cond_2
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v3, v5, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->getCid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->createStopMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 64
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Sent stop."

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

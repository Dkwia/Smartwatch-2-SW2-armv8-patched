.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;
.source "StartRequestHandler.java"


# instance fields
.field private final mControlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p2, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .param p3, "extensionProvider"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;
    .param p4, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;)V

    .line 24
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;->mControlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 25
    return-void
.end method

.method private sendStartMsg(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;->getMsgSender()Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;->getMsgFactory()Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->createStartMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "com.sonyericsson.extras.aef.control.START_REQUEST"

    return-object v0
.end method

.method protected handleControlIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v0

    .line 36
    .local v0, "cid":I
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;->mControlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isStartAllowed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;->sendStartMsg(I)V

    .line 39
    :cond_0
    return-void
.end method

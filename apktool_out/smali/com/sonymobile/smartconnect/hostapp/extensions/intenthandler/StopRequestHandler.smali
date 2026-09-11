.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StopRequestHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;
.source "StopRequestHandler.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;)V
    .locals 0
    .param p1, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p2, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .param p3, "extensionProvider"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;)V

    .line 21
    return-void
.end method

.method private sendStopMsg(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StopRequestHandler;->getMsgSender()Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StopRequestHandler;->getMsgFactory()Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->createStopMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "com.sonyericsson.extras.aef.control.STOP_REQUEST"

    return-object v0
.end method

.method protected handleControlIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 1
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v0

    .line 30
    .local v0, "cid":I
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StopRequestHandler;->sendStopMsg(I)V

    .line 31
    return-void
.end method

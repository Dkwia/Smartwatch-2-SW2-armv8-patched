.class public Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;
.super Ljava/lang/Object;
.source "IntentHandlerFactory.java"


# instance fields
.field private final mCtrlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

.field private final mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

.field private final mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p2, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .param p3, "extensionProvider"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;
    .param p4, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    .line 29
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    .line 30
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mCtrlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 31
    return-void
.end method


# virtual methods
.method public createSetScreenStateHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/SetScreenStateHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/SetScreenStateHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;)V

    return-object v0
.end method

.method public createStartRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mCtrlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StartRequestHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    return-object v0
.end method

.method public createStopRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StopRequestHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/IntentHandlerFactory;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/StopRequestHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;)V

    return-object v0
.end method

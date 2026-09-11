.class public Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;
.super Ljava/lang/Object;
.source "VibrationHandlerFactory.java"


# instance fields
.field private final mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .param p2, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p3, "controlExtensionStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 25
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 26
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 27
    return-void
.end method


# virtual methods
.method public createVibrationRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    return-object v0
.end method

.method public createVibrationStopRequestHandler()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/VibrationHandlerFactory;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    return-object v0
.end method

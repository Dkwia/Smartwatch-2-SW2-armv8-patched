.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;
.source "VibrationStopRequestHandler.java"


# instance fields
.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "syncManager"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .param p2, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p3, "controlExtensionStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 24
    invoke-direct {p0, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 26
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 27
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "com.sonyericsson.extras.aef.control.STOP_VIBRATE"

    return-object v0
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 6
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    const/4 v5, 0x0

    .line 31
    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;->getControlExtensionIfTop(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 32
    .local v0, "topExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v0, :cond_1

    .line 33
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationStopRequestHandler;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v4

    invoke-direct {v3, v4, v5, v5, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;-><init>(IIII)V

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring stop vibration intent from extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extension not on top of ControlExtensionStack!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

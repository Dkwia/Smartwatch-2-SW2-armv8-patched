.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;
.source "VibrationRequestHandler.java"


# instance fields
.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .param p2, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p3, "controlExtensionStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 26
    invoke-direct {p0, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 29
    return-void
.end method


# virtual methods
.method protected extractRelevantIntentInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "sourceIntent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v0, "on_duration"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mOnDuration:I

    .line 34
    const-string v0, "off_duration"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mOffDuration:I

    .line 35
    const-string v0, "repeats"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mRepeats:I

    .line 36
    return-void
.end method

.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "com.sonyericsson.extras.aef.control.VIBRATE"

    return-object v0
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 9
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 40
    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;->getControlExtensionIfTop(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 41
    .local v0, "topExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/VibrationRequestHandler;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v5

    iget v6, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mOnDuration:I

    iget v7, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mOffDuration:I

    iget v8, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mRepeats:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVibration;-><init>(IIII)V

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring vibration intent from extension "

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

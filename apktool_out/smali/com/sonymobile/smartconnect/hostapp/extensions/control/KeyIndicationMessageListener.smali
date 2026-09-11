.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;
.super Ljava/lang/Object;
.source "KeyIndicationMessageListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# static fields
.field private static final KEYCODE_UNKNOWN:I = -0x1


# instance fields
.field private final mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

.field private final mControlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

.field private final mCostanzaMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;)V
    .locals 0
    .param p1, "controlExtensionStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
    .param p2, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p3, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p4, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 31
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mCostanzaMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 32
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mControlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    .line 33
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 34
    return-void
.end method

.method private translateKeyCodeForIntent(I)I
    .locals 1
    .param p1, "accessoryKeyCode"    # I

    .prologue
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 85
    :pswitch_0
    const/4 v0, 0x7

    goto :goto_0

    .line 86
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x72

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 43
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;

    .line 45
    .local v2, "keyIndication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Key event received: action=%d, code=0x%08x."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mControlExtensionStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->getTop()Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 50
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    if-nez v0, :cond_2

    .line 51
    const-string v3, "Ignored key indication, no running extension in host app."

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 59
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->supportsBackKey()Z

    move-result v3

    if-nez v3, :cond_3

    .line 60
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mCostanzaMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v4, v6, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mControlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getCid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->createStopMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->translateKeyCodeForIntent(I)I

    move-result v1

    .line 66
    .local v1, "intentKeyCode":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 67
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getAction()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->sendControlKeyEventIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;II)V

    .line 69
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Sent key to extension: action=%d, keycode=%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Ignored key indication, bad key code: %d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendControlKeyEventIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;II)V
    .locals 4
    .param p1, "ctrlExtension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    .param p2, "buttonId"    # I
    .param p3, "eventType"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.KEY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "event_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 79
    const-string v1, "key_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/KeyIndicationMessageListener;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Intent;)V

    .line 81
    return-void
.end method

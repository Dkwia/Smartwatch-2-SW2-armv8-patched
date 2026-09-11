.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;
.source "WidgetEnterNextLevelIntentHandler.java"


# instance fields
.field private final mControlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

.field private final mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V
    .locals 0
    .param p1, "widgetProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p3, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
    .param p4, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .param p5, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 26
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;->mControlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 27
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 28
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    .line 29
    return-void
.end method

.method private sendStartMsg(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;->mCtrlMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    invoke-virtual {v3, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;->createStartMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.sonyericsson.extras.aef.widget.ENTER_NEW_LEVEL"

    return-object v0
.end method

.method protected handleWidgetIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 1
    .param p1, "ext"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .param p3, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;->mControlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isStartAllowed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetEnterNextLevelIntentHandler;->sendStartMsg(I)V

    .line 44
    :cond_0
    return-void
.end method

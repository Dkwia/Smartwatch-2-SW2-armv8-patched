.class public abstract Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;
.source "BaseControlRequestHandler.java"


# instance fields
.field private final mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

.field private final mMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;)V
    .locals 0
    .param p1, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p2, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .param p3, "extensionProvider"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 25
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;->mMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    .line 26
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    .line 27
    return-void
.end method


# virtual methods
.method protected getMsgFactory()Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;->mMsgFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;

    return-object v0
.end method

.method protected getMsgSender()Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    return-object v0
.end method

.method protected abstract handleControlIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 5
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;->mExtensionProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;

    iget-object v2, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionByPkgProvider;->getCtrlExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 45
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlRequestHandler;->handleControlIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Didn\'t find matching extension, %s, while handling control intent %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mIntentAction:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

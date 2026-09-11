.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ClearDisplayHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;
.source "ClearDisplayHandler.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.sonyericsson.extras.aef.control.CLEAR_DISPLAY"

    return-object v0
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 22
    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ClearDisplayHandler;->getControlExtensionIfTop(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 23
    .local v0, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getDisplayDataProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->clearDisplay()V

    .line 26
    :cond_0
    return-void
.end method

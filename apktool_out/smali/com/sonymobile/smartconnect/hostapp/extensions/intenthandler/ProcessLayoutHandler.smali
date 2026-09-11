.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ProcessLayoutHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;
.source "ProcessLayoutHandler.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "com.sonyericsson.extras.aef.control.PROCESS_LAYOUT"

    return-object v0
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 4
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 21
    iget-object v2, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ProcessLayoutHandler;->getControlExtensionIfTop(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 22
    .local v0, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    if-eqz v0, :cond_0

    .line 23
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;

    iget-object v2, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    .local v1, "layoutIntentData":Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getDisplayDataProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->reset()V

    .line 26
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getLayoutProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->processLayout(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)V

    .line 28
    .end local v1    # "layoutIntentData":Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
    :cond_0
    return-void
.end method

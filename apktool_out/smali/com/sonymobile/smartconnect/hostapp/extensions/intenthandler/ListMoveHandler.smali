.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListMoveHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseListLayoutDataHandler;
.source "ListMoveHandler.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseListLayoutDataHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "com.sonyericsson.extras.aef.control.LIST_MOVE"

    return-object v0
.end method

.method public handleLayoutIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V
    .locals 2
    .param p1, "layoutIntentData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ListMoveHandler;->getControlExtensionIfTop(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 27
    .local v0, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getLayoutProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->processListPositionMove(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V

    .line 30
    :cond_0
    return-void
.end method

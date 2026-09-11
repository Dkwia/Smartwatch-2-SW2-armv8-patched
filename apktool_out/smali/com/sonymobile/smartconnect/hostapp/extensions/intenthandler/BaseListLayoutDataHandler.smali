.class public abstract Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseListLayoutDataHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;
.source "BaseListLayoutDataHandler.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 15
    return-void
.end method


# virtual methods
.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 3
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 21
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;

    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    .local v0, "layoutIntentData":Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseListLayoutDataHandler;->handleLayoutIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V

    .line 25
    return-void
.end method

.method public abstract handleLayoutIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutIntentData;)V
.end method

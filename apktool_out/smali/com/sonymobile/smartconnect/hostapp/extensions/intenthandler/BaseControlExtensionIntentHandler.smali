.class public abstract Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;
.source "BaseControlExtensionIntentHandler.java"


# instance fields
.field protected final mCtrlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;->mCtrlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .line 18
    return-void
.end method


# virtual methods
.method protected getControlExtensionIfTop(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    .locals 4
    .param p1, "basePkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 21
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;->mCtrlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->getTop()Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 26
    .local v0, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;->mCtrlExtStack:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Ignored intent, extension paused, %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .end local v0    # "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    :cond_1
    return-object v0

    .line 34
    .restart local v0    # "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "Ignoring incoming data. Ext not top running ctrl ext, %s."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

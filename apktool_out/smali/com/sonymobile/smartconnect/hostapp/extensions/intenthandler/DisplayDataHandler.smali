.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/DisplayDataHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;
.source "DisplayDataHandler.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V
    .locals 0
    .param p1, "ctrlExtStack"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseControlExtensionIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;)V

    .line 19
    return-void
.end method


# virtual methods
.method public extractRelevantIntentInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "obj"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    const/high16 v1, -0x80000000

    .line 40
    const-string v0, "data_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mDataUri:Ljava/lang/String;

    .line 41
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mData:[B

    .line 42
    const-string v0, "x_offset"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mXOffsetPos:I

    .line 43
    const-string v0, "y_offset"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mYOffsetPos:I

    .line 45
    return-void
.end method

.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.sonyericsson.extras.aef.control.DISPLAY_DATA"

    return-object v0
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 7
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 28
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;

    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mDataUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mData:[B

    iget v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mXOffsetPos:I

    iget v5, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mYOffsetPos:I

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;-><init>(Ljava/lang/String;Ljava/lang/String;[BII)V

    .line 32
    .local v0, "displayData":Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;
    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/DisplayDataHandler;->getControlExtensionIfTop(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v6

    .line 33
    .local v6, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    if-eqz v6, :cond_0

    .line 34
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getDisplayDataProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->processDisplayData(Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayData;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;)V

    .line 36
    :cond_0
    return-void
.end method

.class public abstract Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;
.source "BaseWidgetIntentHandler.java"


# instance fields
.field protected final mExtManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p1, "widgetProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseExtensionIntentHandler;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .line 22
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;->mExtManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 23
    return-void
.end method


# virtual methods
.method protected extractRelevantIntentInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "sourceIntent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 27
    const-string v0, "instance_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mInstanceId:I

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;->extractRelevantWidgetInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V

    .line 29
    return-void
.end method

.method protected extractRelevantWidgetInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 0
    .param p1, "sourceIntent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 32
    return-void
.end method

.method public handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 7
    .param p1, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;->mExtManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    iget-object v3, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtension(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 37
    .local v0, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "Ignored widget intent, failed to find matching widget extension, %s."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mInstanceId:I

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidget(Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v1

    .line 48
    .local v1, "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-nez v1, :cond_2

    .line 49
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "Failed to find matching widget with extCid=0x%08x and tag=%d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mInstanceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;->handleWidgetIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V

    goto :goto_0
.end method

.method protected abstract handleWidgetIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
.end method

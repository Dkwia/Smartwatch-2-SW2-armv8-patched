.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;
.source "WidgetProcessLayoutIntentHandler.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

.field private final mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;)V
    .locals 0
    .param p1, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p2, "widgetProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .param p3, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p4, "resProviderCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 33
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 34
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "com.sonyericsson.extras.aef.widget.PROCESS_LAYOUT"

    return-object v0
.end method

.method protected handleWidgetIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 12
    .param p1, "ext"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .param p3, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 47
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p3, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mBundle:Landroid/os/Bundle;

    invoke-direct {v8, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    .local v8, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v11

    invoke-direct {v3, v1, v4, v5, v11}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 53
    .local v3, "inflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getXmlLayoutId()I

    move-result v7

    .line 54
    .local v7, "defaultLayout":I
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getXmlLayoutId(I)I

    move-result v9

    .line 55
    .local v9, "lowPowerLayout":I
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getXmlLayoutId(I)I

    move-result v10

    .line 57
    .local v10, "offlineLayout":I
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-virtual {p2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getResourceProvider(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v2

    .line 58
    .local v2, "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;->mContext:Landroid/content/Context;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .line 59
    .local v0, "factory":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getExtraLayoutData()[Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v7, v9, v10, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->createControlsFromLayouts(III[Landroid/os/Parcelable;)[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    move-result-object v6

    .line 61
    .local v6, "controls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    invoke-virtual {p2, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setControls([Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;)V

    .line 63
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetProcessLayoutIntentHandler;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-virtual {p2, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->renderOnAccessory(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    .line 64
    return-void
.end method

.class public abstract Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;
.source "BaseWidgetUpdateIntentHandler.java"


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
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 33
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 34
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected handleWidgetIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 15
    .param p1, "ext"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .param p3, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 42
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mBundle:Landroid/os/Bundle;

    invoke-direct {v6, v11, v12}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 45
    .local v6, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v14

    invoke-direct {v5, v11, v12, v13, v14}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 48
    .local v5, "inflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getControls()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    move-result-object v2

    .line 49
    .local v2, "controls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    if-nez v2, :cond_1

    .line 50
    const-string v11, "Skipped the update, missing layout."

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    move-object v1, v2

    .local v1, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v3, v1, v4

    .line 55
    .local v3, "ctrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->getView()Landroid/view/View;

    move-result-object v10

    .line 57
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/WidgetLayoutIntentData;->getExtraBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->updateLayoutData(Landroid/view/View;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v9

    .line 59
    .local v9, "updatedView":Landroid/view/View;
    if-nez v9, :cond_2

    .line 60
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 61
    const-string v11, "Skipped the update, the referenced view was not found."

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->isDirty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 67
    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;)V

    .line 68
    invoke-virtual {v3, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->refreshView(Landroid/view/View;)V

    .line 54
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    .end local v3    # "ctrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .end local v9    # "updatedView":Landroid/view/View;
    .end local v10    # "view":Landroid/view/View;
    :cond_4
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getResourceProvider(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v8

    .line 73
    .local v8, "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->renderOnAccessory(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    goto :goto_0
.end method

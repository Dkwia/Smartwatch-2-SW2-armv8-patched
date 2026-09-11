.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;
.source "WidgetImageIntentHandler.java"


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
    .line 35
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V

    .line 36
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 37
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 38
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected extractRelevantWidgetInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 1
    .param p1, "sourceIntent"    # Landroid/content/Intent;
    .param p2, "target"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 48
    const-string v0, "widget_image_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mData:[B

    .line 49
    const-string v0, "widget_image_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mDataUri:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "com.sonyericsson.extras.aef.widget.IMAGE_UPDATE"

    return-object v0
.end method

.method protected handleWidgetIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 17
    .param p1, "ext"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "w"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .param p3, "intentInfo"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 57
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v4, v2, v5, v6, v0}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 60
    .local v4, "inflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getResourceProvider(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v3

    .line 61
    .local v3, "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mContext:Landroid/content/Context;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    .line 62
    .local v1, "factory":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;
    const v2, 0x7f03002f

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetControlFactory;->createControlsFromLayouts(III[Landroid/os/Parcelable;)[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    move-result-object v9

    .line 66
    .local v9, "controls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    if-nez v9, :cond_0

    .line 67
    const-string v2, "Skipped the update, missing layout."

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 91
    :goto_0
    return-void

    .line 70
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->setControls([Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;)V

    .line 72
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v11, v2, v5, v6, v0}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 75
    .local v11, "extInflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v8, "b":Landroid/os/Bundle;
    const-string v2, "layout_reference"

    const v5, 0x7f0d0078

    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mData:[B

    if-eqz v2, :cond_1

    .line 78
    const-string v2, "widget_image_data"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mData:[B

    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 83
    :goto_1
    move-object v7, v9

    .local v7, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    array-length v13, v7

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_2

    aget-object v10, v7, v12

    .line 84
    .local v10, "ctrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->getView()Landroid/view/View;

    move-result-object v15

    .line 85
    .local v15, "widgetView":Landroid/view/View;
    invoke-virtual {v11, v15, v8}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->updateLayoutData(Landroid/view/View;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v14

    .line 86
    .local v14, "updatedView":Landroid/view/View;
    invoke-virtual {v11, v15}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;)V

    .line 87
    invoke-virtual {v10, v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->refreshView(Landroid/view/View;)V

    .line 83
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 80
    .end local v7    # "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .end local v10    # "ctrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "updatedView":Landroid/view/View;
    .end local v15    # "widgetView":Landroid/view/View;
    :cond_1
    const-string v2, "widget_image_uri"

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mDataUri:Ljava/lang/String;

    invoke-virtual {v8, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .restart local v7    # "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetImageIntentHandler;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->renderOnAccessory(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    goto :goto_0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/WidgetSendImageIntentHandler;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;
.source "WidgetSendImageIntentHandler.java"


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;)V
    .locals 0
    .param p1, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p2, "widgetProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .param p3, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p4, "resProviderCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/BaseWidgetUpdateIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getIntentActionToHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "com.sonyericsson.extras.aef.widget.SEND_IMAGE"

    return-object v0
.end method

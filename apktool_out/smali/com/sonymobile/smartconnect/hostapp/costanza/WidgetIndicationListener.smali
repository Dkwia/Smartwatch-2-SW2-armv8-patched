.class public Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;
.super Ljava/lang/Object;
.source "WidgetIndicationListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mStartStopManager:Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;

.field private final mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;)V
    .locals 0
    .param p1, "widgetProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p3, "widgetStartStopManager"    # Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .line 27
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 28
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;->mStartStopManager:Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;

    .line 29
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x8f

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    move-object v2, p1

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;

    .line 40
    .local v2, "widgetIndication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->getExtensionCid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionByCid(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 41
    .local v0, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "Failed to find matching extension, 0x%08x."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->getExtensionCid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->getTag()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidget(Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v1

    .line 50
    .local v1, "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-nez v1, :cond_2

    .line 51
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "Failed to find matching widget to start, extCid=0x%08x, tag=%d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->getExtensionCid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->getTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 59
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;->mStartStopManager:Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;

    invoke-virtual {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->startWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetIndicationListener;->mStartStopManager:Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;

    invoke-virtual {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetStartStopManager;->stopWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V

    goto :goto_0
.end method

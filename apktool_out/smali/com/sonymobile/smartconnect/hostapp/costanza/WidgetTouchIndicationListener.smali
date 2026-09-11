.class public Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;
.super Ljava/lang/Object;
.source "WidgetTouchIndicationListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private mLastPressAction:I

.field private final mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 0
    .param p1, "widgetProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .param p2, "ahaIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p3, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .line 31
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 32
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 33
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x90

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 10
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 42
    move-object v8, p1

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;

    .line 44
    .local v8, "widgetIndication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getExtensionCid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionByCid(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v7

    .line 45
    .local v7, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v7, :cond_1

    .line 46
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    const-string v4, "Failed to find matching extension, 0x%08x."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getExtensionCid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getTag()I

    move-result v9

    invoke-virtual {v4, v5, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidget(Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    .line 54
    .local v0, "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-nez v0, :cond_2

    .line 55
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    const-string v4, "Failed to find matching widget to start, 0x%08x."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getExtensionCid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getAction()I

    move-result v6

    .line 64
    .local v6, "action":I
    if-eqz v6, :cond_3

    if-ne v6, v3, :cond_4

    .line 66
    :cond_3
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getAction()I

    move-result v4

    iput v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mLastPressAction:I

    .line 69
    :cond_4
    const/4 v4, 0x2

    if-eq v6, v4, :cond_5

    if-ne v6, v3, :cond_0

    .line 72
    :cond_5
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-direct {v1, v4, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 73
    .local v1, "intentSender":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WidgetTouchIndicationListener;->mLastPressAction:I

    if-nez v4, :cond_6

    .line 77
    .local v2, "eventType":I
    :goto_1
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getX()I

    move-result v3

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getY()I

    move-result v4

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->getKey()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->onTouch(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;IIII)V

    goto :goto_0

    .end local v2    # "eventType":I
    :cond_6
    move v2, v3

    .line 73
    goto :goto_1
.end method

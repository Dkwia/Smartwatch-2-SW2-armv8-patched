.class public Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;
.super Ljava/lang/Object;
.source "IndicationNotificationListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private final mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0
    .param p1, "ahaIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p3, "eventManager"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 29
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 30
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x70

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 12
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 39
    move-object v4, p1

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;

    .line 40
    .local v4, "indicationNotification":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->getValue()I

    move-result v1

    .line 41
    .local v1, "eventId":I
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-virtual {v6, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->getEventFromCid(I)Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-result-object v0

    .line 42
    .local v0, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Didn\'t find event by CID: %s. Ignoring indicationNotification."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v6

    long-to-int v5, v6

    .line 49
    .local v5, "sourceId":I
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionFromSource(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v2

    .line 50
    .local v2, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v2, :cond_2

    .line 51
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Didn\'t find extension by SourceId: %s. Ignoring indicationNotification."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Got indicationNotification with action=%d for extension=%s."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->getAction()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sonyericsson.extras.liveware.aef.notification.VIEW_EVENT_DETAIL"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "i":Landroid/content/Intent;
    const-string v6, "event_id"

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v6, "source_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v6, "extension_key"

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v6, "action"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotification;->getAction()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationListener;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-virtual {v2, v6, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

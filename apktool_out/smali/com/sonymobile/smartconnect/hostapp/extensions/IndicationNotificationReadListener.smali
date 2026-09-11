.class public Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;
.super Ljava/lang/Object;
.source "IndicationNotificationReadListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventManager"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 27
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x86

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 14
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 36
    move-object v5, p1

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;

    .line 38
    .local v5, "readMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->getNotificationCid()I

    move-result v1

    .line 39
    .local v1, "eventCid":I
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->isRead()Z

    move-result v4

    .line 40
    .local v4, "isRead":Z
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->getNotificationCid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->getEventFromCid(I)Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-result-object v0

    .line 41
    .local v0, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 43
    const-string v9, "Could not find event by CID: 0x%08x. Ignoring IndicationNotificationRead"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v9

    if-ne v4, v9, :cond_2

    .line 50
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "Event read status not changed. Ignoring IndicationNotificationRead"

    invoke-static {v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v2

    .line 55
    .local v2, "eventId":J
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 56
    const-string v9, "Setting read status for event with cid: 0x%08x to %b"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_3
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-virtual {v9, v0, v4}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->setEventRead(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Z)V

    .line 63
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v7, "values":Landroid/content/ContentValues;
    const-string v9, "readStatus"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    const-string v8, "_id=?"

    .line 66
    .local v8, "where":Ljava/lang/String;
    new-array v6, v13, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v12

    .line 69
    .local v6, "selectionArgs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationReadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Event;->URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7, v8, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

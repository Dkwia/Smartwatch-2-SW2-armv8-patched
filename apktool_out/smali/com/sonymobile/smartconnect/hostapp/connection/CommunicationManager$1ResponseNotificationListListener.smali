.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;
.super Ljava/lang/Object;
.source "CommunicationManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerDefaultMessageListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseNotificationListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 1202
    const/16 v0, 0x88

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 18
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 1207
    move-object/from16 v9, p1

    check-cast v9, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;

    .line 1208
    .local v9, "notificationListMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;
    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;->getExtensionCid()I

    move-result v5

    .line 1209
    .local v5, "extensionCid":I
    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseNotificationList;->getNotificationList()[Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;

    move-result-object v8

    .line 1211
    .local v8, "notificationList":[Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1212
    const-string v12, "Handling ResponseNotificationList, extension cid: 0x%08x, notification count: %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    array-length v15, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v11, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v12, v8

    if-ge v6, v12, :cond_5

    .line 1218
    aget-object v7, v8, v6

    .line 1222
    .local v7, "notification":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->isRead()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1223
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->getNotificationCid()I

    move-result v4

    .line 1224
    .local v4, "eventCid":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v13}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$2100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->getEventFromCid(I)Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-result-object v3

    .line 1225
    .local v3, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    if-nez v3, :cond_2

    .line 1226
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "ResponseNotificationListListener: Could not find event with cid: 0x%08x"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    .end local v3    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v4    # "eventCid":I
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1232
    .restart local v3    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .restart local v4    # "eventCid":I
    :cond_2
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;->isRead()Z

    move-result v12

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v13

    if-ne v12, v13, :cond_3

    .line 1233
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "Event with cid: 0x%08x, read status not changed, not updating in SmartConnect"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1238
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1239
    const-string v12, "Setting read status for event with cid: 0x%08x to true"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v13}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$2100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v3, v13}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->setEventRead(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Z)V

    .line 1246
    sget-object v12, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Event;->URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1248
    .local v10, "operation":Landroid/content/ContentProviderOperation$Builder;
    const-string v12, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1251
    const-string v12, "readStatus"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1252
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1256
    .end local v3    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v4    # "eventCid":I
    .end local v7    # "notification":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationRead;
    .end local v10    # "operation":Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    .line 1258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "com.sonyericsson.extras.liveware.aef.notification"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1269
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$2206(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I

    move-result v12

    if-nez v12, :cond_7

    .line 1270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    sget-object v13, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->READY:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V

    .line 1272
    :cond_7
    return-void

    .line 1259
    :catch_0
    move-exception v2

    .line 1260
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 1261
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 1262
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1263
    .local v2, "e":Landroid/content/OperationApplicationException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 1264
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto :goto_2
.end method

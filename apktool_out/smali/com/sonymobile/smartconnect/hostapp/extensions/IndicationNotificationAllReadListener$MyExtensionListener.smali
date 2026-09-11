.class Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;
.super Ljava/lang/Object;
.source "IndicationNotificationAllReadListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyExtensionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;)V

    return-void
.end method


# virtual methods
.method public onDone(ILcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 12
    .param p1, "extensionCid"    # I
    .param p2, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 55
    if-nez p2, :cond_1

    .line 56
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    const-string v5, "Could not find extension by CID: 0x%08x. Ignoring IndicationNotificationAllReadListener"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->getEventsFromExtensionId(J)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 69
    .local v1, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Event read status already set. Ignoring IndicationNotificationAllReadListener"

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 75
    const-string v5, "Setting read status for event with cid: 0x%08x to true"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_4
    invoke-virtual {v1, v10}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setRead(Z)V

    .line 81
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "readStatus"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    sget-object v5, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Event;->URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

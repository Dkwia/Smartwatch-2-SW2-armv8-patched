.class Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;
.super Ljava/lang/Object;
.source "CostanzaNotificationManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationCommunicationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onDisconnect()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 195
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$700(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020091

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Ljava/lang/Class;

    move-result-object v9

    move v8, v7

    move v10, v6

    invoke-static/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$800(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 202
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 174
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    const/4 v1, 0x3

    const v2, 0x7f07005f

    const v3, 0x7f070052

    const v4, 0x7f020092

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$500(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Ljava/lang/Class;

    move-result-object v8

    move v7, v6

    move v9, v5

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;IIIIZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 180
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 160
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    const/4 v1, 0x2

    const v2, 0x7f07005f

    const v3, 0x7f070060

    const v4, 0x7f020092

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Ljava/lang/Class;

    move-result-object v8

    move v7, v6

    move v9, v5

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;IIIIZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 189
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;
.super Ljava/lang/Object;
.source "CostanzaNotificationManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationFotaListener"
.end annotation


# instance fields
.field builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$1;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)V

    return-void
.end method


# virtual methods
.method public onDownloadDone()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 3
    .param p1, "promille"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    :try_start_fota_notif
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_fota_notif
    .catch Ljava/lang/Throwable; {:try_start_fota_notif .. :try_end_fota_notif} :catch_fota_notif

    :catch_fota_notif

    goto :goto_0
.end method

.method public onDownloadStarted()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    const/4 v1, 0x2

    const v2, 0x7f07005f

    const v3, 0x7f070061

    const v4, 0x7f020092

    const/16 v6, 0x3e8

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    move v7, v5

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;IIIIZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public onFailed()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    const/4 v1, 0x2

    const v2, 0x7f07005f

    const v3, 0x7f070062

    const v4, 0x7f020092

    const/16 v6, 0x3e8

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    move v7, v5

    invoke-static/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;IIIIZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;->builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 148
    return-void
.end method

.method public onFlashStarted()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

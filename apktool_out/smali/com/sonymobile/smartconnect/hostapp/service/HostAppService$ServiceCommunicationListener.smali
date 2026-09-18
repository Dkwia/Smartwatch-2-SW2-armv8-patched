.class Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;
.super Ljava/lang/Object;
.source "HostAppService.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
.implements Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceCommunicationListener"
.end annotation


# instance fields
.field mContentObserversEnabled:Z

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->mContentObserversEnabled:Z

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$000(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$000(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$000(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->setAccessoryConnectionStatus(Landroid/content/ContentResolver;Z)V

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->mContentObserversEnabled:Z

    if-eqz v0, :cond_1

    .line 307
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->mContentObserversEnabled:Z

    .line 308
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$100(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->disableContentObservers()V

    .line 309
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$200(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->disableEventObservers()V

    .line 310
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$300(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->disableContentObservers()V

    .line 314
    :cond_1
    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$402(Z)Z

    .line 318
    :try_start_stop_fg
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->stopForeground(Z)V
    :try_end_stop_fg
    .catch Ljava/lang/Throwable; {:try_start_stop_fg .. :try_end_stop_fg} :catch_stop_fg

    :catch_stop_fg

    .line 319
    return-void
.end method

.method public onDownloadDone()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 0
    .param p1, "promille"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onDownloadStarted()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public onFlashStarted()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$600(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->reset()V

    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$402(Z)Z

    .line 358
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$000(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->getDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$000(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->setAccessoryConnectionStatus(Landroid/content/ContentResolver;Z)V

    .line 274
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->mContentObserversEnabled:Z

    if-nez v1, :cond_1

    .line 275
    iput-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->mContentObserversEnabled:Z

    .line 276
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$100(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->enableContentObservers()V

    .line 277
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$200(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->enableEventOberservers()V

    .line 278
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$300(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->enableContentObservers()V

    .line 281
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$400()Z

    move-result v1

    if-nez v1, :cond_2

    .line 283
    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$402(Z)Z

    .line 284
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$100(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->performSync(Z)V

    .line 285
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$200(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->startupSync()V

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->access$500(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->getReadyNotification()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 290
    .local v0, "notification":Landroid/app/Notification;
    :try_start_sf
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    invoke-virtual {v1, v3, v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->startForeground(ILandroid/app/Notification;)V
    :try_end_sf
    .catch Ljava/lang/Throwable; {:try_start_sf .. :try_end_sf} :catch_sf

    :catch_sf

    .line 297
    return-void
.end method

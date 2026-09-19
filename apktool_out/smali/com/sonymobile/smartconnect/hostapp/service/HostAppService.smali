.class public Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;
.super Landroid/app/Service;
.source "HostAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;,
        Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;,
        Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$RawQuery;,
        Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceIntentCmd;,
        Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$LivewareConstants;
    }
.end annotation


# static fields
.field private static volatile mSyncStarted:Z


# instance fields
.field private mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;

.field private mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

.field private mCostanzaNotificationManager:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

.field private mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

.field private mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

.field private mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

.field private mHostApp:Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

.field private mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

.field private mTimeChangeReceiver:Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;

.field private mWhatsNew:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

.field private mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mSyncStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mWhatsNew:Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mHostApp:Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mSyncStarted:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mSyncStarted:Z

    return p0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCostanzaNotificationManager:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    return-object v0
.end method

.method public static setSyncStarted(Z)V
    .locals 0
    .param p0, "syncStarted"    # Z

    .prologue
    .line 370
    sput-boolean p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mSyncStarted:Z

    .line 371
    return-void
.end method


# virtual methods
.method protected handleCommand(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resorceId"    # I

    .prologue
    .line 197
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 198
    if-eqz p1, :cond_6

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SERVICE_COMMAND"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "serviceCommand":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 203
    const-string v3, "REGISTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_reg
    .line 210
    invoke-static {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->isRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    const-string v3, "Registering host app from HostAppService"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 214
    .local v1, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v1, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->performRegistration(I)V

    .line 216
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->requestReset()V

    .line 221
    .end local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    :cond_1
    invoke-static {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->updateHostAppVersion(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_reg
    .catch Ljava/lang/Throwable; {:try_start_reg .. :try_end_reg} :catch_reg

    :catch_reg
    .line 230
    :cond_2
    const-string v3, "Address"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "btAddress":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 233
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    const-string v3, "HostAppService got a Launch intent. Connecting to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 237
    .restart local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->connect(Ljava/lang/String;)V

    .line 241
    .end local v0    # "btAddress":Ljava/lang/String;
    .end local v1    # "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    .end local v2    # "serviceCommand":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 242
    const-string v3, "Delegating intent %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    :try_start_del
    invoke-virtual {v3, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->delegateIntent(Landroid/content/Intent;)Z
    :try_end_del
    .catch Ljava/lang/Throwable; {:try_start_del .. :try_end_del} :catch_del

    :catch_del
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_6
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 145
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 146
    .local v7, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getHostAppConfig()Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mHostApp:Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;

    .line 147
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaSyncManager()Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mFotaSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    .line 148
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 149
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getEventManager()Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 150
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getWidgetProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .line 151
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .line 152
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .line 153
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getIntentDelegator()Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    .line 155
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 159
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-class v4, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    const-class v5, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/content/res/Resources;Ljava/lang/Class;Ljava/lang/Class;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCostanzaNotificationManager:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    .line 168
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;

    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 171
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->READY:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$ServiceCommunicationListener;->onReady()V

    .line 175
    :cond_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getMessageIdProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mTimeChangeReceiver:Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;

    .line 178
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mCommunicationManager:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->closeConnections()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->disableContentObservers()V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->disableEventObservers()V

    .line 189
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->disableContentObservers()V

    .line 190
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mFotaController:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->tearDown()V

    .line 191
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->mTimeChangeReceiver:Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;->unregister()V

    .line 192
    return-void
.end method

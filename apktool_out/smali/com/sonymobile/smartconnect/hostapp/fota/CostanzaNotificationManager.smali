.class public Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
.super Ljava/lang/Object;
.source "CostanzaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$1;,
        Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;,
        Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_APP_UPDATE_NEEDED:I = 0x3

.field public static final NOTIFICATION_CONNECTION:I = 0x1

.field public static final NOTIFICATION_DISCONNECTION:I = 0x4

.field private static final NOTIFICATION_FOTA:I = 0x2


# instance fields
.field private final mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

.field private final mContext:Landroid/content/Context;

.field private final mFotaActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mFotaListener:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;

.field private final mMainActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/content/res/Resources;Ljava/lang/Class;Ljava/lang/Class;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p6, "communicationManager"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/NotificationManager;",
            "Landroid/content/res/Resources;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "mainActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "fotaActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mResources:Landroid/content/res/Resources;

    .line 67
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 68
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mMainActivity:Ljava/lang/Class;

    .line 69
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mFotaActivity:Ljava/lang/Class;

    .line 71
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mFotaListener:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;

    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mFotaListener:Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationFotaListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->addFotaListener(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;)V

    .line 74
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager$NotificationCommunicationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .line 75
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    invoke-virtual {p6, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->isFotaProgressDialogDisabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mFotaActivity:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;IIIIZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # Ljava/lang/Class;
    .param p9, "x9"    # Z

    .prologue
    .line 27
    invoke-direct/range {p0 .. p9}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->createNotification(IIIIZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mMainActivity:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->getConnectionTickerText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Ljava/lang/Class;
    .param p10, "x10"    # Z

    .prologue
    .line 27
    invoke-direct/range {p0 .. p10}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->createNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createNotification(IIIIZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 12
    .param p1, "id"    # I
    .param p2, "titleId"    # I
    .param p3, "textId"    # I
    .param p4, "iconId"    # I
    .param p5, "dismissable"    # Z
    .param p6, "progressMax"    # I
    .param p7, "progressCurrent"    # I
    .param p9, "display"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZII",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Landroid/support/v4/app/NotificationCompat$Builder;"
        }
    .end annotation

    .prologue
    .line 234
    .local p8, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "text":Ljava/lang/String;
    const-string v4, ""

    move-object v0, p0

    move v1, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->createNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 241
    .local v11, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    return-object v11
.end method

.method private createNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "ticker"    # Ljava/lang/String;
    .param p5, "iconId"    # I
    .param p6, "dismissable"    # Z
    .param p7, "progressMax"    # I
    .param p8, "progressCurrent"    # I
    .param p10, "display"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZII",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Landroid/support/v4/app/NotificationCompat$Builder;"
        }
    .end annotation

    .prologue
    .line 248
    .local p9, "activity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 251
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x24020000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v3

    .line 265
    .local v3, "stackBuilder":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {v3, p9}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    .line 266
    invoke-virtual {v3, v1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    .line 267
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 269
    .local v2, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 271
    if-nez p6, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 272
    const/4 v4, 0x0

    invoke-virtual {v0, p7, p8, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 273
    if-eqz p10, :cond_1

    .line 274
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    :try_start_notif
    invoke-virtual {v4, p1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_notif
    .catch Ljava/lang/Throwable; {:try_start_notif .. :try_end_notif} :catch_notif

    :catch_notif

    .line 276
    :cond_1
    return-object v0

    .line 271
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getConnectionTickerText(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connected"    # Z

    .prologue
    .line 209
    if-eqz p2, :cond_0

    const v0, 0x7f070031

    .line 211
    .local v0, "statusTextId":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x7f070000

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    .end local v0    # "statusTextId":I
    :cond_0
    const v0, 0x7f070032

    goto :goto_0
.end method

.method private isFotaProgressDialogDisabled()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getCommunicationListener()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    return-object v0
.end method

.method protected getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 89
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v1

    return-object v1
.end method

.method protected getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 84
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v1

    return-object v1
.end method

.method public getReadyNotification()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 297
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f070033

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070035

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->getConnectionTickerText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020093

    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->mFotaActivity:Ljava/lang/Class;

    move-object v0, p0

    move v7, v6

    move v8, v6

    move v10, v6

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/fota/CostanzaNotificationManager;->createNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIILjava/lang/Class;Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;
.super Ljava/lang/Object;
.source "WhatsNew.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "Version"

.field public static final NOTIFICATION_UPDATE:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurentVersion:I

.field private final mLastVersion:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mWhatNewPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    .line 45
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    const-string v3, "WhatsNew"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mWhatNewPreferences:Landroid/content/SharedPreferences;

    .line 46
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mWhatNewPreferences:Landroid/content/SharedPreferences;

    const-string v3, "Version"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mLastVersion:I

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 51
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mCurentVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mNotificationManager:Landroid/app/NotificationManager;

    .line 58
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mCurentVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->savePreferences(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private savePreferences(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mWhatNewPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method


# virtual methods
.method public createUpdateNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mLastVersion:I

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mCurentVersion:I

    if-eq v3, v4, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 107
    .local v2, "pIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    const v5, 0x7f0700d2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f020093

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 114
    .local v1, "n":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 115
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "n":Landroid/app/Notification;
    .end local v2    # "pIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method showWhatsNewDialog()V
    .locals 6

    .prologue
    .line 62
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mLastVersion:I

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mCurentVersion:I

    if-eq v4, v5, :cond_0

    .line 64
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 66
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f03002e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 67
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    const v5, 0x7f0700d4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 69
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;->mContext:Landroid/content/Context;

    const v5, 0x7f0700d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/WhatsNew;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 88
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "factory":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

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
    .locals 0

    .prologue
    return-void
.end method

.method showWhatsNewDialog()V
    .locals 0

    .prologue
    return-void
.end method

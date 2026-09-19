.class public abstract Lcom/sonymobile/smartconnect/hostapp/service/EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventReceiver.java"


# static fields
.field public static final LAUNCH_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.launch"

.field public static final LAUNCH_SETTINGS_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected launchService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "hostAppService"    # Landroid/content/ComponentName;
    .param p4, "settingsActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.sonyericsson.extras.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v1, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 37
    :try_start_act
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_act
    .catch Ljava/lang/Throwable; {:try_start_act .. :try_end_act} :catch_act

    :catch_act

    .line 43
    .end local v1    # "activityIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 40
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_er
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_er
    .catch Ljava/lang/Throwable; {:try_start_er .. :try_end_er} :catch_er

    :catch_er
    goto :goto_0
.end method

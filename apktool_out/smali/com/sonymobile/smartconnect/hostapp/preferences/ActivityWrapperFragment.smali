.class public Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;
.super Landroid/preference/PreferenceFragment;
.source "ActivityWrapperFragment.java"


# static fields
.field public static final KEY_ALT_LINK:Ljava/lang/String; = "altLink"

.field public static final KEY_CONFIGURATION_ACTIVITY_NAME:Ljava/lang/String; = "configurationActivity"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final REQUEST_CODE_EXTENSION_SETTINGS:I = 0x1

.field private static final REQUEST_CODE_GOOGLE_PLAY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private marketLaunch(Ljava/lang/String;)V
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    .prologue
    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 122
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "marketLaunch couldn\'t launch Market"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 100
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 104
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v7, "ActivityWrapperFragment.onCreate()"

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 49
    .local v3, "ctxt":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 55
    const-string v7, "altLink"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "altLink":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->marketLaunch(Ljava/lang/String;)V

    .line 84
    .end local v0    # "altLink":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "altLink":Ljava/lang/String;
    :cond_1
    const-string v7, "configurationActivity"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "configActivity":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching preference activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 63
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 64
    const-string v7, "packageName"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "supports_history"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    const-string v7, "supports_actions"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v7, "aha_package_name"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v6, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 75
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not open settings activity for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0

    .line 80
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 111
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$11;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getFotaSyncManager()Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->toggleAutomaticFota()V

    return-void
.end method

.method private getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    return-object v0
.end method

.method private getFotaSyncManager()Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaSyncManager()Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v0

    return-object v0
.end method

.method private getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    return-object v0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 132
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 133
    const/16 v1, 0xf

    .line 135
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 136
    const v2, 0x7f02008d

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 138
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method

.method private isAutomaticFotaDisabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 193
    .local v1, "flags":I
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    .line 194
    const-string v3, "DebugPreferences"

    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "DISABLE_AUTOMATIC_FOTA"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 205
    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return v0
.end method

.method private registerFactoryResetListener()V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1FactoryResetListener;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1FactoryResetListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 178
    return-void
.end method

.method private toggleAutomaticFota()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    const v3, 0x7f0d006a

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 213
    .local v0, "button":Landroid/widget/Button;
    const-string v3, "DebugPreferences"

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 217
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->isAutomaticFotaDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 219
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "DISABLE_AUTOMATIC_FOTA"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    const v3, 0x7f070010

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 228
    :goto_0
    return-void

    .line 223
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 224
    .restart local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "DISABLE_AUTOMATIC_FOTA"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    const v3, 0x7f070011

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected gotoLogActivity()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method protected gotoWatchFaceActivity()V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public onConnect()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$6;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->initActionBar()V

    .line 46
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->setContentView(I)V

    .line 48
    const v2, 0x7f0d0068

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "b":Landroid/widget/Button;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v2, 0x7f0d0069

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 60
    .restart local v0    # "b":Landroid/widget/Button;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x7f0d006a

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 72
    .restart local v0    # "b":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->isAutomaticFotaDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const v2, 0x7f070011

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 77
    :goto_0
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x7f0d006b

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 86
    .restart local v0    # "b":Landroid/widget/Button;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v2, 0x7f0d006c

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 97
    .restart local v0    # "b":Landroid/widget/Button;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$5;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$5;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v1

    .line 107
    .local v1, "comManager":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    invoke-virtual {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 108
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$11;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$CommunicationManager$ConnectionState:[I

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 125
    :goto_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->registerFactoryResetListener()V

    .line 128
    :cond_0
    return-void

    .line 75
    .end local v1    # "comManager":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    :cond_1
    const v2, 0x7f070010

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 110
    .restart local v1    # "comManager":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onConnect()V

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onNewFirmwareAccessoryConnected()V

    goto :goto_1

    .line 116
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onOldFirmwareAccessoryConnected()V

    goto :goto_1

    .line 119
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onDisconnect()V

    goto :goto_1

    .line 122
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->onReady()V

    goto :goto_1

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 263
    const-string v1, "StartupActivity.onDestroy()"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 264
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    .line 265
    .local v0, "comManager":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->removeCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$10;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$10;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 326
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$8;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$7;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 150
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->finish()V

    .line 154
    const/4 v1, 0x1

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 257
    const-string v0, "StartupActivity.onPause()"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 259
    return-void
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$9;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity$9;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 251
    const-string v0, "StartupActivity.onResume()"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "StartupActivity.onStart()"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 245
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    const-string v1, "StartupActivity"

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendView(Ljava/lang/String;)V

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 247
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;
.super Landroid/preference/PreferenceActivity;
.source "AboutPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$5;
    }
.end annotation


# static fields
.field public static final SHOW_ATTRIBUTION:Ljava/lang/String; = "show_attribution"


# instance fields
.field keyState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->createWatchAlreadyUpToDateDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->createLicenseDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createLicenseDialog()Landroid/app/AlertDialog;
    .locals 9

    .prologue
    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f070085

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030015

    const v6, 0x7f0d0050

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 155
    .local v2, "dialoglayout":Landroid/view/View;
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v4, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getMessageText()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "dialogBody":Ljava/lang/String;
    const v6, 0x7f0d0051

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 162
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    .local v3, "spannable":Landroid/text/SpannableString;
    const/4 v6, 0x3

    invoke-static {v3, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 164
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    .end local v3    # "spannable":Landroid/text/SpannableString;
    :cond_0
    const v6, 0x7f07006d

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$4;

    invoke-direct {v7, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method private createWatchAlreadyUpToDateDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07006d

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    return-object v0
.end method

.method private getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    return-object v0
.end method

.method private getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    return-object v0
.end method

.method private getMessageText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "dialogBody":Ljava/lang/String;
    return-object v0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 107
    const/16 v1, 0xf

    .line 109
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 110
    const v2, 0x7f02008d

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 112
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/high16 v8, 0x7f050000

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->addPreferencesFromResource(I)V

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->initActionBar()V

    .line 48
    const-string v4, ""

    .line 51
    .local v4, "hostAppVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 52
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 53
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getAccessoryFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "accessoryVersion":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 61
    const v8, 0x7f070055

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    :cond_0
    const-string v8, "firmwareVersionAccessoryPref"

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    const-string v8, "firmwareVersionHostappPref"

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    const-string v8, "startFotaPref"

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 67
    .local v2, "customPref":Landroid/preference/Preference;
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;

    invoke-direct {v8, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)V

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    const-string v8, "attributions"

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 88
    .local v1, "attributionPref":Landroid/preference/Preference;
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$2;

    invoke-direct {v8, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)V

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "show_attribution"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 98
    .local v7, "showAttribution":Z
    if-eqz v7, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->createLicenseDialog()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 100
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "show_attribution"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    :cond_1
    return-void

    .line 54
    .end local v0    # "accessoryVersion":Ljava/lang/CharSequence;
    .end local v1    # "attributionPref":Landroid/preference/Preference;
    .end local v2    # "customPref":Landroid/preference/Preference;
    .end local v7    # "showAttribution":Z
    :catch_0
    move-exception v3

    .line 55
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0x18

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 200
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    if-nez v0, :cond_0

    if-ne v4, p1, :cond_0

    .line 201
    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    .line 212
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 202
    :cond_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    if-ne v0, v1, :cond_1

    if-ne v5, p1, :cond_1

    .line 203
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    goto :goto_0

    .line 204
    :cond_1
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    if-ne v0, v2, :cond_2

    if-ne v5, p1, :cond_2

    .line 205
    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    goto :goto_0

    .line 206
    :cond_2
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    if-ne v0, v3, :cond_3

    if-ne v4, p1, :cond_3

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/costanza/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->keyState:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 124
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->finish()V

    .line 128
    const/4 v1, 0x1

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

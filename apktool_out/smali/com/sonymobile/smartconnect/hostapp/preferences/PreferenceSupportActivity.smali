.class public Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;
.super Landroid/app/Activity;
.source "PreferenceSupportActivity.java"


# instance fields
.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 46
    const/16 v1, 0xf

    .line 48
    .local v1, "flag":I
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 49
    const v2, 0x7f02008d

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setIcon(I)V

    .line 51
    .end local v1    # "flag":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->initActionBar()V

    .line 31
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->wv:Landroid/webkit/WebView;

    .line 33
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 36
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->wv:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->wv:Landroid/webkit/WebView;

    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 62
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;->finish()V

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

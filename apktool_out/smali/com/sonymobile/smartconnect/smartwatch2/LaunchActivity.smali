.class public Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 34
    .local v1, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->isSecurityProblem()Z

    move-result v4

    goto :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Address"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->resolveWatchAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\nLaunchActivity started! \n  Address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    const-string v4, "null"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    :cond_1
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->startCostanzaService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->finish()V

    goto :goto_0

    .end local v2    # "i":Landroid/content/Intent;
    :cond_2
    move-object v4, v0

    .line 42
    goto :goto_1
.end method

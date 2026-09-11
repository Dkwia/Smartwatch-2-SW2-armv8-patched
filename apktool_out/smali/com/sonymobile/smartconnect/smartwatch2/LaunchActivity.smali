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

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 40
    .local v3, "startIntent":Landroid/content/Intent;
    const-string v4, "Address"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "address":Ljava/lang/String;
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

    .line 55
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "Address"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v4, "SERVICE_COMMAND"

    const-string v5, "REGISTER"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/smartwatch2/LaunchActivity;->finish()V

    goto :goto_0

    .end local v2    # "i":Landroid/content/Intent;
    :cond_2
    move-object v4, v0

    .line 42
    goto :goto_1
.end method

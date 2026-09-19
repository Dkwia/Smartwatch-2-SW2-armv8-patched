.class public Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaEventReceiver;
.super Lcom/sonymobile/smartconnect/hostapp/service/EventReceiver;
.source "CostanzaEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/service/EventReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    if-eqz p2, :cond_1

    .line 28
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.sonyericsson.extras.launch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-string v3, "SERVICE_COMMAND"

    const-string v4, "REGISTER"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonymobile.smartconnect.hostapp.preferences.ExtensionsListActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v2, "settingsActivity":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaService;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v1, "hostAppService":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaEventReceiver;->launchService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 38
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 40
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "hostAppService":Landroid/content/ComponentName;
    .end local v2    # "settingsActivity":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method

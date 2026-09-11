.class public Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;
.super Ljava/lang/Object;
.source "AhaIntentSenderImpl.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected send(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sent intent through broadcast queue, %s, to %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 27
    const-string v0, "aha_package_name"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;->send(Landroid/content/Intent;)V

    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 36
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaService;
.super Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;
.source "CostanzaService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->onCreate()V

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->onDestroy()V

    .line 29
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaService;->handleCommand(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 34
    const/4 v0, 0x1

    return v0
.end method

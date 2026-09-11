.class Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommunicationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 4

    .prologue
    .line 218
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getAccessoryFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "accessoryVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getEmbeddedFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "embeddedVersion":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isFotaPossible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Fota can\'t be performed! Different hardware!"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Fota can be performed! Matching hardware!"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

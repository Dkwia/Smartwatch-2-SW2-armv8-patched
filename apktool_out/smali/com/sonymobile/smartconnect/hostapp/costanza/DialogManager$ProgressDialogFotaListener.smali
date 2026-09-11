.class Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressDialogFotaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadDone()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 0
    .param p1, "promille"    # I

    .prologue
    .line 181
    return-void
.end method

.method public onDownloadStarted()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public onFailed()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public onFlashStarted()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

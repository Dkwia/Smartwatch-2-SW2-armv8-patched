.class public Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;
.super Landroid/app/DialogFragment;
.source "FotaProgressDialog.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->mView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method protected getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 47
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v1

    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070063

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 36
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->mView:Landroid/view/View;

    .line 37
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->addFotaListener(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;)V

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 71
    const-string v0, "Costanza"

    const-string v1, "FotaProgressDialog.onDetach()!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 76
    const-string v2, "Costanza"

    const-string v3, "FotaProgressDialog dismissed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 82
    .local v1, "appContext":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    :cond_0
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->removeFotaListener(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;)V

    .line 89
    :cond_1
    return-void
.end method

.method public onDownloadDone()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDownloadProgress(I)V
    .locals 2
    .param p1, "promille"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDownloadStarted()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onFailed()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onFlashStarted()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "Costanza"

    const-string v1, "FotaProgressDialog.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "Costanza"

    const-string v1, "FotaProgressDialog.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 60
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "Costanza"

    const-string v1, "FotaProgressDialog.onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 54
    return-void
.end method

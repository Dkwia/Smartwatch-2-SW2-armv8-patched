.class public Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;
.super Landroid/app/DialogFragment;
.source "FotaFailedDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 53
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v1

    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070063

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 30
    const v3, 0x7f07006c

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    const v3, 0x7f07006d

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 45
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 46
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 58
    const-string v0, "FotaFailedDialog.onDismiss()"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 59
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 60
    return-void
.end method

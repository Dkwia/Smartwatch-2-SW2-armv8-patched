.class public Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;
.super Landroid/app/DialogFragment;
.source "FotaQuestionDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 58
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v1

    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f070063

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 32
    const v7, 0x7f07005e

    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog$1;

    invoke-direct {v8, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 41
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f030011

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 44
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0d0048

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 45
    .local v5, "versionView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getEmbeddedFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "version":Ljava/lang/String;
    const v7, 0x7f07005c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 63
    const-string v0, "FotaQuestionDialog.onDismiss()"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 65
    return-void
.end method

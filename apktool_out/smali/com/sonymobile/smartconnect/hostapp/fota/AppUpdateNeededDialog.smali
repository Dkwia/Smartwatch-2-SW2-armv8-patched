.class public Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;
.super Landroid/app/DialogFragment;
.source "AppUpdateNeededDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;)Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    return-object v0
.end method

.method private getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070063

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 32
    const v3, 0x7f07005e

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 42
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 51
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppUpdateNeededDialog.onDismiss()"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 53
    return-void
.end method

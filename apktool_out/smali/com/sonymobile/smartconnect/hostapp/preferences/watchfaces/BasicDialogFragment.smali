.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;
.super Landroid/app/DialogFragment;
.source "BasicDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$BasicDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 14
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;
    .locals 3
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;-><init>()V

    .line 21
    .local v1, "frag":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07006d

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07006c

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

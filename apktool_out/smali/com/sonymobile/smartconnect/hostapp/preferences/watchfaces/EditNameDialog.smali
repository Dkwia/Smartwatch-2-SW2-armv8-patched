.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;
.super Landroid/app/DialogFragment;
.source "EditNameDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$EditNameDialogListener;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->postNameToListener()V

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;-><init>()V

    .line 27
    .local v1, "f":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method

.method private postNameToListener()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$EditNameDialogListener;

    .line 87
    .local v0, "activity":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$EditNameDialogListener;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$EditNameDialogListener;->onFinishEditDialog(Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "initialName":Ljava/lang/String;
    :goto_0
    const v2, 0x7f030013

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->mEditText:Landroid/widget/EditText;

    .line 48
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f070093

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 52
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 55
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 56
    const v2, 0x7f0d004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v2, 0x7f0d004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-object v1

    .line 45
    .end local v0    # "initialName":Ljava/lang/String;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->postNameToListener()V

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->dismiss()V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

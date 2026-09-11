.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$1;
.super Ljava/lang/Object;
.source "BasicDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$BasicDialogListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$BasicDialogListener;->doNegativeClick()V

    .line 46
    return-void
.end method

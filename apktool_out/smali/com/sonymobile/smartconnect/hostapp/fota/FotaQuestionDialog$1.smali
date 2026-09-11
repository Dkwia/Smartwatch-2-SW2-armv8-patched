.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog$1;
.super Ljava/lang/Object;
.source "FotaQuestionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->performFota()V

    .line 36
    return-void
.end method

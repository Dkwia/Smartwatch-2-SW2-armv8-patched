.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog$1;
.super Ljava/lang/Object;
.source "FotaInterruptedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;->dismiss()V

    .line 32
    return-void
.end method

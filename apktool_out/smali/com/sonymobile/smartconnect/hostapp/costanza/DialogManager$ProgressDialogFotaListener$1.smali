.class Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$1;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;->onDownloadStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;I)V

    .line 176
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$3;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->onDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$3;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$3;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener$3;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;I)V

    .line 262
    :cond_0
    return-void
.end method

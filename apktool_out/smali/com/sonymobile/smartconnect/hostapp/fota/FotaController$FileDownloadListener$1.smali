.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;
.super Ljava/lang/Object;
.source "FotaController.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->onSynced()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I

    .prologue
    .line 998
    return-void
.end method

.method public onSynced()V
    .locals 4

    .prologue
    .line 990
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;

    iget-object v1, v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_COMPLETE_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$700(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    .line 991
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;

    iget-object v1, v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$800(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;-><init>(I)V

    .line 992
    .local v0, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setAction(I)V

    .line 993
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;

    iget-object v1, v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$900(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaFirmwareInfoCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setValue(I)V

    .line 994
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;

    iget-object v1, v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$900(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 995
    return-void
.end method

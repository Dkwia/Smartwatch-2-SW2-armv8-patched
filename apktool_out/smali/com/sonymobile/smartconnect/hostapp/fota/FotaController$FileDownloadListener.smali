.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;
.super Ljava/lang/Object;
.source "FotaController.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileDownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 4
    .param p1, "max"    # I
    .param p2, "progress"    # I

    .prologue
    .line 1004
    int-to-float v2, p2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    int-to-float v3, p1

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 1006
    .local v1, "promille":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v2, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$1000(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;I)V

    .line 1014
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$800(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;-><init>(I)V

    .line 1015
    .local v0, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setAction(I)V

    .line 1016
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setValue(I)V

    .line 1017
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending fota action progress using message id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->getMessageId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1020
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$900(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->sendFotaProgressMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 1021
    return-void
.end method

.method public onSynced()V
    .locals 2

    .prologue
    .line 983
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    const-string v0, "All FOTA files ack:ed!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$900(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->sendFotaFirmwareInfo(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)I

    .line 1000
    return-void
.end method

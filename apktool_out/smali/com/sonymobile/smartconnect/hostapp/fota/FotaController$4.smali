.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$4;
.super Ljava/lang/Object;
.source "FotaController.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onFotaResetResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReset()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$300(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FOTA attempts failed! Giving up!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$4;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$500(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V

    goto :goto_0
.end method

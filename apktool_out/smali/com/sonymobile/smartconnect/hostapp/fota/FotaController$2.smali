.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$2;
.super Ljava/lang/Object;
.source "FotaController.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onFotaStartResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V
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
    .line 476
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReset()V
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fota reset done, continuing auto fota"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$300(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$400(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FOTA attempts failed! Giving up!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$500(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V

    goto :goto_0
.end method

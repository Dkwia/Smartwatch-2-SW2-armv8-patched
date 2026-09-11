.class Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;
.super Ljava/lang/Object;
.source "FotaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->forceFotaDownloadDelayed()V
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
    .line 409
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$000(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    if-ne v0, v1, :cond_1

    .line 414
    const-string v0, "Still not downloading, force fota"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 415
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$100(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$200(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Z)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fota controller was :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->access$000(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and not WAITING_FOR_START_RESPONSE. Force fota won\'t do anything"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

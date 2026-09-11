.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
.super Ljava/lang/Object;
.source "FotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FotaListener"
.end annotation


# virtual methods
.method public abstract onDownloadDone()V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadStarted()V
.end method

.method public abstract onFailed()V
.end method

.method public abstract onFlashStarted()V
.end method

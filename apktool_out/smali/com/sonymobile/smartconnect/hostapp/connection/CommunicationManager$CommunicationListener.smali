.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
.super Ljava/lang/Object;
.source "CommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommunicationListener"
.end annotation


# virtual methods
.method public abstract onConnect()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract onNewFirmwareAccessoryConnected()V
.end method

.method public abstract onOldFirmwareAccessoryConnected()V
.end method

.method public abstract onReady()V
.end method

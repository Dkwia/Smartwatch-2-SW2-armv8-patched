.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;
.super Ljava/lang/Object;
.source "CommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FotaResponseListener"
.end annotation


# virtual methods
.method public abstract onFotaBatteryLevelIndication(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;)V
.end method

.method public abstract onFotaResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V
.end method

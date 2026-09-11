.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;
.super Ljava/lang/Object;
.source "CommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CostanzaMessageListener"
.end annotation


# virtual methods
.method public abstract getMessageTypeToListenFor()I
.end method

.method public abstract onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end method

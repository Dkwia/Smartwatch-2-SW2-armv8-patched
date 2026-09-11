.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
.super Ljava/lang/Object;
.source "CostanzaMessageSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;
    }
.end annotation


# virtual methods
.method public abstract isReady()Z
.end method

.method public varargs abstract send(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end method

.method public abstract send(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end method

.method public varargs abstract sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end method

.method public abstract sendFotaProgress(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end method

.method public abstract sendPrioritized(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end method

.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventsChangeListener"
.end annotation


# virtual methods
.method public abstract onEventsDeleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onEventsInserted(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onEventsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;)V"
        }
    .end annotation
.end method

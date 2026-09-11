.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationSourcesChangeListener"
.end annotation


# virtual methods
.method public abstract onNotificationSourcesDeleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNotificationSourcesInserted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNotificationSourcesUpdated(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation
.end method

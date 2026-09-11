.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
.super Ljava/lang/Object;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtensionsChangeListener"
.end annotation


# virtual methods
.method public abstract onExtensionsDeleted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onExtensionsInserted(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onExtensionsUpdated(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSyncFinished()V
.end method

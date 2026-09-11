.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;
.super Landroid/database/ContentObserver;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartConnectContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 673
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 674
    return-void
.end method


# virtual methods
.method protected aquireLock()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->SMART_CONNECT_CHANGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 677
    return-void
.end method

.method protected releaseLock()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->SMART_CONNECT_CHANGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 680
    return-void
.end method

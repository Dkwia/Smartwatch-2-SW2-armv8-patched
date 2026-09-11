.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;
.super Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventUpdateContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 643
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V

    .line 644
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 648
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EventUpdateContentObserver detected change!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;->aquireLock()V

    .line 650
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    .line 651
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;->releaseLock()V

    .line 652
    return-void
.end method

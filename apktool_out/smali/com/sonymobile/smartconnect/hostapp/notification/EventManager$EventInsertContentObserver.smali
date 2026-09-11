.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;
.super Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventInsertContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V

    .line 629
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 633
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EventInsertContentObserver detected change!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 634
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;->aquireLock()V

    .line 635
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Z)V

    .line 636
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;->releaseLock()V

    .line 637
    return-void
.end method

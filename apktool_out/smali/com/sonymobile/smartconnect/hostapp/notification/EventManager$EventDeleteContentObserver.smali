.class Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;
.super Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventDeleteContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 659
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V

    .line 660
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 664
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EventDeleteContentObserver detected change!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;->aquireLock()V

    .line 666
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    .line 667
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;->releaseLock()V

    .line 668
    return-void
.end method

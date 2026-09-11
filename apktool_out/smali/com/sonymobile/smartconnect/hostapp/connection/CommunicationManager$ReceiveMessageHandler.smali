.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;
.super Landroid/os/Handler;
.source "CommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveMessageHandler"
.end annotation


# instance fields
.field private final mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 921
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .line 922
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 923
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    .line 924
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 939
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->poke()V

    .line 941
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 942
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 943
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .line 944
    .local v0, "cmsg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$800(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 946
    .end local v0    # "cmsg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 947
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;
.super Landroid/os/Handler;
.source "CommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageHandler"
.end annotation


# instance fields
.field final MAX_RETRIES:I

.field mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .line 855
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 851
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    .line 852
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->MAX_RETRIES:I

    .line 856
    return-void
.end method

.method private retry(ILjava/io/IOException;)I
    .locals 2
    .param p1, "retries"    # I
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 898
    const/4 v0, 0x5

    if-ge p1, v0, :cond_2

    .line 899
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    const-string v0, "Communications manager got IOException during message write. Retrying."

    invoke-static {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 904
    :cond_0
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :cond_1
    :goto_0
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 908
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    const-string v0, "Communications manager got IOException during message write. Waiting for accessory to reconnect."

    invoke-static {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 905
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 869
    const/4 v1, 0x0

    .line 870
    .local v1, "retries":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 871
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_3

    .line 872
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 874
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 875
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->retry(ILjava/io/IOException;)I

    move-result v1

    .line 891
    goto :goto_0

    .line 876
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$500(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 877
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$500(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;)V

    goto :goto_0

    .line 878
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 879
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 880
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;)V

    goto :goto_0

    .line 881
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$700(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 882
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$700(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 894
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 895
    return-void
.end method

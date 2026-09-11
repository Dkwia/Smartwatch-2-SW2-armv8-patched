.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;
.super Ljava/lang/Object;
.source "CommunicationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->startReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 652
    const/4 v3, 0x0

    .line 653
    .local v3, "readEx":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$002(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 657
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 659
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->read()Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    move-result-object v2

    .line 660
    .local v2, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    if-nez v2, :cond_2

    .line 661
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v2    # "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Communications manager got IOException during read in onConnected."

    invoke-static {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 669
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 674
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$002(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 675
    add-int/lit8 v3, v3, 0x1

    .line 676
    goto :goto_0

    .line 663
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->receive(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
    const/4 v3, 0x0

    goto :goto_0

    .line 670
    .end local v2    # "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 671
    .local v1, "e2":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 679
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/lang/InterruptedException;
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "CommunicationManager reader exiting to wait for reconnect."

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 680
    :cond_4
    return-void
.end method

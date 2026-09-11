.class Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;
.super Ljava/lang/Thread;
.source "TcpServerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final WELCOME_MESSAGE:Ljava/lang/String;

.field private isClosing:Z

.field private serverSocket:Ljava/net/ServerSocket;

.field private socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;)V
    .locals 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug console for Costanza."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Connection will be closed when you leave the log (hit the \"Back\" button on your phone."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Please issue commands:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->WELCOME_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method private closeConnection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->closeReceiver()V

    .line 92
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    .line 102
    :cond_0
    return-void

    .line 98
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    throw v0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeReceiver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    .line 114
    :cond_0
    return-void

    .line 111
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    throw v0

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isReadyAndNotQuitting()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mTcpServer:Ljava/lang/Thread;

    monitor-enter v1

    .line 177
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    iget-boolean v0, v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mReady:Z

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    iget-boolean v0, v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mQuiting:Z

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_1
    return v0

    .line 182
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0

    .line 186
    :cond_1
    :try_start_2
    monitor-exit v1

    .line 187
    const/4 v0, 0x1

    goto :goto_1

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private receiveMessage()V
    .locals 7

    .prologue
    .line 117
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_0

    .line 120
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 123
    .local v3, "in":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "cmd":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 143
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v0    # "cmd":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\r"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->access$000(Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;)Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    move-result-object v1

    .line 131
    .local v1, "debugEventManager":Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->sendDebugCommand([B)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 134
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "debugEventManager":Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    .end local v3    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 138
    :catch_1
    move-exception v2

    .line 140
    .local v2, "e":Ljava/io/IOException;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isClosing:Z

    goto :goto_0
.end method

.method private waitForConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 146
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Ljava/net/ServerSocket;

    const v3, 0xe4f8

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    .line 150
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    .line 153
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 155
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 157
    .local v1, "out":Ljava/io/BufferedWriter;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->WELCOME_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 159
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isClosing:Z
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/InterruptedIOException;
    iput-boolean v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isClosing:Z

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    iput-boolean v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isClosing:Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->serverSocket:Ljava/net/ServerSocket;

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isReadyAndNotQuitting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->waitForConnection()V

    .line 75
    :goto_1
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isClosing:Z

    if-nez v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isReadyAndNotQuitting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->receiveMessage()V

    goto :goto_1

    .line 79
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->isClosing:Z

    goto :goto_1

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->closeReceiver()V

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;->closeConnection()V

    .line 85
    return-void
.end method

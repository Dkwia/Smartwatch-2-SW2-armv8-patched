.class public Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;
.super Ljava/lang/Object;
.source "SensorSocket.java"


# instance fields
.field private mOutStream:Ljava/io/DataOutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "socketName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocketName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized closeStream()V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mOutStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :cond_1
    monitor-exit p0

    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLocalSocket()Landroid/net/LocalSocket;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method public getOutStream()Ljava/io/DataOutputStream;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method public getSocketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocketName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized openStream()V
    .locals 4

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocketName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 43
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->mOutStream:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

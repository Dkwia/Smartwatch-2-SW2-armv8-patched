.class Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;
.super Ljava/lang/Object;
.source "BluetoothConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 458
    const/4 v6, 0x0

    .line 459
    .local v6, "socket":Landroid/bluetooth/BluetoothSocket;
    const/4 v3, 0x0

    .line 461
    .local v3, "connected":Z
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 462
    const/4 v0, 0x5

    .line 463
    .local v0, "MAX_ATTEMPTS":I
    const/4 v1, 0x0

    .line 468
    .local v1, "attempts":I
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->closeActiveConnection()V

    .line 473
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->isConnected()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v3, :cond_3

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x5

    if-ge v1, v7, :cond_3

    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 475
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 477
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "btAddress":Ljava/lang/String;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 483
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$800()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 502
    :goto_1
    if-eqz v6, :cond_1

    .line 504
    :try_start_2
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 505
    const/4 v3, 0x1

    .line 514
    :cond_1
    :goto_2
    if-nez v3, :cond_0

    .line 516
    const-wide/16 v8, 0x1f4

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v5

    .line 518
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 478
    .end local v2    # "btAddress":Ljava/lang/String;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 497
    .restart local v2    # "btAddress":Ljava/lang/String;
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :catch_1
    move-exception v5

    .line 498
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 499
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "BTCM socket creation IOException."

    invoke-static {v7, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 500
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 506
    .end local v5
    :catch_2
    move-exception v5

    .line 507
    .restart local v5
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 508
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    const-string v7, "BTCM socket connection IOException on connect."

    invoke-static {v7, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 524
    .end local v2    # "btAddress":Ljava/lang/String;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5
    :cond_3
    if-eqz v3, :cond_4

    .line 525
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7, v6}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$700(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/bluetooth/BluetoothSocket;)V

    .line 527
    :cond_4
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;
.super Landroid/os/Handler;
.source "BluetoothConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    .line 325
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 326
    return-void
.end method

.method private startAccept()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    .line 346
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Starting to listen for connections!"

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 347
    :cond_0
    const/4 v6, 0x0

    .line 348
    .local v6, "socket":Landroid/bluetooth/BluetoothSocket;
    const/16 v0, 0xa

    .line 349
    .local v0, "MAX_ATTEMPTS":I
    const/4 v1, 0x0

    .line 351
    .local v1, "attempts":I
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Z

    move-result v7

    if-nez v7, :cond_2

    if-ge v1, v12, :cond_2

    .line 352
    add-int/lit8 v1, v1, 0x1

    .line 353
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 354
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 355
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_2
    if-lt v1, v12, :cond_3

    .line 439
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->stopAcceptingConnections()V

    .line 440
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopped accepting connections, attempts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 442
    :cond_3
    return-void

    .line 357
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    .line 358
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "BT disabled, waiting..."

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/Object;

    move-result-object v7

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    :goto_1
    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 363
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 368
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_6
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    if-nez v7, :cond_8

    .line 371
    const/4 v4, 0x0

    .line 377
    .local v4, "localServerSocket":Landroid/bluetooth/BluetoothServerSocket;
    :try_start_5
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    const-string v8, "Constanza"

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$500()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v4

    .line 391
    :goto_2
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 392
    if-eqz v4, :cond_7

    .line 393
    :try_start_6
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$402(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;

    .line 395
    :cond_7
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 400
    .end local v4    # "localServerSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_8
    :try_start_7
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 401
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    .line 402
    if-eqz v6, :cond_c

    .line 408
    const/4 v1, 0x0

    .line 409
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "newAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 412
    :cond_9
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7, v6}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$700(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/bluetooth/BluetoothSocket;)V

    .line 416
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 417
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$402(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 433
    .end local v5    # "newAddress":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 434
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 435
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "BTCM server socket connection IOException."

    invoke-static {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 379
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "localServerSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_2
    move-exception v2

    .line 380
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 381
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "BTCM adapter listening IOException."

    invoke-static {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 385
    :cond_a
    const-wide/16 v8, 0x1f4

    :try_start_8
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 386
    :catch_3
    move-exception v3

    .line 387
    .local v3, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 395
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v7

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v7

    .line 419
    .end local v4    # "localServerSocket":Landroid/bluetooth/BluetoothServerSocket;
    .restart local v5    # "newAddress":Ljava/lang/String;
    :cond_b
    :try_start_a
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startAccept: Already connected to device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Ignoring connection request from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 427
    .end local v5    # "newAddress":Ljava/lang/String;
    :cond_c
    const-wide/16 v8, 0x1f4

    :try_start_b
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 428
    :catch_4
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 330
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 332
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->startAccept()V

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

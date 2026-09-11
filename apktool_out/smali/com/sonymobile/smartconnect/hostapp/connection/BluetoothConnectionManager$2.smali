.class Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConnectionManager.java"


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
    .line 538
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 542
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 545
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 546
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 548
    .local v3, "state":I
    packed-switch v3, :pswitch_data_0

    .line 595
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 550
    .restart local v3    # "state":I
    :pswitch_0
    const-string v4, "Received: BluetoothAdapter.STATE_OFF"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0

    .line 555
    :pswitch_1
    const-string v4, "Received: BluetoothAdapter.STATE_TURNING_OFF"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 556
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->closeActiveConnection()V

    .line 558
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->stopAcceptingConnections()V

    goto :goto_0

    .line 561
    :pswitch_2
    const-string v4, "Received: BluetoothAdapter.STATE_ON:"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0

    .line 564
    :pswitch_3
    const-string v4, "Received: BluetoothAdapter.STATE_TURNING_ON"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0

    .line 567
    .end local v3    # "state":I
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 570
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    const-string v4, "Received: ACTION_ACL_CONNECTED"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 574
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->startAcceptingConnections()V

    goto :goto_0

    .line 576
    :cond_2
    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    :cond_3
    const-string v4, "Received: ACTION_ACL_DISCONNECTED/ACTION_ACL_DISCONNECT_REQUESTED"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 581
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->closeActiveConnection()V

    .line 582
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 585
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 586
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->stopAcceptingConnections()V

    goto :goto_0

    .line 590
    .end local v1    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 591
    const-string v4, "Connected Address=%s, This Address=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

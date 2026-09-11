.class public Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothConnectionManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;
    }
.end annotation


# static fields
.field private static final CONNECT_TO_ENDPOINT:I = 0x1

.field private static final COSTANZA_CLIENT_UUID:Ljava/util/UUID;

.field private static final COSTANZA_SERVER:Ljava/lang/String; = "Constanza"

.field private static final COSTANZA_SERVER_UUID:Ljava/util/UUID;

.field private static final START_ACCEPTING_CONNECTIONS:I


# instance fields
.field private final mAcceptHandler:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;

.field private final mAcceptHandlerThread:Landroid/os/HandlerThread;

.field private final mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtAddress:Ljava/lang/String;

.field mBtBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnectHandler:Landroid/os/Handler;

.field private final mConnectHandlerThread:Landroid/os/HandlerThread;

.field private final mConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunner:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mIsAcceptingConnections:Z

.field private mIsShuttingDown:Z

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field private final mSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "8E780522-3C51-11E1-8D8D-001CC4D601D8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->COSTANZA_SERVER_UUID:Ljava/util/UUID;

    .line 45
    const-string v0, "8E780523-3C51-11E1-8D8D-001CC4D601D8"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->COSTANZA_CLIENT_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsShuttingDown:Z

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionListeners:Ljava/util/List;

    .line 454
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionRunner:Ljava/lang/Runnable;

    .line 538
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AcceptHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mAcceptHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mAcceptHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 72
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mAcceptHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 73
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mAcceptHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mAcceptHandler:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;

    .line 75
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BTConnectHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectHandlerThread:Landroid/os/HandlerThread;

    .line 76
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 77
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectHandler:Landroid/os/Handler;

    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsShuttingDown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsAcceptingConnections:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->COSTANZA_SERVER_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->onConnect(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic access$800()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->COSTANZA_CLIENT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method private onConnect(Landroid/bluetooth/BluetoothSocket;)V
    .locals 5
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 304
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v4

    .line 305
    if-eqz p1, :cond_0

    .line 306
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 307
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    .line 313
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 314
    .local v2, "tList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;

    .line 315
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;->onConnected()V

    goto :goto_0

    .line 317
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;
    .end local v2    # "tList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "tList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeActiveConnection()V
    .locals 6

    .prologue
    .line 137
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 140
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 141
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 142
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionListeners:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    .local v3, "tList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;

    .line 154
    .local v2, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;
    invoke-interface {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;->onDisconnected()V

    goto :goto_1

    .line 156
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;
    .end local v3    # "tList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "tList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;>;"
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 4
    .param p1, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsShuttingDown:Z

    if-eqz v0, :cond_0

    .line 166
    monitor-exit v1

    .line 188
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "connect: Trying to connect to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_2
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->startAcceptingConnections()V

    .line 187
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: Already connected to device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Ignoring connection request from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 185
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 271
    :goto_0
    return-object v1

    .line 267
    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 271
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 290
    :goto_0
    return-object v1

    .line 286
    :cond_0
    monitor-exit v2

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 290
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isAcceptingConnections()Z
    .locals 2

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsAcceptingConnections:Z

    monitor-exit v1

    return v0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reconnect()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->closeActiveConnection()V

    .line 196
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsShuttingDown:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mBtAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->connect(Ljava/lang/String;)V

    .line 202
    :cond_0
    monitor-exit v1

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeConnectionListener(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutDown()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsShuttingDown:Z

    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->stopAcceptingConnections()V

    .line 214
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->closeActiveConnection()V

    .line 215
    return-void

    .line 212
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startAcceptingConnections()V
    .locals 4

    .prologue
    .line 101
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsAcceptingConnections:Z

    if-eqz v0, :cond_0

    .line 103
    monitor-exit v1

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsAcceptingConnections:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsShuttingDown:Z

    .line 107
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mAcceptHandler:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mAcceptHandler:Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager$AcceptHandler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAcceptingConnections()V
    .locals 3

    .prologue
    .line 116
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsAcceptingConnections:Z

    if-nez v1, :cond_0

    .line 118
    monitor-exit v2

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mIsAcceptingConnections:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnectionManager;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 129
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

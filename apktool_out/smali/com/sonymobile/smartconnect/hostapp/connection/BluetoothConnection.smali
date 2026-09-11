.class public Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;
.super Ljava/lang/Object;
.source "BluetoothConnection.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/Connection;


# instance fields
.field private socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 25
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public isSameEndpoint(Lcom/sonymobile/smartconnect/hostapp/connection/Connection;)Z
    .locals 5
    .param p1, "c"    # Lcom/sonymobile/smartconnect/hostapp/connection/Connection;

    .prologue
    .line 56
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;

    move-object v1, v0

    .line 57
    .local v1, "bc":Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;
    iget-object v3, v1, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 60
    .end local v1    # "bc":Lcom/sonymobile/smartconnect/hostapp/connection/BluetoothConnection;
    :goto_0
    return v3

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 60
    const/4 v3, 0x0

    goto :goto_0
.end method

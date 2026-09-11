.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# virtual methods
.method public abstract addConnectionListener(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;)V
.end method

.method public abstract closeActiveConnection()V
.end method

.method public abstract connect(Ljava/lang/String;)V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getRemoteAddress()Ljava/lang/String;
.end method

.method public abstract isAcceptingConnections()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract reconnect()V
.end method

.method public abstract removeConnectionListener(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;)V
.end method

.method public abstract shutDown()V
.end method

.method public abstract startAcceptingConnections()V
.end method

.method public abstract stopAcceptingConnections()V
.end method

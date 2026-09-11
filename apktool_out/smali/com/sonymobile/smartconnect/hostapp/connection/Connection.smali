.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/connection/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isSameEndpoint(Lcom/sonymobile/smartconnect/hostapp/connection/Connection;)Z
.end method

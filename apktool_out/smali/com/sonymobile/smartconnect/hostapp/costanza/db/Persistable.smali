.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;
.super Ljava/lang/Object;
.source "Persistable.java"


# virtual methods
.method public abstract loadPersistedState(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract persist(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract persistableName()Ljava/lang/String;
.end method

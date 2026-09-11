.class public abstract Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;
.super Ljava/lang/Object;
.source "Proto.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "protocol"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;->init()V

    .line 14
    return-void
.end method

.method private native init()V
.end method


# virtual methods
.method protected synchronized native declared-synchronized pack(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)[[B
.end method

.method protected abstract read()Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.end method

.method protected synchronized native declared-synchronized unpack([B)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.end method

.method protected abstract write(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

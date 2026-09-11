.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaBlock;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceFotaBlock.java"


# static fields
.field public static final MAX_DATA_SIZE:I = 0x10000


# instance fields
.field mData:[B


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 20
    const/16 v0, 0xc

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 21
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaBlock;->mData:[B

    return-object v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaBlock;->mData:[B

    .line 28
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceImage.java"


# instance fields
.field private mData:[B

.field private mFlags:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 11
    const/16 v0, 0x8

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 12
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mData:[B

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mWidth:I

    return v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mData:[B

    .line 33
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mFlags:I

    .line 25
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mHeight:I

    .line 61
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceImage;->mWidth:I

    .line 47
    return-void
.end method

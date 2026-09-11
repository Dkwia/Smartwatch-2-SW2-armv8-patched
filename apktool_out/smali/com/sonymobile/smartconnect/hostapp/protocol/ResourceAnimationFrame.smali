.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;
.super Ljava/lang/Object;
.source "ResourceAnimationFrame.java"


# instance fields
.field private mDuration:I

.field private mLeft:I

.field private mScreenCid:I

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    instance-of v2, p1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;

    .line 71
    .local v0, "r":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;
    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mLeft:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mLeft:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mTop:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mTop:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mDuration:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mDuration:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mScreenCid:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mScreenCid:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 76
    .end local v0    # "r":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mDuration:I

    return v0
.end method

.method public getScreenBoxLeft()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mLeft:I

    return v0
.end method

.method public getScreenCid()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mScreenCid:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mTop:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;-><init>()V

    .line 60
    .local v0, "hasher":Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mScreenCid:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 61
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mLeft:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 62
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mTop:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 63
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mDuration:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 64
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->getHashCode()I

    move-result v1

    return v1
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mDuration:I

    .line 49
    return-void
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "screenBoxLeft"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mLeft:I

    .line 33
    return-void
.end method

.method public setScreenCid(I)V
    .locals 0
    .param p1, "screenCid"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mScreenCid:I

    .line 25
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mTop:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const-string v0, "%s cid=0x%08x [l=%d,t=%d,d=%d]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mScreenCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mLeft:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mTop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

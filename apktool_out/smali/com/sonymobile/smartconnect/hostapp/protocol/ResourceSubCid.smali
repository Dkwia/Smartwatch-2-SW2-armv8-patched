.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
.super Ljava/lang/Object;
.source "ResourceSubCid.java"


# instance fields
.field private mIsScreenOpaque:Z

.field private mResourceCid:I

.field private mScreenBoxBottom:I

.field private mScreenBoxLeft:I

.field private mScreenBoxRight:I

.field private mScreenBoxTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mResourceCid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 81
    instance-of v2, p1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 83
    .local v0, "r":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    iget-boolean v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mIsScreenOpaque:Z

    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mIsScreenOpaque:Z

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxBottom:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxBottom:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxLeft:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxLeft:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxRight:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxRight:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxTop:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxTop:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mResourceCid:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mResourceCid:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 90
    .end local v0    # "r":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    :cond_0
    return v1
.end method

.method public getResourceCid()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mResourceCid:I

    return v0
.end method

.method public getScreenBoxBottom()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxBottom:I

    return v0
.end method

.method public getScreenBoxLeft()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxLeft:I

    return v0
.end method

.method public getScreenBoxRight()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxRight:I

    return v0
.end method

.method public getScreenBoxTop()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxTop:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;-><init>()V

    .line 71
    .local v0, "hasher":Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mResourceCid:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 72
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxBottom:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 73
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxLeft:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 74
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxRight:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 75
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxTop:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 76
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->getHashCode()I

    move-result v1

    return v1
.end method

.method public isScreenOpaque()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mIsScreenOpaque:Z

    return v0
.end method

.method public setResourceCid(I)V
    .locals 0
    .param p1, "resourceCid"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mResourceCid:I

    .line 26
    return-void
.end method

.method public setScreenBoxBottom(I)V
    .locals 0
    .param p1, "screenBoxBottom"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxBottom:I

    .line 58
    return-void
.end method

.method public setScreenBoxLeft(I)V
    .locals 0
    .param p1, "screenBoxLeft"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxLeft:I

    .line 34
    return-void
.end method

.method public setScreenBoxRight(I)V
    .locals 0
    .param p1, "screenBoxRight"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxRight:I

    .line 50
    return-void
.end method

.method public setScreenBoxTop(I)V
    .locals 0
    .param p1, "screenBoxTop"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxTop:I

    .line 42
    return-void
.end method

.method public setScreenOpaque(Z)V
    .locals 0
    .param p1, "isScreenOpaque"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mIsScreenOpaque:Z

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const-string v0, "%s cid=0x%08x [l=%d,t=%d,r=%d,b=%d]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mResourceCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxLeft:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxTop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxRight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->mScreenBoxBottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

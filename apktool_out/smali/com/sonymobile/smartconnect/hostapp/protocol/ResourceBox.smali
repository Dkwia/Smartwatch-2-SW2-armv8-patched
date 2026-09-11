.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceBox.java"


# instance fields
.field private mBoxBottom:I

.field private mBoxLeft:I

.field private mBoxRight:I

.field private mBoxTop:I

.field private mFillColor:I

.field private mOutlineColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 19
    const/16 v0, 0xe

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 20
    return-void
.end method


# virtual methods
.method public getBoxBottom()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxBottom:I

    return v0
.end method

.method public getBoxLeft()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxLeft:I

    return v0
.end method

.method public getBoxRight()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxRight:I

    return v0
.end method

.method public getBoxTop()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxTop:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mFillColor:I

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mOutlineColor:I

    return v0
.end method

.method public setBoxBottom(I)V
    .locals 0
    .param p1, "boxBottom"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxBottom:I

    .line 52
    return-void
.end method

.method public setBoxLeft(I)V
    .locals 0
    .param p1, "boxLeft"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxLeft:I

    .line 28
    return-void
.end method

.method public setBoxRight(I)V
    .locals 0
    .param p1, "boxRight"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxRight:I

    .line 44
    return-void
.end method

.method public setBoxTop(I)V
    .locals 0
    .param p1, "boxTop"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mBoxTop:I

    .line 36
    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mFillColor:I

    .line 60
    return-void
.end method

.method public setOutlineColor(I)V
    .locals 0
    .param p1, "outlineColor"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mOutlineColor:I

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    const-string v0, "%s [cid=0x%08x, fill=%d outline=%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mFillColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->mOutlineColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourcePositionShifter.java"


# instance fields
.field private mResourceCid:I

.field protected mX:I

.field protected mY:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 20
    const/16 v0, 0xa

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 21
    return-void
.end method


# virtual methods
.method public getResource()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mResourceCid:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mY:I

    return v0
.end method

.method public setResource(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mResourceCid:I

    .line 63
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mX:I

    .line 35
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mY:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string v0, "%s [x=%d, y=%d, cid=0x%08x, resCid=0x%08x]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->mY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->getResource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

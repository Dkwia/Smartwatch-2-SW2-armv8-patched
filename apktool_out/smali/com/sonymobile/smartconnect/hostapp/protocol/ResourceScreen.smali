.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceScreen.java"


# instance fields
.field private mCids:[I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 11
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 12
    return-void
.end method


# virtual methods
.method public getCids()[I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->mCids:[I

    return-object v0
.end method

.method public setCids([I)V
    .locals 0
    .param p1, "cids"    # [I

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->mCids:[I

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    const-string v0, "%s [cid=0x%08x, cids=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->mCids:[I

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->toHexString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

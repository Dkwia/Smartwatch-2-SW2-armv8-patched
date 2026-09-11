.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceMasterScreen.java"


# instance fields
.field private mIsTouchUpdatable:Z

.field private mKeepPreviousMasterResult:Z

.field private mMaster:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

.field private mScreenBoxBottom:I

.field private mScreenBoxLeft:I

.field private mScreenBoxRight:I

.field private mScreenBoxTop:I

.field private mScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 33
    return-void
.end method


# virtual methods
.method public getMaster()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mMaster:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    return-object v0
.end method

.method public getScreenBoxBottom()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxBottom:I

    return v0
.end method

.method public getScreenBoxLeft()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxLeft:I

    return v0
.end method

.method public getScreenBoxRight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxRight:I

    return v0
.end method

.method public getScreenBoxTop()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxTop:I

    return v0
.end method

.method public getScreens()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    return-object v0
.end method

.method public isKeepingPreviousResult()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mKeepPreviousMasterResult:Z

    return v0
.end method

.method public isTouchUpdatable()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mIsTouchUpdatable:Z

    return v0
.end method

.method public keepPreviousResult(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mKeepPreviousMasterResult:Z

    .line 37
    return-void
.end method

.method public setMaster(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;)V
    .locals 0
    .param p1, "master"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mMaster:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    .line 87
    return-void
.end method

.method public setScreenBoxBottom(I)V
    .locals 0
    .param p1, "screenBoxBottom"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxBottom:I

    .line 71
    return-void
.end method

.method public setScreenBoxLeft(I)V
    .locals 0
    .param p1, "screenBoxLeft"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxLeft:I

    .line 47
    return-void
.end method

.method public setScreenBoxRight(I)V
    .locals 0
    .param p1, "screenBoxRight"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxRight:I

    .line 63
    return-void
.end method

.method public setScreenBoxTop(I)V
    .locals 0
    .param p1, "screenBoxTop"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreenBoxTop:I

    .line 55
    return-void
.end method

.method public setScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V
    .locals 0
    .param p1, "screens"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 79
    return-void
.end method

.method public setTouchUpdatable(Z)V
    .locals 0
    .param p1, "isUpdatable"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mIsTouchUpdatable:Z

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    const-string v0, "%s [cid=0x%08x screens=%s masterScreen=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->mMaster:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

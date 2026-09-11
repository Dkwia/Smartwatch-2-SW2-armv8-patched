.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceMasterString.java"


# instance fields
.field private mBackgroundColor:I

.field private mStringCids:[I

.field private mViewWindowBottom:I

.field private mViewWindowLeft:I

.field private mViewWindowRight:I

.field private mViewWindowTop:I

.field private mVirtualWindowBottom:I

.field private mVirtualWindowLeft:I

.field private mVirtualWindowRight:I

.field private mVirtualWindowTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 29
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mBackgroundColor:I

    return v0
.end method

.method public getStringCids()[I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mStringCids:[I

    return-object v0
.end method

.method public getViewWindowBottom()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowBottom:I

    return v0
.end method

.method public getViewWindowLeft()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowLeft:I

    return v0
.end method

.method public getViewWindowRight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowRight:I

    return v0
.end method

.method public getViewWindowTop()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowTop:I

    return v0
.end method

.method public getVirtualWindowBottom()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowBottom:I

    return v0
.end method

.method public getVirtualWindowLeft()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowLeft:I

    return v0
.end method

.method public getVirtualWindowRight()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowRight:I

    return v0
.end method

.method public getVirtualWindowTop()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowTop:I

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mBackgroundColor:I

    .line 101
    return-void
.end method

.method public setStringCids([I)V
    .locals 0
    .param p1, "stringCids"    # [I

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mStringCids:[I

    .line 109
    return-void
.end method

.method public setViewWindowBottom(I)V
    .locals 0
    .param p1, "viewWindowBottom"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowBottom:I

    .line 61
    return-void
.end method

.method public setViewWindowLeft(I)V
    .locals 0
    .param p1, "viewWindowLeft"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowLeft:I

    .line 37
    return-void
.end method

.method public setViewWindowRight(I)V
    .locals 0
    .param p1, "viewWindowRight"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowRight:I

    .line 53
    return-void
.end method

.method public setViewWindowTop(I)V
    .locals 0
    .param p1, "viewWindowTop"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mViewWindowTop:I

    .line 45
    return-void
.end method

.method public setVirtualWindowBottom(I)V
    .locals 0
    .param p1, "virtualWindowBottom"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowBottom:I

    .line 93
    return-void
.end method

.method public setVirtualWindowLeft(I)V
    .locals 0
    .param p1, "virtualWindowLeft"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowLeft:I

    .line 69
    return-void
.end method

.method public setVirtualWindowRight(I)V
    .locals 0
    .param p1, "virtualWindowRight"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowRight:I

    .line 85
    return-void
.end method

.method public setVirtualWindowTop(I)V
    .locals 0
    .param p1, "virtualWindowTop"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->mVirtualWindowTop:I

    .line 77
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceWatchFace.java"


# instance fields
.field private mLowPowerComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

.field private mNormalComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

.field private mOfflineComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

.field private mPreviewImageCid:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 18
    const/16 v0, 0x11

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 19
    return-void
.end method


# virtual methods
.method public getLowPowerComponents()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mLowPowerComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    return-object v0
.end method

.method public getNormalComponents()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mNormalComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    return-object v0
.end method

.method public getOfflineComponents()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mLowPowerComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    return-object v0
.end method

.method public getPreviewImageCid()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mPreviewImageCid:I

    return v0
.end method

.method public setLowPowerComponents([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;)V
    .locals 0
    .param p1, "lowPowerComponents"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mLowPowerComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .line 43
    return-void
.end method

.method public setNormalComponents([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;)V
    .locals 0
    .param p1, "normalComponents"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mNormalComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .line 51
    return-void
.end method

.method public setOfflineComponents([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;)V
    .locals 0
    .param p1, "offlineComponents"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mOfflineComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .line 35
    return-void
.end method

.method public setPreviewImageCid(I)V
    .locals 0
    .param p1, "previewImageCid"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->mPreviewImageCid:I

    .line 27
    return-void
.end method

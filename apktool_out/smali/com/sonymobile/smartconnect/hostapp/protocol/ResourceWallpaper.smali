.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWallpaper;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceWallpaper.java"


# instance fields
.field private mThumbnailCid:I

.field private mWallpaperCid:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newCid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 15
    const/16 v0, 0x8

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 16
    return-void
.end method


# virtual methods
.method public getWallpaperCid()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWallpaper;->mWallpaperCid:I

    return v0
.end method

.method public getmThumbnailCid()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWallpaper;->mThumbnailCid:I

    return v0
.end method

.method public setThumbnailCid(I)V
    .locals 0
    .param p1, "thumbnailCid"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWallpaper;->mThumbnailCid:I

    .line 28
    return-void
.end method

.method public setWallpaperCid(I)V
    .locals 0
    .param p1, "wallpaperCid"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWallpaper;->mWallpaperCid:I

    return-void
.end method

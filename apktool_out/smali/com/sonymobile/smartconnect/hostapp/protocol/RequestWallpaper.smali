.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestWallpaper.java"


# static fields
.field public static final ACTION_GET_ALL:I = 0x4

.field public static final ACTION_GET_SELECTED:I = 0x3

.field public static final ACTION_INSTALL:I = 0x0

.field public static final ACTION_SET:I = 0x2

.field public static final ACTION_UNINSTALL:I = 0x1


# instance fields
.field private mAction:I

.field private mThumbnailCid:I

.field private mTimestamp:I

.field private mWallpaperCid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 29
    const/16 v0, 0x96

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->type:I

    .line 30
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mAction:I

    return v0
.end method

.method public getThumbnailCid()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mThumbnailCid:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mTimestamp:I

    return v0
.end method

.method public getWallpaperCid()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mWallpaperCid:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mAction:I

    .line 46
    return-void
.end method

.method public setThumbnailCid(I)V
    .locals 0
    .param p1, "thumbnailCid"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mThumbnailCid:I

    return-void
.end method

.method public setTimestamp(I)V
    .locals 0
    .param p1, "timestamp"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mTimestamp:I

    .line 64
    return-void
.end method

.method public setWallpaperCid(I)V
    .locals 0
    .param p1, "wallpaperCid"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->mWallpaperCid:I

    .line 54
    return-void
.end method

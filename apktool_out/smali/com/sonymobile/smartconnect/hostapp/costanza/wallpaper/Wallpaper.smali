.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
.super Ljava/lang/Object;
.source "Wallpaper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCid:I

.field private transient mCustomWallpaperUri:Landroid/net/Uri;

.field private mCustomWallpaperUriString:Ljava/lang/String;

.field private mIsInstalled:Z

.field private mIsMarkedForDeletion:Z

.field private mIsSelected:Z

.field private mLastEditedTime:J

.field private mName:Ljava/lang/String;

.field private transient mOriginalImageUri:Landroid/net/Uri;

.field private mOriginalImageUriString:Ljava/lang/String;

.field private transient mThumbnailUri:Landroid/net/Uri;

.field private mThumbnailUriString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mIsMarkedForDeletion:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    if-ne p0, p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 144
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 145
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 146
    .local v0, "other":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCid:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCid:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 147
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCid:I

    return v0
.end method

.method public getCustomWallpaperUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUri:Landroid/net/Uri;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCutomWallpaperUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getLastEditedTime()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mLastEditedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUri:Landroid/net/Uri;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUri:Landroid/net/Uri;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mIsInstalled:Z

    return v0
.end method

.method public isMarkedForDeletion()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mIsMarkedForDeletion:Z

    return v0
.end method

.method public isNative()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCid:I

    sget v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->CID_START_VALUE:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mIsSelected:Z

    return v0
.end method

.method public markForDeletion()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mIsMarkedForDeletion:Z

    .line 125
    return-void
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCid:I

    .line 101
    return-void
.end method

.method public setCustomWallpaperUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "wallpaperUri"    # Landroid/net/Uri;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUri:Landroid/net/Uri;

    .line 73
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mCustomWallpaperUriString:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0
    .param p1, "isInstalled"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mIsInstalled:Z

    .line 113
    return-void
.end method

.method public setLastEditedTime()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mLastEditedTime:J

    .line 129
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setOriginalImageUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUri:Landroid/net/Uri;

    .line 49
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mOriginalImageUriString:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mIsSelected:Z

    .line 117
    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "thumbnail"    # Landroid/net/Uri;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUri:Landroid/net/Uri;

    .line 87
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUriString:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setThumbnailUriString(Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbnailUriString"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUri:Landroid/net/Uri;

    .line 92
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->mThumbnailUriString:Ljava/lang/String;

    .line 93
    return-void
.end method

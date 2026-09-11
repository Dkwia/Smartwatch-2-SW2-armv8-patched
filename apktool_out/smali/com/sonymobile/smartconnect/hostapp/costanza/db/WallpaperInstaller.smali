.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;
.super Ljava/lang/Object;
.source "WallpaperInstaller.java"


# instance fields
.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V
    .locals 0
    .param p1, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p2, "wallpaperStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 22
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .line 23
    return-void
.end method


# virtual methods
.method public handleInstallResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V
    .locals 9
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 45
    .local v0, "isInstallResponse":Z
    :goto_0
    const/4 v2, -0x1

    .line 46
    .local v2, "wallpaperCid":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getValues()[I

    move-result-object v1

    .line 47
    .local v1, "values":[I
    if-eqz v1, :cond_0

    array-length v5, v1

    if-ne v5, v3, :cond_0

    .line 48
    aget v2, v1, v4

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getResult()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 82
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isInstallResponse":Z
    .end local v1    # "values":[I
    .end local v2    # "wallpaperCid":I
    :cond_2
    move v0, v4

    .line 43
    goto :goto_0

    .line 55
    .restart local v0    # "isInstallResponse":Z
    .restart local v1    # "values":[I
    .restart local v2    # "wallpaperCid":I
    :pswitch_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 56
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v5, v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setInstalled(IZ)V

    .line 57
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v6, "Marked Wallpaper as %s, 0x%08x."

    new-array v7, v8, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v5, "installed"

    :goto_2
    aput-object v5, v7, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v5, "uninstalled"

    goto :goto_2

    .line 68
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 69
    const-string v6, "Wallpaper %s failed for wallpaper cid %s, error code: %d"

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    const-string v5, "installation"

    :goto_3
    aput-object v5, v7, v4

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getValues()[I

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->intArraytoHexString([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v5, v2, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setInstalled(IZ)V

    .line 77
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v6, "Marked Wallpaper as %s, 0x%08x."

    new-array v7, v8, [Ljava/lang/Object;

    if-eqz v0, :cond_6

    const-string v5, "installed"

    :goto_4
    aput-object v5, v7, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 69
    :cond_5
    const-string v5, "uninstallation"

    goto :goto_3

    .line 77
    :cond_6
    const-string v5, "uninstalled"

    goto :goto_4

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public install(II)V
    .locals 5
    .param p1, "wallpaperCid"    # I
    .param p2, "thumbnailCid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;-><init>(I)V

    .line 27
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;
    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setAction(I)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setWallpaperCid(I)V

    .line 29
    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setThumbnailCid(I)V

    .line 30
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v2, v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 31
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Sent Wallpaper install msg, %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method

.method public uninstall(I)V
    .locals 5
    .param p1, "wallpaperCid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 35
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;-><init>(I)V

    .line 36
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;
    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setAction(I)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWallpaper;->setWallpaperCid(I)V

    .line 38
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v2, v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v2, v4

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 39
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Sent Wallpaper uninstall msg, %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

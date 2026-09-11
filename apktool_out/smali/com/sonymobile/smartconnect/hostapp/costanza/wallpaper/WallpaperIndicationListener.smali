.class public Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperIndicationListener;
.super Ljava/lang/Object;
.source "WallpaperIndicationListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V
    .locals 0
    .param p1, "wallpaperStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperIndicationListener;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .line 19
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x98

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 28
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;

    .line 29
    .local v0, "indication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperIndicationListener;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setHostAppSelectionTimestamp()V

    .line 30
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperIndicationListener;->mWallpaperStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWallpaper;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setWallpaperSelectionFromAccessory(I)V

    .line 31
    return-void
.end method

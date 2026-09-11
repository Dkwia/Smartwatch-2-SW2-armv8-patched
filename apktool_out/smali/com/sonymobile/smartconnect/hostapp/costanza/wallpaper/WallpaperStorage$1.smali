.class Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;
.super Ljava/lang/Object;
.source "WallpaperStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAllWallpapers()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)I
    .locals 4
    .param p1, "lhs"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    .param p2, "rhs"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, -0x1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getLastEditedTime()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getLastEditedTime()J

    move-result-wide v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 250
    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;->compare(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)I

    move-result v0

    return v0
.end method

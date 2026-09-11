.class Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$2;
.super Ljava/lang/Object;
.source "WallpapersListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->onCommit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$2;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$2;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->notifyDataSetInvalidated()V

    .line 623
    return-void
.end method

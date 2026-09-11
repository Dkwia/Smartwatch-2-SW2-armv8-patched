.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$1;
.super Ljava/lang/Object;
.source "WallpaperSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->postSyncAndRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->syncWallpapers()V

    .line 141
    return-void
.end method

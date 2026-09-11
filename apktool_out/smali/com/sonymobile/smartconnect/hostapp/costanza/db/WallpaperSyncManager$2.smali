.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;
.super Ljava/lang/Object;
.source "WallpaperSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

.field final synthetic val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperInstaller;->handleInstallResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V

    goto :goto_0

    .line 194
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->handleSetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWallpaper;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

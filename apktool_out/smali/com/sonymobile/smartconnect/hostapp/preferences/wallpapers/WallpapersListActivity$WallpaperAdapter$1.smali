.class Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;
.super Ljava/lang/Object;
.source "WallpapersListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

.field final synthetic val$wallpaper:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->val$wallpaper:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->val$wallpaper:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getOriginalImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$900(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->val$wallpaper:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getOriginalImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$1000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Landroid/net/Uri;Z)V

    .line 586
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$502(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 587
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->val$wallpaper:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->access$1100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Can\'t locate original image"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

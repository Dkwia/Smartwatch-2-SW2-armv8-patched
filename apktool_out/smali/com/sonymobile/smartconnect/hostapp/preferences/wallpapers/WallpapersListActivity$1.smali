.class Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;
.super Ljava/lang/Object;
.source "WallpapersListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 84
    .local v0, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    .end local v0    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :goto_0
    return-void

    .line 87
    .restart local v0    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setWallpaperSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    .line 88
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 91
    .end local v0    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 92
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 93
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

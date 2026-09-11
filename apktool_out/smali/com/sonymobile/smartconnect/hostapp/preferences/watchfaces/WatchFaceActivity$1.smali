.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;
.super Ljava/lang/Object;
.source "WatchFaceActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d0035

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 157
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->updateWidgetValidity(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 162
    :cond_0
    return-void
.end method

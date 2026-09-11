.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$1;
.super Ljava/lang/Object;
.source "WatchFaceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

.field final synthetic val$watchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$1;->val$watchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$1;->val$watchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$1200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;IZ)V

    .line 528
    return-void
.end method

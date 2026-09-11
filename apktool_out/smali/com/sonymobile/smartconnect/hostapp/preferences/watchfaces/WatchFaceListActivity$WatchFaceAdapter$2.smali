.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$2;
.super Ljava/lang/Object;
.source "WatchFaceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->onCommit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$2;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$2;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->invalidateOptionsMenu()V

    .line 560
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$2;->this$1:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->notifyDataSetInvalidated()V

    .line 561
    return-void
.end method

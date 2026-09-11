.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;
.super Landroid/os/AsyncTask;
.source "WatchFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->updatePreviewAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field storage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 514
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V

    .line 525
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 514
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->storage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    if-eqz v0, :cond_0

    .line 538
    const-string v0, "Comitting to storage after preview"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 543
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 544
    return-void

    .line 541
    :cond_0
    const-string v0, "Not comitting to storage after preview, no storage available"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$3;->storage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 520
    return-void
.end method

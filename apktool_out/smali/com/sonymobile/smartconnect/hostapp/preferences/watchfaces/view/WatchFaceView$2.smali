.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$2;
.super Ljava/lang/Object;
.source "WatchFaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->updatePreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V

    .line 501
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 502
    const-string v0, "Will update listener after preview"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 503
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$1;
.super Ljava/lang/Object;
.source "WatchFaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->setWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
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
    .line 154
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

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
    .line 159
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;)V

    .line 161
    return-void
.end method

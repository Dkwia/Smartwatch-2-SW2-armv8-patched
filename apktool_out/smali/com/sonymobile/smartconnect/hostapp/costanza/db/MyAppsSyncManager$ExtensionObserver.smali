.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;
.super Landroid/database/ContentObserver;
.source "MyAppsSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionObserver"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mDelayedRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;Landroid/os/Handler;I)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 613
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    .line 614
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 600
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mDelayedRunnable:Ljava/lang/Runnable;

    .line 615
    if-nez p2, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mHandler:Landroid/os/Handler;

    .line 620
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mDelay:I

    .line 621
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mDelayedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mDelayedRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$ExtensionObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 632
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;
.super Landroid/database/ContentObserver;
.source "ExtensionsListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtensionObserver"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mDelayedRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;Landroid/os/Handler;I)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 648
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    .line 649
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 635
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mDelayedRunnable:Ljava/lang/Runnable;

    .line 650
    if-nez p2, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mHandler:Landroid/os/Handler;

    .line 655
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mDelay:I

    .line 656
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mDelayedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 661
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mDelayedRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$ExtensionObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 667
    return-void
.end method

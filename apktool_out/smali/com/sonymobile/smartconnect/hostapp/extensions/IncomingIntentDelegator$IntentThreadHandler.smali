.class Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;
.super Landroid/os/Handler;
.source "IncomingIntentDelegator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentThreadHandler"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessageQueue:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

.field private final mTimingLogger:Landroid/util/TimingLogger;

.field private final mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "messageQueue"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;
    .param p4, "wakeLock"    # Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    .prologue
    .line 44
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mMessageQueue:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

    .line 47
    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "CostanzaTimings"

    const-string v2, "handleIntent"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mTimingLogger:Landroid/util/TimingLogger;

    .line 48
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    .line 49
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .line 57
    .local v0, "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mTimingLogger:Landroid/util/TimingLogger;

    invoke-virtual {v1}, Landroid/util/TimingLogger;->reset()V

    .line 60
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->handleIntent()Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mMessageQueue:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V

    .line 63
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->clearViewRootRunQueueIfNeeded()V

    .line 65
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mTimingLogger:Landroid/util/TimingLogger;

    const-string v2, "handleIntent"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mTimingLogger:Landroid/util/TimingLogger;

    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 71
    return-void

    .line 69
    .end local v0    # "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    throw v1
.end method

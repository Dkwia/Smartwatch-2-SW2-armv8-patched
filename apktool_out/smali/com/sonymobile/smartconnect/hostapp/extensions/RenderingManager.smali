.class public Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
.super Ljava/lang/Object;
.source "RenderingManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$6;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    }
.end annotation


# static fields
.field private static final RENDER_MESSAGE_TIMEOUT:I = 0x2710


# instance fields
.field private mAccumulatedRenderingTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLastRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

.field private mLastResourcesSendTime:J

.field private mMaxRenderingMilliseconds:I

.field private mMinRenderingTime:I

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mOnRenderedRunnable:Ljava/lang/Runnable;

.field private mRenderCount:I

.field private final mRenderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderStartRunnable:Ljava/lang/Runnable;

.field private final mRenderTimeoutRunnable:Ljava/lang/Runnable;

.field private final mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;)V
    .locals 2
    .param p1, "ctrlMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ControlMessageFactory;
    .param p2, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p3, "wakeLockManager"    # Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderListeners:Ljava/util/List;

    .line 300
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    .line 309
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderStartRunnable:Ljava/lang/Runnable;

    .line 317
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mOnRenderedRunnable:Ljava/lang/Runnable;

    .line 341
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderTimeoutRunnable:Ljava/lang/Runnable;

    .line 356
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    .line 357
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 358
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandlerThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 359
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 360
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandler:Landroid/os/Handler;

    .line 361
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 362
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->renderNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->calculateRenderingStatistics()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->cancelRenderTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->resetRenderingQueue()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->sendRenderingRequest(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    return-void
.end method

.method private calculateRenderingStatistics()V
    .locals 12

    .prologue
    .line 563
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 564
    .local v1, "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    if-nez v1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->access$600(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastResourcesSendTime:J

    sub-long v4, v8, v10

    .line 569
    .local v4, "timeToSendResources":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->access$600(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 570
    .local v2, "timeSinceRenderRequest":J
    add-long v6, v4, v2

    .line 571
    .local v6, "totalTimeSinceRenderingStart":J
    iget-wide v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mAccumulatedRenderingTime:J

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mAccumulatedRenderingTime:J

    .line 572
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderCount:I

    .line 573
    iget-wide v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mAccumulatedRenderingTime:J

    long-to-float v8, v8

    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderCount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 574
    .local v0, "avgRenderingTime":I
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMaxRenderingMilliseconds:I

    int-to-long v8, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMaxRenderingMilliseconds:I

    .line 576
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMinRenderingTime:I

    int-to-long v8, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    iput v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMinRenderingTime:I

    .line 578
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 579
    const-string v8, "Rendering finished after total %d ms (resSend: %d, rendResp: {this=%d, max=%d, avg=%d, min=%d}), renderable=%s."

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMaxRenderingMilliseconds:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMinRenderingTime:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private cancelRenderTimeout()V
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "Canceled delayed rendering timeout."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 538
    return-void
.end method

.method private clearRenderingStatistics()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 556
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mAccumulatedRenderingTime:J

    .line 557
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderCount:I

    .line 558
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMaxRenderingMilliseconds:I

    .line 559
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMinRenderingTime:I

    .line 560
    return-void
.end method

.method private maxRenderQueueSize()I
    .locals 1

    .prologue
    .line 523
    const/16 v0, 0x28

    return v0
.end method

.method private postRenderTimeout(I)V
    .locals 4
    .param p1, "renderMessageTimeout"    # I

    .prologue
    .line 527
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "Posted delayed rendering timeout."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 531
    return-void
.end method

.method private renderNext()V
    .locals 5

    .prologue
    .line 473
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 474
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->RENDERER:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 476
    monitor-exit v3

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 479
    .local v0, "renderable":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 481
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->onPreRender()V

    .line 485
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$5;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$5;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    .line 499
    .local v1, "renderingAckListener":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->addSendStatusListener(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;)V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastResourcesSendTime:J

    .line 502
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->getRequiredResources()[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 504
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->hasRequiredResources()Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->sendRenderingRequest(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    goto :goto_0

    .line 481
    .end local v0    # "renderable":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    .end local v1    # "renderingAckListener":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private resetRenderingQueue()V
    .locals 2

    .prologue
    .line 541
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 544
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->deleteResources()V

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->cancelRenderTimeout()V

    .line 550
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    const-string v0, "Reset rendering queue."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 553
    :cond_1
    return-void
.end method

.method private sendRenderingRequest(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V
    .locals 4
    .param p1, "r"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 517
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->setSendTimestamp()V

    .line 518
    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->postRenderTimeout(I)V

    .line 519
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->getRenderingRequest()Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 520
    return-void
.end method


# virtual methods
.method public addRenderingListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderListeners:Ljava/util/List;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    monitor-exit v1

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastRenderable()Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    return-object v0
.end method

.method public notifyRenderListeners()V
    .locals 4

    .prologue
    .line 463
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderListeners:Ljava/util/List;

    monitor-enter v3

    .line 464
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;

    .line 465
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;->onRendered()V

    goto :goto_0

    .line 467
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RenderListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    return-void
.end method

.method public onRendered()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mOnRenderedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V
    .locals 10
    .param p1, "renderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    .line 365
    if-nez p1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    monitor-enter v5

    .line 381
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 382
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 384
    .local v1, "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    if-eq v4, v1, :cond_1

    if-eq p1, v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->merge(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 388
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Removed renderable due to merge, %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;>;"
    .end local v1    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 391
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;>;"
    :cond_2
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->maxRenderQueueSize()I

    move-result v6

    if-le v4, v6, :cond_3

    .line 393
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->deleteResources()V

    goto :goto_2

    .line 396
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v4, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 398
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    if-le v4, v8, :cond_8

    .line 399
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 400
    .restart local v1    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->access$600(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-lez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->access$600(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 402
    .local v2, "timeSinceLastRenderRequest":J
    :cond_4
    const-wide/16 v6, 0x2710

    cmp-long v4, v2, v6

    if-gez v4, :cond_6

    .line 404
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 405
    const-string v4, "Render in progress, postponed new rendering, %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    .end local v1    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    .end local v2    # "timeSinceLastRenderRequest":J
    :cond_5
    :goto_3
    monitor-exit v5

    goto/16 :goto_0

    .line 408
    .restart local v1    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    .restart local v2    # "timeSinceLastRenderRequest":J
    :cond_6
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 409
    const-string v4, "Render in progress has taken too long, %d > %d."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    :cond_7
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->resetRenderingQueue()V

    goto :goto_3

    .line 414
    .end local v1    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    .end local v2    # "timeSinceLastRenderRequest":J
    :cond_8
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 415
    const-string v4, "Started rendering, %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->RENDERER:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 420
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mRenderStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mWakeLockManager:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->RENDERER:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 433
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_1

    .line 434
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->resetRenderingQueue()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mLastRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 437
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->clearRenderingStatistics()V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

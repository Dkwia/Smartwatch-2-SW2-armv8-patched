.class Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;
.super Ljava/lang/Object;
.source "RenderingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    .line 327
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 329
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->onRendered()V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->notifyRenderListeners()V

    .line 337
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    .line 338
    return-void

    .line 329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

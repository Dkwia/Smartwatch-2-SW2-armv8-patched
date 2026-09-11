.class Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$5;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;
.source "RenderingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->renderNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    return-void
.end method


# virtual methods
.method public onAbort(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 3
    .param p1, "costanzaResource"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 493
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "Aborted resource, %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->reset()V

    .line 497
    return-void
.end method

.method public onAllAcksReceived(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V
    .locals 1
    .param p1, "renderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$700(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    .line 489
    return-void
.end method

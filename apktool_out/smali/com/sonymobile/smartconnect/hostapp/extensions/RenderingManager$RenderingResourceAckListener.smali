.class abstract Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;
.super Ljava/lang/Object;
.source "RenderingManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "RenderingResourceAckListener"
.end annotation


# instance fields
.field private final mRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V
    .locals 0
    .param p2, "renderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;->mRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 275
    return-void
.end method


# virtual methods
.method public onAck(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 1
    .param p1, "costanzaResource"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;->mRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->remove(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V

    .line 285
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;->mRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->hasRequiredResources()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;->mRenderable:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;->onAllAcksReceived(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    .line 288
    :cond_0
    return-void
.end method

.method abstract onAllAcksReceived(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V
.end method

.method public onNack(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 3
    .param p1, "costanzaResource"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 279
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Received nack for %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_0
    return-void
.end method

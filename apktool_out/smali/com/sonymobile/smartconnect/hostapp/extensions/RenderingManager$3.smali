.class Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$3;
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
    .line 341
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "Timed out render in progress, %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->access$500(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    .line 349
    return-void
.end method

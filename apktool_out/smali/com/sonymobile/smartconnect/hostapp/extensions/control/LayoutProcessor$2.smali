.class Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;
.super Ljava/lang/Object;
.source "LayoutProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "Updating master node resources and rendering."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 61
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->updateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    .line 62
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;->render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;)V

    goto :goto_0
.end method

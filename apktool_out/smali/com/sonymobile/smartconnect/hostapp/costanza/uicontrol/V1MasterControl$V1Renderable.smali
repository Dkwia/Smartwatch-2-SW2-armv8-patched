.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;
.source "V1MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "V1Renderable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V
    .locals 2
    .param p2, "extensionCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "requiredResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    .line 45
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_MASTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I

    move-result v0

    invoke-direct {p0, p2, v0, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;-><init>(IILjava/util/List;)V

    .line 47
    return-void
.end method

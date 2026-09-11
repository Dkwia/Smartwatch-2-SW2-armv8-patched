.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ClearScreenRenderable;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;
.source "V1MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "V1ClearScreenRenderable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V
    .locals 0
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
    .line 140
    .local p3, "requiredResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ClearScreenRenderable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V

    .line 142
    return-void
.end method


# virtual methods
.method public merge(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)Z
    .locals 1
    .param p1, "olderRenderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;
.source "V2MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "V2Renderable"
.end annotation


# instance fields
.field private final mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;


# direct methods
.method public constructor <init>(IILjava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V
    .locals 0
    .param p1, "extensionCid"    # I
    .param p2, "masterCid"    # I
    .param p4, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "requiredResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;-><init>(IILjava/util/List;)V

    .line 44
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .line 45
    return-void
.end method


# virtual methods
.method public deleteResources()V
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;->getRequiredResources()[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 55
    .local v4, "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v1

    .line 56
    .local v1, "cid":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->delete(I)V

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "cid":I
    .end local v4    # "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    :cond_0
    return-void
.end method

.method public merge(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)Z
    .locals 1
    .param p1, "olderRenderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V2MasterControl$V2Renderable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

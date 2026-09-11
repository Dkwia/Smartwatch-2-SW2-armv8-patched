.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;
.source "V1MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "V1ImageRenderable"
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
    .line 112
    .local p3, "requiredResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V

    .line 114
    return-void
.end method


# virtual methods
.method public merge(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)Z
    .locals 11
    .param p1, "olderRenderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    instance-of v9, p1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;

    if-eqz v9, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;->mRequiredResources:Ljava/util/List;

    .line 121
    .local v0, "newMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual {p1, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->getResource(I)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    .line 122
    .local v4, "olderImage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    invoke-virtual {p1, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->getResource(I)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;

    .line 124
    .local v6, "olderShifter":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;->getResource(I)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    .line 125
    .local v1, "newerImage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;->getResource(I)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;

    .line 127
    .local v3, "newerShifter":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;

    invoke-direct {v5, v6, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;-><init>(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;)V

    .line 128
    .local v5, "olderRect":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;-><init>(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;)V

    .line 130
    .local v2, "newerRect":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;
    invoke-virtual {v2, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->contains(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 131
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "Skipped %s."

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p1, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .end local v0    # "newMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .end local v1    # "newerImage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    .end local v2    # "newerRect":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;
    .end local v3    # "newerShifter":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
    .end local v4    # "olderImage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    .end local v5    # "olderRect":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;
    .end local v6    # "olderShifter":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
    :cond_0
    :goto_0
    return v7

    :cond_1
    move v7, v8

    goto :goto_0
.end method

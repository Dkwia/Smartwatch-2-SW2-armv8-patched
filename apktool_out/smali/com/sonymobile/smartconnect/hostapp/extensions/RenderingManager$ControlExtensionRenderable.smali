.class public Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
.source "RenderingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlExtensionRenderable"
.end annotation


# instance fields
.field private final mMasterCid:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "extensionCid"    # I
    .param p2, "masterCid"    # I

    .prologue
    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;-><init>(IILjava/util/List;)V

    .line 135
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "extensionCid"    # I
    .param p2, "masterCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p3, "requiredResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;-><init>(ILjava/util/List;)V

    .line 140
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mMasterCid:I

    .line 141
    return-void
.end method


# virtual methods
.method public appendToString(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 160
    const-string v0, "masterCid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mMasterCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p1, p0, :cond_0

    .line 154
    :goto_0
    return v1

    .line 147
    :cond_0
    instance-of v3, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 148
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;

    .line 149
    .local v0, "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v3

    .line 150
    :try_start_0
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mMasterCid:I

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mMasterCid:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mRequiredResources:Ljava/util/List;

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    .line 150
    goto :goto_1

    .end local v0    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;
    :cond_2
    move v1, v2

    .line 154
    goto :goto_0
.end method

.method public getRenderingRequest()Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .locals 7

    .prologue
    .line 165
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;-><init>(I)V

    .line 166
    .local v1, "renderRequest":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->Control:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->setType(Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;)V

    .line 167
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mExtensionCid:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->setExtensionCid(I)V

    .line 169
    const/4 v2, 0x1

    new-array v0, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    .line 170
    .local v0, "renderConfigs":[Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->setRenderConfigurations([Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;)V

    .line 171
    const/4 v2, 0x0

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;->mMasterCid:I

    sget v5, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_NORMAL_POWER:I

    sget v6, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_LOW_POWER:I

    or-int/2addr v5, v6

    const v6, 0x7fffffff

    invoke-direct {v3, v4, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;-><init>(III)V

    aput-object v3, v0, v2

    .line 175
    return-object v1
.end method

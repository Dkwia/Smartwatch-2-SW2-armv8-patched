.class public abstract Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
.super Ljava/lang/Object;
.source "RenderingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseRenderable"
.end annotation


# instance fields
.field protected final mExtensionCid:I

.field protected final mRequiredResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeWhenSent:J


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "extensionCid"    # I
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
    .line 43
    .local p2, "requiredResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mExtensionCid:I

    .line 45
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mTimeWhenSent:J

    return-wide v0
.end method

.method private getResourcesAsString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 88
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v3

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .line 90
    .local v1, "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    const-string v2, "\n\t"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 92
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    return-void
.end method


# virtual methods
.method public addSendStatusListener(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;)V
    .locals 4
    .param p1, "renderingAckListener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$RenderingResourceAckListener;

    .prologue
    .line 118
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .line 120
    .local v1, "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->addSendStatusListener(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;)V

    goto :goto_0

    .line 122
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    return-void
.end method

.method protected appendToString(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 85
    return-void
.end method

.method public deleteResources()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .line 68
    .local v0, "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mExtensionCid:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mExtensionCid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
    :cond_3
    move v1, v2

    .line 71
    goto :goto_0
.end method

.method public abstract getRenderingRequest()Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.end method

.method public getRequiredResources()[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getResource(I)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasRequiredResources()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public merge(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)Z
    .locals 1
    .param p1, "olderRenderable"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method protected onPreRender()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected onRendered()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public remove(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 2
    .param p1, "costanzaResource"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSendTimestamp()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->mTimeWhenSent:J

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->appendToString(Ljava/lang/StringBuilder;)V

    .line 80
    const-string v1, " res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;->getResourcesAsString(Ljava/lang/StringBuilder;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

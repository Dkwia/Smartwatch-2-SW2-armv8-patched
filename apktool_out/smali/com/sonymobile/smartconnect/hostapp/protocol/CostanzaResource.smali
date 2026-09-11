.class public Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "CostanzaResource.java"


# instance fields
.field private cid:I

.field protected cidType:I

.field private final mSendStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private nackCounter:I

.field private onlyRenderOnce:Z

.field private sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->mSendStatusListeners:Ljava/util/List;

    .line 25
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cid:I

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 27
    return-void
.end method


# virtual methods
.method public addSendStatusListener(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;)V
    .locals 1
    .param p1, "sendStatusListener"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->mSendStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->mSendStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cid:I

    return v0
.end method

.method public getNackCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->nackCounter:I

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public markRenderOnce()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->onlyRenderOnce:Z

    .line 31
    return-void
.end method

.method public onAbort()V
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->mSendStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;

    .line 64
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;
    invoke-interface {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;->onAbort(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V

    goto :goto_0

    .line 66
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;
    :cond_0
    return-void
.end method

.method public onAck()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->mSendStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;

    .line 51
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;
    invoke-interface {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;->onAck(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V

    goto :goto_0

    .line 53
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;
    :cond_0
    return-void
.end method

.method public onNack()V
    .locals 3

    .prologue
    .line 56
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->nackCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->nackCounter:I

    .line 57
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->mSendStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;

    .line 58
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;
    invoke-interface {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;->onNack(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V

    goto :goto_0

    .line 60
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;
    :cond_0
    return-void
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cid:I

    .line 39
    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->sourceName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 81
    const-string v0, "cid"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->appendHexProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v0, "cidType"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v0, "src"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->sourceName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v0, "nacks"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->nackCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

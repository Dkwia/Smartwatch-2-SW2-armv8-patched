.class Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;
.super Ljava/lang/Object;
.source "ResourceProviderCache.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceSendStatusDelegator"
.end annotation


# instance fields
.field private final mProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

.field private final mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Ljava/lang/String;)V
    .locals 0
    .param p1, "providerCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;->mProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 46
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;->mProviderName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private getProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;->mProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;->mProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->getSynchronized(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAbort(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 2
    .param p1, "costanzaResource"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;->getProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->delete(I)V

    .line 67
    return-void
.end method

.method public onAck(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 3
    .param p1, "res"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;->mProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->getSynchronized(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v0

    .line 57
    .local v0, "provider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getResourceCache()Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->onAck(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V

    .line 58
    return-void
.end method

.method public onCreate(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 0
    .param p1, "res"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 51
    invoke-virtual {p1, p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->addSendStatusListener(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSendStatusListener;)V

    .line 52
    return-void
.end method

.method public onNack(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;)V
    .locals 0
    .param p1, "res"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .prologue
    .line 62
    return-void
.end method

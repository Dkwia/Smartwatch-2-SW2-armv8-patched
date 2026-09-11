.class public Lcom/sonymobile/smartconnect/hostapp/costanza/DeleteResourcesResponseListener;
.super Ljava/lang/Object;
.source "DeleteResourcesResponseListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)V
    .locals 0
    .param p1, "resDeleter"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DeleteResourcesResponseListener;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .line 19
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x92

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 28
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;

    .line 29
    .local v0, "deleteResourcesMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DeleteResourcesResponseListener;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->getCidRangeFirst()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->getCidRangeLast()I

    move-result v3

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->getStatus()Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->onDeleteResponse(IILcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;)V

    .line 31
    return-void
.end method

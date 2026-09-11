.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;
    }
.end annotation


# instance fields
.field private mExtensionCid:I

.field private mRenderConfigurations:[Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

.field private mTag:I

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 27
    const/16 v0, 0x8e

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->type:I

    .line 28
    return-void
.end method


# virtual methods
.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->mExtensionCid:I

    return v0
.end method

.method public getRenderConfigurations()[Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->mRenderConfigurations:[Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->mTag:I

    return v0
.end method

.method public setExtensionCid(I)V
    .locals 0
    .param p1, "extensionCid"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->mExtensionCid:I

    .line 56
    return-void
.end method

.method public setRenderConfigurations([Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;)V
    .locals 0
    .param p1, "renderConfigs"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->mRenderConfigurations:[Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    .line 32
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "mTag"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->mTag:I

    .line 48
    return-void
.end method

.method public setType(Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;)V
    .locals 1
    .param p1, "type"    # Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->mType:I

    .line 40
    return-void
.end method

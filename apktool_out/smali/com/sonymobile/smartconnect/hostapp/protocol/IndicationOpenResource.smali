.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationOpenResource.java"


# static fields
.field public static final OPEN_RESOURCE_LEGAL:I = 0x1

.field public static final OPEN_RESOURCE_SUPPORT:I


# instance fields
.field private mResourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 35
    const/16 v0, 0x83

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 36
    return-void
.end method


# virtual methods
.method public getResourceToOpen()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;->mResourceId:I

    return v0
.end method

.method public setResourceToOpen(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;->mResourceId:I

    .line 44
    return-void
.end method

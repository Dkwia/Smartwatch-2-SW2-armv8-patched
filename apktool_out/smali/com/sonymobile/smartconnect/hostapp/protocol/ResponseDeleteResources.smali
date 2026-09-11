.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseDeleteResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;
    }
.end annotation


# static fields
.field private static final RES_REQ_ACTION_DELETE_RESOURCES_FAILED:I = 0x0

.field private static final RES_REQ_ACTION_DELETE_RESOURCES_SUCCESS:I = 0x1


# instance fields
.field private mCidRangeFirst:I

.field private mCidRangeLast:I

.field private mStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 30
    const/16 v0, 0x92

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 31
    return-void
.end method

.method private parseStatus(I)Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 59
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->SUCCESS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->FAILURE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCidRangeFirst()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->mCidRangeFirst:I

    return v0
.end method

.method public getCidRangeLast()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->mCidRangeLast:I

    return v0
.end method

.method public getStatus()Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->mStatus:I

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->parseStatus(I)Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    move-result-object v0

    return-object v0
.end method

.method public setCidRangeFirst(I)V
    .locals 0
    .param p1, "firstCid"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->mCidRangeFirst:I

    .line 39
    return-void
.end method

.method public setCidRangeLast(I)V
    .locals 0
    .param p1, "lastCid"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->mCidRangeLast:I

    .line 47
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;->mStatus:I

    .line 51
    return-void
.end method

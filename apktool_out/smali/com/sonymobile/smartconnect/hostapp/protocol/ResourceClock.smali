.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceClock.java"


# instance fields
.field private mLowPowerClockItems:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

.field private mNormalClockItems:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 14
    const/16 v0, 0x12

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 15
    return-void
.end method


# virtual methods
.method public getLowPowerComponents()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;->mLowPowerClockItems:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    return-object v0
.end method

.method public getNormalClockItems()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;->mNormalClockItems:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    return-object v0
.end method

.method public setLowPowerItems([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;)V
    .locals 0
    .param p1, "clockItems"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;->mLowPowerClockItems:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    .line 23
    return-void
.end method

.method public setNormalClockItems([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;)V
    .locals 0
    .param p1, "clockItems"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;->mNormalClockItems:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    .line 31
    return-void
.end method

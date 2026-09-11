.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationBatteryLevel.java"


# instance fields
.field private mPercentage:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 30
    const/16 v0, 0x12

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->type:I

    .line 31
    return-void
.end method


# virtual methods
.method public getPercentage()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->mPercentage:I

    return v0
.end method

.method public setPercentage(I)V
    .locals 0
    .param p1, "percentage"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->mPercentage:I

    .line 50
    return-void
.end method

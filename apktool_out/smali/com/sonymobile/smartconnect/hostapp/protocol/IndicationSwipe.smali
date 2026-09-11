.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationSwipe.java"


# static fields
.field public static final SWIPE_IND_DIRECTION_DOWN:I = 0x1

.field public static final SWIPE_IND_DIRECTION_LEFT:I = 0x2

.field public static final SWIPE_IND_DIRECTION_RIGHT:I = 0x3

.field public static final SWIPE_IND_DIRECTION_UP:I


# instance fields
.field private mDirection:I

.field private mKey:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 30
    const/16 v0, 0x74

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;->type:I

    .line 31
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;->mDirection:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;->mKey:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;->mY:I

    return v0
.end method

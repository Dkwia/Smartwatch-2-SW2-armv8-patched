.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationTouch.java"


# static fields
.field public static final ACTION_ALIGN_INDEX:I = 0x3

.field public static final ACTION_LONG_PRESS:I = 0x1

.field public static final ACTION_MENU_PRESS:I = 0x5

.field public static final ACTION_MULTI_PRESS:I = 0x4

.field public static final ACTION_PRESS:I = 0x0

.field public static final ACTION_RELEASE:I = 0x2


# instance fields
.field private mAction:I

.field private mKey:I

.field private mTimestamp:J

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 33
    const/16 v0, 0x73

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->type:I

    .line 34
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->mAction:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->mKey:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->mTimestamp:J

    return-wide v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->mY:I

    return v0
.end method

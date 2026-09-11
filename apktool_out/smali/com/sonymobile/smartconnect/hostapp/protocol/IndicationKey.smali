.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationKey.java"


# static fields
.field public static final ACTION_PRESS:I = 0x0

.field public static final ACTION_RELEASE:I = 0x1

.field public static final ACTION_REPEAT:I = 0x2

.field public static final KEY_CODE_BACK:I = 0x0

.field public static final KEY_CODE_MENU:I = 0x1


# instance fields
.field private mAction:I

.field private mCode:I

.field private mTimestamp:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 34
    const/16 v0, 0x72

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->type:I

    .line 35
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->mAction:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->mCode:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationKey;->mTimestamp:J

    return-wide v0
.end method

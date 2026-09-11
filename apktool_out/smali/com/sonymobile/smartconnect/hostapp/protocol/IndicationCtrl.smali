.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationCtrl.java"


# static fields
.field public static final ACTION_BUTTON_BACK:I = 0xa

.field public static final ACTION_BUTTON_OPTIONS:I = 0xb

.field public static final ACTION_PAUSE:I = 0x2

.field public static final ACTION_POWER_SAVE_OFF:I = 0x5

.field public static final ACTION_POWER_SAVE_ON:I = 0x4

.field public static final ACTION_RESUME:I = 0x1

.field public static final ACTION_START:I = 0x0

.field public static final ACTION_STOP:I = 0x3

.field public static final ACTION_TOUCH_LONG_PRESS:I = 0x7

.field public static final ACTION_TOUCH_PRESS:I = 0x6

.field public static final ACTION_TOUCH_RELEASE:I = 0x8

.field public static final ACTION_TOUCH_SWIPE:I = 0x9


# instance fields
.field private mAction:I

.field private mCid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 37
    const/16 v0, 0x6c

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->type:I

    .line 38
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->mAction:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->mCid:I

    return v0
.end method

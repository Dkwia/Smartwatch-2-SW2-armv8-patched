.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestCtrl.java"


# static fields
.field public static final ACTION_CONFIRM_TRANSITION:I = 0x8

.field public static final ACTION_RENDER:I = 0x6

.field public static final ACTION_SCREEN_STATE_AUTO:I = 0x5

.field public static final ACTION_SCREEN_STATE_DIM:I = 0x3

.field public static final ACTION_SCREEN_STATE_OFF:I = 0x2

.field public static final ACTION_SCREEN_STATE_ON:I = 0x4

.field public static final ACTION_SET_STATUS_BAR_PAGE:I = 0x7

.field public static final ACTION_START:I = 0x0

.field public static final ACTION_STOP:I = 0x1


# instance fields
.field private final mAction:I

.field private final mCid:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "newMessageId"    # I
    .param p2, "action"    # I
    .param p3, "cid"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 33
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;->mAction:I

    .line 34
    const/16 v0, 0x6a

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;->type:I

    .line 35
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;->mCid:I

    .line 36
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;->mAction:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestCtrl;->mCid:I

    return v0
.end method

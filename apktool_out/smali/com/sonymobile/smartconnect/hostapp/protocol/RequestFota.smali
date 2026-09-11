.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestFota.java"


# static fields
.field public static final ACTION_COMPLETE:I = 0x2

.field public static final ACTION_PROGRESS:I = 0x1

.field public static final ACTION_RESET:I = 0x3

.field public static final ACTION_START:I = 0x0

.field public static final VALUE_BATTERY_LEVEL_LOW:I = 0x2

.field public static final VALUE_ERROR:I = 0x1

.field public static final VALUE_OK:I


# instance fields
.field private mAction:I

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 39
    const/4 v0, 0x6

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->type:I

    .line 40
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->mAction:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->mValue:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->mAction:I

    .line 58
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->mValue:I

    .line 66
    return-void
.end method

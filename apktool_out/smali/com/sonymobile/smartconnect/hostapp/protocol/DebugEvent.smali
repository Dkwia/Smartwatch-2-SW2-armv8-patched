.class public Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "DebugEvent.java"


# static fields
.field public static final ACTION_COMMAND:I = 0x3

.field public static final ACTION_DUMP:I = 0x4

.field public static final ACTION_ERROR:I = 0x1

.field public static final ACTION_FATAL:I = 0x2

.field public static final ACTION_INFO:I


# instance fields
.field private mAction:I

.field private mData:[B

.field private mEventId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 43
    const/16 v0, 0x7c

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->type:I

    .line 44
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->mAction:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->mData:[B

    return-object v0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->mEventId:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->mAction:I

    .line 56
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->mData:[B

    .line 72
    return-void
.end method

.method public setEventId(I)V
    .locals 0
    .param p1, "eventId"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->mEventId:I

    .line 64
    return-void
.end method

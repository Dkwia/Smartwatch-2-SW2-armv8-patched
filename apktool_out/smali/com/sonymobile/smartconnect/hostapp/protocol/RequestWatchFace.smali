.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestWatchFace.java"


# static fields
.field public static final ACTION_GET_ALL:I = 0x4

.field public static final ACTION_GET_CURRENT_SELECTED:I = 0x5

.field public static final ACTION_GET_SELECTED:I = 0x3

.field public static final ACTION_INSTALL:I = 0x0

.field public static final ACTION_INSTALL_TEMPORARY:I = 0x6

.field public static final ACTION_SET:I = 0x2

.field public static final ACTION_SET_TEMPORARY_WATCHFACE:I = 0x8

.field public static final ACTION_UNINSTALL:I = 0x1

.field public static final ACTION_UNINSTALL_TEMPORARY:I = 0x7


# instance fields
.field private mAction:I

.field private mTimestamp:I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 44
    const/16 v0, 0x8b

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->type:I

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mValues:[I

    .line 46
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mAction:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mTimestamp:I

    return v0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mValues:[I

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mAction:I

    .line 62
    return-void
.end method

.method public setTimestamp(I)V
    .locals 0
    .param p1, "timestamp"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mTimestamp:I

    .line 83
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mValues:[I

    .line 74
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mValues:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 75
    return-void
.end method

.method public setValues([I)V
    .locals 0
    .param p1, "value"    # [I

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->mValues:[I

    .line 70
    return-void
.end method

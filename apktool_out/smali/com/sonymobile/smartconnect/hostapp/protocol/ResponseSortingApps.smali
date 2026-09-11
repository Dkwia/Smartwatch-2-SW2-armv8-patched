.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseSortingApps.java"


# static fields
.field public static final APPSORTING_RESP_CODE_OK:I = 0x0

.field public static final APPSORTING_RESP_CODE_SNAKE_LOCKED:I = 0x2

.field public static final APPSORTING_RESP_CODE_SNAKE_UNLOCKED:I = 0x1


# instance fields
.field private mAction:I

.field private mAppsCids:[I

.field private mCount:I

.field private mResult:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 22
    const/16 v0, 0x9a

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->type:I

    .line 23
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mAction:I

    return v0
.end method

.method public getAppsCids()[I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mAppsCids:[I

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mCount:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mResult:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mAction:I

    .line 31
    return-void
.end method

.method public setAppsCids([I)V
    .locals 0
    .param p1, "appsCids"    # [I

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mAppsCids:[I

    .line 55
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mCount:I

    .line 47
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->mResult:I

    .line 39
    return-void
.end method

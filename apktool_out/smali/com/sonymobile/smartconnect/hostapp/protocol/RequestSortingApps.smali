.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestSortingApps.java"


# static fields
.field public static final APPSORTING_REQ_ACTION_AZ_SORT:I = 0x1

.field public static final APPSORTING_REQ_ACTION_CUSTOM_SORT:I = 0x0

.field public static final APPSORTING_REQ_ACTION_GET_DISABLED_APPS:I = 0x2

.field public static final APPSORTING_REQ_ACTION_GET_SNAKE_STATUS:I = 0x3


# instance fields
.field private mAction:I

.field private mAppsCids:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 21
    const/16 v0, 0x99

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->type:I

    .line 22
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->mAction:I

    return v0
.end method

.method public getAppsCids()[I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->mAppsCids:[I

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->mAction:I

    .line 30
    return-void
.end method

.method public setAppsCids([I)V
    .locals 0
    .param p1, "appsCids"    # [I

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSortingApps;->mAppsCids:[I

    .line 38
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;
.source "ResourceTouchActionInformApplication.java"


# instance fields
.field private mDetectLongPress:Z

.field private mDetectShortPress:Z

.field private mLongPressCid:I

.field private mLongPressColor:I

.field private mShortPressCid:I

.field private mShortPressColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 10
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;-><init>()V

    .line 13
    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mShortPressColor:I

    .line 14
    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mLongPressColor:I

    .line 15
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mShortPressCid:I

    .line 16
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mLongPressCid:I

    return-void
.end method


# virtual methods
.method public getLongPressCid()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mLongPressCid:I

    return v0
.end method

.method public getLongPressColor()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mLongPressColor:I

    return v0
.end method

.method public getShortPressCid()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mShortPressCid:I

    return v0
.end method

.method public getmShortPressColor()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mShortPressColor:I

    return v0
.end method

.method public isDetectLongPress()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mDetectLongPress:Z

    return v0
.end method

.method public isDetectShortPress()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mDetectShortPress:Z

    return v0
.end method

.method public setDetectLongPress(Z)V
    .locals 0
    .param p1, "detectLongPress"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mDetectLongPress:Z

    .line 76
    return-void
.end method

.method public setDetectShortPress(Z)V
    .locals 0
    .param p1, "detectShortPress"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mDetectShortPress:Z

    .line 62
    return-void
.end method

.method public setLongPressCid(I)V
    .locals 0
    .param p1, "longPressCid"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mLongPressCid:I

    .line 48
    return-void
.end method

.method public setLongPressColor(I)V
    .locals 0
    .param p1, "longPressColor"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mLongPressColor:I

    .line 32
    return-void
.end method

.method public setShortPressCid(I)V
    .locals 0
    .param p1, "shortPressCid"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mShortPressCid:I

    .line 40
    return-void
.end method

.method public setShortPressColor(I)V
    .locals 0
    .param p1, "shortPressColor"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->mShortPressColor:I

    .line 24
    return-void
.end method

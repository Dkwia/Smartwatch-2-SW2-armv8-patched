.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipe;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;
.source "ResourceTouchActionSwipe.java"


# static fields
.field public static final SWIPE_TYPE_HORIZONTAL:I = 0x0

.field public static final SWIPE_TYPE_VERTICAL:I = 0x1


# instance fields
.field private mSwipeType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwipeType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipe;->mSwipeType:I

    return v0
.end method

.method public setSwipeType(I)V
    .locals 0
    .param p1, "swipeType"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipe;->mSwipeType:I

    .line 30
    return-void
.end method

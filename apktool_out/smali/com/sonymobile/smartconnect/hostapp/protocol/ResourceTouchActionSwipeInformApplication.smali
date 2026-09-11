.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;
.source "ResourceTouchActionSwipeInformApplication.java"


# static fields
.field public static final SWIPE_APPLICATION_TYPE_4_WAY:I = 0x2

.field public static final SWIPE_APPLICATION_TYPE_8_WAY:I = 0x3

.field public static final SWIPE_APPLICATION_TYPE_HORIZONTAL:I = 0x0

.field public static final SWIPE_APPLICATION_TYPE_VERTICAL:I = 0x1


# instance fields
.field private mSwipeApplicationType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwipeApplicationType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;->mSwipeApplicationType:I

    return v0
.end method

.method public setSwipeApplicationType(I)V
    .locals 0
    .param p1, "swipeApplicationType"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;->mSwipeApplicationType:I

    .line 33
    return-void
.end method

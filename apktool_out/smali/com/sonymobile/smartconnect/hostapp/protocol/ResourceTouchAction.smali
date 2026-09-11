.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;
.super Ljava/lang/Object;
.source "ResourceTouchAction.java"


# static fields
.field public static final TAP_ACTION_DOUBLE_TAP:I = 0x2

.field public static final TAP_ACTION_NO_TAP:I = 0x0

.field public static final TAP_ACTION_SINGLE_TAP:I = 0x1

.field public static final TOUCH_ACTION_INFORM_APPLICATION_EXTENDED:I = 0x8

.field public static final TOUCH_ACTION_INFORM_APPLICATION_OFFLINE:I = 0x1

.field public static final TOUCH_ACTION_INFORM_APPLICATION_ONLINE:I = 0x0

.field public static final TOUCH_ACTION_MENU:I = 0x6

.field public static final TOUCH_ACTION_NO_TOUCH:I = 0x7

.field public static final TOUCH_ACTION_SWIPE:I = 0x5

.field public static final TOUCH_ACTION_SWIPE_EXTENDED:I = 0xa

.field public static final TOUCH_ACTION_SWIPE_INFORM_APPLICATION_OFFLINE:I = 0x3

.field public static final TOUCH_ACTION_SWIPE_INFORM_APPLICATION_OFFLINE_EXTENDED:I = 0xc

.field public static final TOUCH_ACTION_SWIPE_INFORM_APPLICATION_ONLINE:I = 0x2

.field public static final TOUCH_ACTION_SWIPE_INFORM_APPLICATION_ONLINE_EXTENDED:I = 0xb

.field public static final TOUCH_ACTION_SWIPE_TO_NEW_SCREEN:I = 0x4

.field public static final TOUCH_ACTION_SWIPE_TO_NEW_SCREEN_EXTENDED:I = 0x9


# instance fields
.field private mKey:I

.field private mTapAction:I

.field private mTouchAction:I

.field private mTouchCidActivated:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mKey:I

    return v0
.end method

.method public getTapAction()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mTapAction:I

    return v0
.end method

.method public getTouchAction()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mTouchAction:I

    return v0
.end method

.method public getTouchCidActivated()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mTouchCidActivated:I

    return v0
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mKey:I

    .line 61
    return-void
.end method

.method public setTapAction(I)V
    .locals 0
    .param p1, "tapAction"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mTapAction:I

    .line 103
    return-void
.end method

.method public setTouchAction(I)V
    .locals 0
    .param p1, "touchAction"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mTouchAction:I

    .line 89
    return-void
.end method

.method public setTouchCidActivated(I)V
    .locals 0
    .param p1, "touchCidActivated"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;->mTouchCidActivated:I

    .line 75
    return-void
.end method

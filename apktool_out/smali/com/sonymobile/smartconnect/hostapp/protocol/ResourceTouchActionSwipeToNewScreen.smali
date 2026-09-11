.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;
.source "ResourceTouchActionSwipeToNewScreen.java"


# static fields
.field public static final MAX_SCREEN_LISTS:I = 0x2

.field public static final SCREEN_ALIGN_TYPE_BOTTOM:I = 0x2

.field public static final SCREEN_ALIGN_TYPE_CENTER:I = 0x1

.field public static final SCREEN_ALIGN_TYPE_TOP:I = 0x0

.field public static final SCREEN_ELEMENT_PRESS_TYPE_ACTIVE:I = 0x0

.field public static final SCREEN_ELEMENT_PRESS_TYPE_INACTIVE:I = 0x1

.field public static final SWIPE_SCREEN_TYPE_OVERLAY:I = 0xd

.field public static final SWIPE_SCREEN_TYPE_OVERLAY_FROM_DOWN:I = 0x9

.field public static final SWIPE_SCREEN_TYPE_OVERLAY_FROM_HORIZONTAL:I = 0xb

.field public static final SWIPE_SCREEN_TYPE_OVERLAY_FROM_LEFT:I = 0x7

.field public static final SWIPE_SCREEN_TYPE_OVERLAY_FROM_RIGHT:I = 0x8

.field public static final SWIPE_SCREEN_TYPE_OVERLAY_FROM_UP:I = 0xa

.field public static final SWIPE_SCREEN_TYPE_OVERLAY_FROM_VERTICAL:I = 0xc

.field public static final SWIPE_SCREEN_TYPE_SHAZAM:I = 0xe

.field public static final SWIPE_SCREEN_TYPE_WHOLE_SCREEN:I = 0x6

.field public static final SWIPE_SCREEN_TYPE_WHOLE_SCREEN_DOWN:I = 0x2

.field public static final SWIPE_SCREEN_TYPE_WHOLE_SCREEN_HORIZONTAL:I = 0x4

.field public static final SWIPE_SCREEN_TYPE_WHOLE_SCREEN_LEFT:I = 0x0

.field public static final SWIPE_SCREEN_TYPE_WHOLE_SCREEN_RIGHT:I = 0x1

.field public static final SWIPE_SCREEN_TYPE_WHOLE_SCREEN_UP:I = 0x3

.field public static final SWIPE_SCREEN_TYPE_WHOLE_SCREEN_VERTICAL:I = 0x5

.field public static final TRANSITION_CONFIRMATION_NOT_REQUIRED:I = 0x1

.field public static final TRANSITION_CONFIRMATION_REQUIRED:I = 0x0

.field public static final TRANSITION_TYPE_FOLLOW_FINGER:I = 0x0

.field public static final TRANSITION_TYPE_TIMED_100_PIXEL_PER_FRAME:I = 0x1e

.field public static final TRANSITION_TYPE_TIMED_10_FRAMES:I = 0x14

.field public static final TRANSITION_TYPE_TIMED_10_PIXEL_PER_FRAME:I = 0x1b

.field public static final TRANSITION_TYPE_TIMED_15_FRAMES:I = 0x13

.field public static final TRANSITION_TYPE_TIMED_1_PIXEL_PER_FRAME:I = 0x17

.field public static final TRANSITION_TYPE_TIMED_20_FRAMES:I = 0x12

.field public static final TRANSITION_TYPE_TIMED_20_PIXEL_PER_FRAME:I = 0x1c

.field public static final TRANSITION_TYPE_TIMED_2_FRAMES:I = 0x16

.field public static final TRANSITION_TYPE_TIMED_2_PIXEL_PER_FRAME:I = 0x18

.field public static final TRANSITION_TYPE_TIMED_30_FRAMES:I = 0x11

.field public static final TRANSITION_TYPE_TIMED_3_PIXEL_PER_FRAME:I = 0x19

.field public static final TRANSITION_TYPE_TIMED_50_PIXEL_PER_FRAME:I = 0x1d

.field public static final TRANSITION_TYPE_TIMED_5_FRAMES:I = 0x15

.field public static final TRANSITION_TYPE_TIMED_5_PIXEL_PER_FRAME:I = 0x1a

.field public static final TRANSITION_TYPE_TIMED_60_FRAMES:I = 0x10

.field public static final TRANSITION_TYPE_TIMED_FF_100_PIXEL_PER_FRAME:I = 0xf

.field public static final TRANSITION_TYPE_TIMED_FF_10_FRAMES:I = 0x5

.field public static final TRANSITION_TYPE_TIMED_FF_10_PIXEL_PER_FRAME:I = 0xc

.field public static final TRANSITION_TYPE_TIMED_FF_15_FRAMES:I = 0x4

.field public static final TRANSITION_TYPE_TIMED_FF_1_PIXEL_PER_FRAME:I = 0x8

.field public static final TRANSITION_TYPE_TIMED_FF_20_FRAMES:I = 0x3

.field public static final TRANSITION_TYPE_TIMED_FF_20_PIXEL_PER_FRAME:I = 0xd

.field public static final TRANSITION_TYPE_TIMED_FF_2_FRAMES:I = 0x7

.field public static final TRANSITION_TYPE_TIMED_FF_2_PIXEL_PER_FRAME:I = 0x9

.field public static final TRANSITION_TYPE_TIMED_FF_30_FRAMES:I = 0x2

.field public static final TRANSITION_TYPE_TIMED_FF_3_PIXEL_PER_FRAME:I = 0xa

.field public static final TRANSITION_TYPE_TIMED_FF_50_PIXEL_PER_FRAME:I = 0xe

.field public static final TRANSITION_TYPE_TIMED_FF_5_FRAMES:I = 0x6

.field public static final TRANSITION_TYPE_TIMED_FF_5_PIXEL_PER_FRAME:I = 0xb

.field public static final TRANSITION_TYPE_TIMED_FF_60_FRAMES:I = 0x1


# instance fields
.field private mDefaultItemCid:I

.field private mDetectScreenElementLongPress:Z

.field private mDetectScreenElementMultiPress:Z

.field private mDetectScreenElementShortPress:Z

.field private mKeepCurrentIndex:Z

.field private mListId:I

.field private mParentListId:I

.field private mScreenAlignType:I

.field private mScreenElementBlockingPress:Z

.field private mScreenElementLongPressColor:I

.field private mScreenElementPressType:I

.field private mScreenElementShortPressColor:I

.field private mScreens:[I

.field private mStartIndex:I

.field private mSwipeScreenType:I

.field private mTransitionConfirmation:I

.field private mTransitionType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;-><init>()V

    .line 23
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementShortPressColor:I

    .line 24
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementLongPressColor:I

    return-void
.end method


# virtual methods
.method public getDefaultItem()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDefaultItemCid:I

    return v0
.end method

.method public getKeepCurrentIndex()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mKeepCurrentIndex:Z

    return v0
.end method

.method public getListId()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mListId:I

    return v0
.end method

.method public getParentListId()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mParentListId:I

    return v0
.end method

.method public getScreenAlignType()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenAlignType:I

    return v0
.end method

.method public getScreenElementLongPressColor()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementLongPressColor:I

    return v0
.end method

.method public getScreenElementPressType()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementPressType:I

    return v0
.end method

.method public getScreenElementShortPressColor()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementShortPressColor:I

    return v0
.end method

.method public getScreens()[I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreens:[I

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mStartIndex:I

    return v0
.end method

.method public getSwipeScreenType()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mSwipeScreenType:I

    return v0
.end method

.method public getTransitionConfirmation()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mTransitionConfirmation:I

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mTransitionType:I

    return v0
.end method

.method public isBlockingPress()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementBlockingPress:Z

    return v0
.end method

.method public isDetectScreenElementLongPress()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDetectScreenElementLongPress:Z

    return v0
.end method

.method public isDetectScreenElementMultiPress()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDetectScreenElementMultiPress:Z

    return v0
.end method

.method public isDetectScreenElementShortPress()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDetectScreenElementShortPress:Z

    return v0
.end method

.method public setDefaultItem(I)V
    .locals 0
    .param p1, "defaultCid"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDefaultItemCid:I

    .line 305
    return-void
.end method

.method public setDetectScreenElementLongPress(Z)V
    .locals 0
    .param p1, "detectLongPress"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDetectScreenElementLongPress:Z

    .line 183
    return-void
.end method

.method public setDetectScreenElementMultiPress(Z)V
    .locals 0
    .param p1, "detectMultiPress"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDetectScreenElementMultiPress:Z

    .line 197
    return-void
.end method

.method public setDetectScreenElementShortPress(Z)V
    .locals 0
    .param p1, "detectShortPress"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mDetectScreenElementShortPress:Z

    .line 169
    return-void
.end method

.method public setKeepCurrentIndex(Z)V
    .locals 0
    .param p1, "keepCurrentIndex"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mKeepCurrentIndex:Z

    .line 313
    return-void
.end method

.method public setListId(I)V
    .locals 0
    .param p1, "listId"    # I

    .prologue
    .line 285
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mListId:I

    .line 286
    return-void
.end method

.method public setParentListId(I)V
    .locals 0
    .param p1, "parentListId"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mParentListId:I

    .line 294
    return-void
.end method

.method public setScreenAlignType(I)V
    .locals 0
    .param p1, "screenAlignType"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenAlignType:I

    .line 141
    return-void
.end method

.method public setScreenElementBlockingPress(Z)V
    .locals 0
    .param p1, "blockingPress"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementBlockingPress:Z

    .line 202
    return-void
.end method

.method public setScreenElementLongPressColor(I)V
    .locals 0
    .param p1, "screenElementLongPressColor"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementLongPressColor:I

    .line 218
    return-void
.end method

.method public setScreenElementPressType(I)V
    .locals 0
    .param p1, "screenElementPressType"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementPressType:I

    .line 155
    return-void
.end method

.method public setScreenElementShortPressColor(I)V
    .locals 0
    .param p1, "screenElementShortPressColor"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreenElementShortPressColor:I

    .line 210
    return-void
.end method

.method public setScreens([I)V
    .locals 0
    .param p1, "screens"    # [I

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreens:[I

    .line 236
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "startIndex"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mStartIndex:I

    .line 127
    return-void
.end method

.method public setSwipeScreenType(I)V
    .locals 0
    .param p1, "swipeScreenType"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mSwipeScreenType:I

    .line 250
    return-void
.end method

.method public setTransitionConfirmation(I)V
    .locals 0
    .param p1, "transitionConfirmation"    # I

    .prologue
    .line 277
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mTransitionConfirmation:I

    .line 278
    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .param p1, "transitionType"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mTransitionType:I

    .line 264
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 298
    const-string v0, "%s [startIndex=%d keepCurrentIndex=%b screens=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mStartIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mKeepCurrentIndex:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->mScreens:[I

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->toHexString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

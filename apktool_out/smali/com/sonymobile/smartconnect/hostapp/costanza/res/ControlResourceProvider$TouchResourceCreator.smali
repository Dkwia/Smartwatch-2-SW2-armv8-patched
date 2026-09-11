.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchResourceCreator"
.end annotation


# instance fields
.field private final mIsLongClickable:Z

.field private final mIsShortClickable:Z

.field private final mLongPressCid:I

.field private final mLongPressColor:I

.field private final mShortPressCid:I

.field private final mShortPressColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;ZZIIII)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "isShortClickable"    # Z
    .param p3, "isLongClickable"    # Z
    .param p4, "shortPressColor"    # I
    .param p5, "longPressColor"    # I
    .param p6, "shortPressCid"    # I
    .param p7, "longPressCid"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;-><init>(Landroid/graphics/Rect;)V

    .line 92
    iput-boolean p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mIsShortClickable:Z

    .line 93
    iput-boolean p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mIsLongClickable:Z

    .line 94
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mShortPressColor:I

    .line 95
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mLongPressColor:I

    .line 96
    iput p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mShortPressCid:I

    .line 97
    iput p7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mLongPressCid:I

    .line 98
    return-void
.end method


# virtual methods
.method public createResource(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 3
    .param p1, "cid"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;-><init>()V

    .line 104
    .local v0, "touchAction":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mIsShortClickable:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setDetectShortPress(Z)V

    .line 105
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mIsLongClickable:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setDetectLongPress(Z)V

    .line 106
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mShortPressColor:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setShortPressColor(I)V

    .line 107
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mLongPressColor:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setLongPressColor(I)V

    .line 108
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mShortPressCid:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setShortPressCid(I)V

    .line 109
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->mLongPressCid:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setLongPressCid(I)V

    .line 110
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setTouchCidActivated(I)V

    .line 111
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setTapAction(I)V

    .line 112
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setTouchAction(I)V

    .line 113
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionInformApplication;->setKey(I)V

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$TouchResourceCreator;->createResourceControl(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;

    move-result-object v1

    return-object v1
.end method

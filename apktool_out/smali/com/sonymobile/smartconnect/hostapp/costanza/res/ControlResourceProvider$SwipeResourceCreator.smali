.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeResourceCreator"
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;-><init>(Landroid/graphics/Rect;)V

    .line 147
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

    .line 151
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;-><init>()V

    .line 152
    .local v0, "swipeAction":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;->setTouchAction(I)V

    .line 154
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;->setSwipeApplicationType(I)V

    .line 156
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;->setTouchCidActivated(I)V

    .line 157
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;->setTapAction(I)V

    .line 158
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeInformApplication;->setKey(I)V

    .line 160
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$SwipeResourceCreator;->createResourceControl(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;

    move-result-object v1

    return-object v1
.end method

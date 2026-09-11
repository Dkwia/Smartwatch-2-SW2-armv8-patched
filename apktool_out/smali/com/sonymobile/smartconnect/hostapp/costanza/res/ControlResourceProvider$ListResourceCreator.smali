.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListResourceCreator"
.end annotation


# instance fields
.field private final mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

.field private final mIsHorizontalList:Z

.field private final mKeepCurrentIndex:Z

.field private final mRequiredNofCids:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;-><init>(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isHorizontal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mIsHorizontalList:Z

    .line 177
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getAdapter()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    .line 178
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->getRequiredNofCids(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mRequiredNofCids:I

    .line 179
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->keepCurrentIndex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mKeepCurrentIndex:Z

    .line 180
    return-void
.end method

.method private getRequiredNofCids(I)I
    .locals 4
    .param p1, "itemCount"    # I

    .prologue
    const/16 v3, 0x2710

    const/16 v2, 0x3e8

    const/16 v1, 0x1f4

    const/16 v0, 0x64

    .line 191
    if-ge p1, v0, :cond_0

    .line 200
    :goto_0
    return v0

    .line 193
    :cond_0
    if-ge p1, v1, :cond_1

    move v0, v1

    .line 194
    goto :goto_0

    .line 195
    :cond_1
    if-ge p1, v2, :cond_2

    move v0, v2

    .line 196
    goto :goto_0

    .line 197
    :cond_2
    if-ge p1, v3, :cond_3

    move v0, v3

    .line 198
    goto :goto_0

    .line 200
    :cond_3
    const v0, 0x186a0

    goto :goto_0
.end method


# virtual methods
.method public createResource(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 10
    .param p1, "cid"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    if-nez v6, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object v5

    .line 215
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getActiveWindow()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    move-result-object v3

    .line 216
    .local v3, "listWindow":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->EmptyWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    if-eq v3, v6, :cond_0

    .line 221
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;

    invoke-direct {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;-><init>()V

    .line 222
    .local v4, "swipeAction":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;
    iget-boolean v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mIsHorizontalList:Z

    if-eqz v5, :cond_2

    .line 223
    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setScreenAlignType(I)V

    .line 225
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setSwipeScreenType(I)V

    .line 233
    :goto_1
    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setTransitionType(I)V

    .line 235
    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setScreenElementPressType(I)V

    .line 237
    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setDetectScreenElementShortPress(Z)V

    .line 238
    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setDetectScreenElementLongPress(Z)V

    .line 239
    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setScreenElementBlockingPress(Z)V

    .line 241
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getSelection()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setStartIndex(I)V

    .line 242
    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setTouchCidActivated(I)V

    .line 243
    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setTapAction(I)V

    .line 244
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setTouchAction(I)V

    .line 245
    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setTransitionConfirmation(I)V

    .line 247
    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setListId(I)V

    .line 248
    invoke-virtual {v4, v9}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setParentListId(I)V

    .line 249
    invoke-virtual {v4, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setKey(I)V

    .line 250
    iget-boolean v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mKeepCurrentIndex:Z

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setKeepCurrentIndex(Z)V

    .line 252
    add-int/lit8 v0, p1, 0x1

    .line 253
    .local v0, "defaultItemCid":I
    add-int/lit8 v1, p1, 0x2

    .line 254
    .local v1, "firstListItemCid":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v2, v5, -0x1

    .line 256
    .local v2, "lastListItemCid":I
    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setDefaultItem(I)V

    .line 257
    new-array v5, v9, [I

    aput v1, v5, v7

    aput v2, v5, v8

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setScreens([I)V

    .line 259
    invoke-virtual {p3, p1, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(III)V

    .line 261
    invoke-virtual {p0, p1, p2, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->createResourceControl(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;

    move-result-object v5

    goto :goto_0

    .line 228
    .end local v0    # "defaultItemCid":I
    .end local v1    # "firstListItemCid":I
    .end local v2    # "lastListItemCid":I
    :cond_2
    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setScreenAlignType(I)V

    .line 230
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionSwipeToNewScreen;->setSwipeScreenType(I)V

    goto :goto_1
.end method

.method public getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I
    .locals 1
    .param p1, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .prologue
    .line 206
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceCreator;->mRequiredNofCids:I

    invoke-interface {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getCidRange(I)I

    move-result v0

    return v0
.end method

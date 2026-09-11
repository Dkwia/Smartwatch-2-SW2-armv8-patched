.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
.super Ljava/lang/Object;
.source "CostanzaResourceProvider.java"


# instance fields
.field private final mBoxResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;

.field private final mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

.field private final mClockWidgetResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;

.field private final mControlResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

.field private final mImageResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

.field private final mListItemResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;

.field private final mMasterResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;

.field private final mMenuItemResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;

.field private final mResCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

.field private final mShifterResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;

.field private final mTextResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;

.field private final mWidgetScreenResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;)V
    .locals 0
    .param p1, "resCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .param p3, "textResourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;
    .param p4, "imageResProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;
    .param p5, "controlResourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
    .param p6, "shifterResProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;
    .param p7, "boxResProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;
    .param p8, "masterResProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;
    .param p9, "listItemResourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;
    .param p10, "menuItemResourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;
    .param p11, "widgetScreenResourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;
    .param p12, "clockWidgetResourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mResCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    .line 58
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .line 59
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mTextResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;

    .line 60
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mControlResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    .line 61
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mImageResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    .line 62
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mShifterResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;

    .line 63
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mBoxResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;

    .line 64
    iput-object p8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mMasterResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;

    .line 65
    iput-object p9, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mListItemResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;

    .line 66
    iput-object p10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mMenuItemResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;

    .line 67
    iput-object p11, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mWidgetScreenResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;

    .line 68
    iput-object p12, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mClockWidgetResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;

    .line 69
    return-void
.end method


# virtual methods
.method public cidRefTracker()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    return-object v0
.end method

.method public delete(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mResCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->removeCid(I)V

    .line 202
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->remove(I)I

    .line 204
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "Deleted resource, 0x%08x from cache and ref tracker."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_0
    return-void
.end method

.method public delete(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "mResourceDeleter"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .param p2, "cid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mResCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->deleteResource(ILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Ljava/util/ArrayList;)V

    .line 182
    return-void
.end method

.method public getBox(Ljava/util/List;IILandroid/graphics/Rect;)I
    .locals 1
    .param p2, "outlineColor"    # I
    .param p3, "fillColor"    # I
    .param p4, "r"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;II",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mBoxResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;->getBox(Ljava/util/List;IILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public getCidTracker()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    return-object v0
.end method

.method public getClock(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;Ljava/util/List;)I
    .locals 1
    .param p2, "timeGroupControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "clockItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mClockWidgetResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;->getResources(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeGroupControl;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 1
    .param p2, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .param p3, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mImageResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    return v0
.end method

.method public getImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 8
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "imageConversion"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;
    .param p6, "useEmptyOnError"    # Z
    .param p7, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;",
            "Z",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mImageResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    return v0
.end method

.method public getImageRange(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 1
    .param p2, "timeControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;
    .param p3, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mImageResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getImageRange(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TimeControl;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    return v0
.end method

.method public getListControl(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)I
    .locals 1
    .param p2, "listControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;",
            ")I"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mControlResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->getListResourceControl(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)I

    move-result v0

    return v0
.end method

.method public getListItem(Ljava/util/List;Ljava/util/List;II)I
    .locals 1
    .param p3, "listCid"    # I
    .param p4, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p2, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mListItemResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;->reuseListItemResource(Ljava/util/List;Ljava/util/List;II)I

    move-result v0

    return v0
.end method

.method public getMaster(Ljava/util/List;IILjava/util/List;Ljava/util/List;Z)I
    .locals 7
    .param p2, "extensionCid"    # I
    .param p3, "viewId"    # I
    .param p6, "isTouchUpdatable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p4, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mMasterResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;->getMaster(Ljava/util/List;IILjava/util/List;Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public getMenuItem(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p2, "itemCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mMenuItemResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;->reuseMenuItemResource(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getResourceCache()Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mResCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    return-object v0
.end method

.method public getShifter(Ljava/util/List;IIII)I
    .locals 6
    .param p2, "eventId"    # I
    .param p3, "positionedCid"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;IIII)I"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mShifterResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;->getShifter(Ljava/util/List;IIII)I

    move-result v0

    return v0
.end method

.method public getShifter(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;)I
    .locals 1
    .param p2, "positionedControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;",
            ")I"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mShifterResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;->getShifter(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;)I

    move-result v0

    return v0
.end method

.method public getSwipeResourceControl(Ljava/util/List;Landroid/graphics/Rect;)I
    .locals 1
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            ")I"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mControlResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->getSwipeResourceControl(Ljava/util/List;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public getText(Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mTextResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->getText(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getText(Ljava/util/List;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I
    .locals 11
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "masterBox"    # Landroid/graphics/Rect;
    .param p6, "textSize"    # I
    .param p7, "gravity"    # I
    .param p8, "textColor"    # I
    .param p9, "backgroundColor"    # I
    .param p10, "useMaster"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Landroid/graphics/Rect;",
            "IIIIZ)I"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mTextResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->getText(Ljava/util/List;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I

    move-result v0

    return v0
.end method

.method public getTextLineImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "targetColorMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;",
            ")I"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mImageResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getTextLineImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    return v0
.end method

.method public getTouchResourceControl(Ljava/util/List;Landroid/graphics/Rect;ZZIIIII)I
    .locals 10
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "isShortClickable"    # Z
    .param p4, "isLongClickable"    # Z
    .param p5, "viewId"    # I
    .param p6, "shortPressColor"    # I
    .param p7, "longPressColor"    # I
    .param p8, "shortPressCid"    # I
    .param p9, "longPressCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZZIIIII)I"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mControlResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->getTouchResourceControl(Ljava/util/List;Landroid/graphics/Rect;ZZIIIII)I

    move-result v0

    return v0
.end method

.method public getUncachedDeflatedImage(ILandroid/graphics/Bitmap;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    .locals 1
    .param p1, "cid"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mImageResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;->getUncachedDeflatedImage(ILandroid/graphics/Bitmap;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetScreen(Ljava/util/List;IILjava/util/List;)I
    .locals 1
    .param p2, "extensionCid"    # I
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p4, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mWidgetScreenResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;

    invoke-virtual {v0, p1, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;->reuseScreenResource(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public replaceMenu(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;ZZ)I
    .locals 6
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p4, "isSlideEffectEnabled"    # Z
    .param p5, "isOfflineMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZ)I"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mControlResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->replaceMenuResourceControl(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;ZZ)I

    move-result v0

    return v0
.end method

.method public resourceCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mResCache:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->size()I

    move-result v0

    return v0
.end method

.method public reuseMenu(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;ZZ)I
    .locals 6
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p4, "isSlideEffectEnabled"    # Z
    .param p5, "isOfflineMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZ)I"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->mControlResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->reuseMenuResourceControl(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;ZZ)I

    move-result v0

    return v0
.end method

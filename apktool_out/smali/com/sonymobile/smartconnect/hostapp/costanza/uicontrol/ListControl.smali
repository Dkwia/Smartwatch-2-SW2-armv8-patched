.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.source "ListControl.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$1;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_LIST_ITEMS:I = 0x64


# instance fields
.field private mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

.field private final mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private final mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

.field private mDefaultListItemControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

.field private mIsRenderedFullyAtleastOnce:Z

.field private mItemSubScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepCurrentIndex:Z

.field private mListCid:I

.field private final mListItems:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;

.field private mWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

.field private final mXmlLayoutId:I


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;)V
    .locals 2
    .param p2, "xmlLayoutId"    # I
    .param p3, "controlFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListCid:I

    .line 171
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListItems:Landroid/util/LruCache;

    .line 175
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mItemSubScreens:Ljava/util/List;

    .line 181
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapterView:Landroid/widget/AdapterView;

    .line 182
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mXmlLayoutId:I

    .line 183
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    .line 184
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    return-object v0
.end method

.method private generateListItemsInActiveWindow(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V
    .locals 6
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p4, "adapter"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-virtual {p4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getActiveWindow()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    move-result-object v0

    .line 266
    .local v0, "activeWindow":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    iget v2, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    .local v2, "i":I
    :goto_0
    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    if-gt v2, v4, :cond_1

    .line 267
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListItems:Landroid/util/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    .line 268
    .local v3, "listItemControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
    if-eqz v3, :cond_0

    .line 269
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 270
    .local v1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3, p1, p2, v1, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 271
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->markAsClean()V

    .line 266
    .end local v1    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v3    # "listItemControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
    :cond_1
    return-void
.end method

.method private isAdapterValid()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMissingSubScreens()Z
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getActiveWindow()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mItemSubScreens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateListControl(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;)V
    .locals 1
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual {p1, p2, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getListControl(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListCid:I

    .line 259
    return-void
.end method


# virtual methods
.method public activeWindowChanged(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    .prologue
    .line 307
    return-void
.end method

.method protected connectTouchProcessors(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V
    .locals 1
    .param p1, "aefEventListener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;->setAefEventListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    .line 379
    return-void
.end method

.method public findUiControlByKey(I)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 365
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListCid:I

    if-ne p1, v0, :cond_0

    .line 368
    .end local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 220
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mIsDirty:Z

    if-eqz v1, :cond_0

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->updateListControl(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;)V

    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->scheduleTouchUpdate()V

    .line 226
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v0, "itemSubScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mDefaultListItemControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 231
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->generateListItemsInActiveWindow(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V

    .line 233
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isTouchUpdateNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mItemSubScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->scheduleTouchUpdate()V

    .line 246
    :cond_1
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mItemSubScreens:Ljava/util/List;

    .line 248
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mItemSubScreens:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mIsRenderedFullyAtleastOnce:Z

    .line 254
    .end local v0    # "itemSubScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    :cond_2
    return-void
.end method

.method public getAdapter()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    return-object v0
.end method

.method public getAdapterView()Landroid/widget/AdapterView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapterView:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getListCid()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListCid:I

    return v0
.end method

.method protected getTouchProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mTouchProcessor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListTouchProcessor;

    return-object v0
.end method

.method public getWindow()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    return-object v0
.end method

.method public getXmlLayoutId()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mXmlLayoutId:I

    return v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;)I
    .locals 4
    .param p1, "uiControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .prologue
    .line 343
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    move-object v2, v0

    .line 344
    .local v2, "itemControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->getPosition()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 346
    .end local v2    # "itemControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
    :goto_0
    return v3

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "ex":Ljava/lang/ClassCastException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public isHorizontal()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapterView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/Gallery;

    return v0
.end method

.method protected isTouchLockAppropriate()Z
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isMissingSubScreens()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepCurrentIndex()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mKeepCurrentIndex:Z

    return v0
.end method

.method protected markAsClean()V
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mIsRenderedFullyAtleastOnce:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mKeepCurrentIndex:Z

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mKeepCurrentIndex:Z

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->markAsClean()V

    goto :goto_0
.end method

.method public requestMissingItem()V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItem()Z

    goto :goto_0
.end method

.method public selectionChanged(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->invalidate(Z)V

    .line 314
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V
    .locals 7
    .param p1, "adapter"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    .prologue
    const/4 v2, -0x1

    .line 188
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    .line 189
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->addWindowChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "defaultItemView":Landroid/view/View;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    const/4 v6, 0x1

    move-object v3, p0

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;-><init>(Landroid/view/View;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;Z)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mDefaultListItemControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->invalidate()V

    .line 194
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->setSelection(I)Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mKeepCurrentIndex:Z

    .line 202
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->invalidate()V

    goto :goto_0
.end method

.method public setSelectedPosition(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "eventBundle"    # Landroid/os/Bundle;

    .prologue
    .line 382
    const-string v2, "layout_reference"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, "layoutReference":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getId()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const-string v2, "list_item_position"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    const-string v2, "list_item_position"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 390
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->setSelectedPosition(I)V

    goto :goto_0

    .line 392
    .end local v1    # "position":I
    :cond_2
    const-string v2, "list_item_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    const-string v3, "list_item_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getPositionFromItemId(I)I

    move-result v1

    .line 395
    .restart local v1    # "position":I
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->setSelectedPosition(I)V

    goto :goto_0
.end method

.method public setWindow(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;)V
    .locals 0
    .param p1, "latestWindow"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    .line 278
    return-void
.end method

.method public updateItem(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 285
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->isAdapterValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v3, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->updateItem(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    const-string v3, "data_xml_layout"

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 292
    .local v2, "layoutId":I
    const-string v3, "list_item_position"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 294
    .local v4, "position":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, "itemView":Landroid/view/View;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mControlFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;-><init>(Landroid/view/View;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;)V

    .line 297
    .local v0, "listItemControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mListItems:Landroid/util/LruCache;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getActiveWindow()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->invalidate(Z)V

    goto :goto_0
.end method

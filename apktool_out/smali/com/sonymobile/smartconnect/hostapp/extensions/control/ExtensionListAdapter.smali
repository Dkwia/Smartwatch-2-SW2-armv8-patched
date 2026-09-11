.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;
.super Ljava/lang/Object;
.source "ExtensionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;
    }
.end annotation


# static fields
.field private static final INITIAL_LAYOUTS_PER_ADAPTER:I = 0x10

.field private static final MAX_ACTIVE_WINDOW_SIZE:I = 0x1b

.field private static final MAX_DEFAULT_VIEWS_PER_CONVERT_VIEW:I = 0xa

.field private static final MAX_FULLSCREENS:I = 0x5

.field private static final NEARBY_WINDOWS_TO_REQUEST_BACKWARDS:I = 0x2

.field private static final NEARBY_WINDOWS_TO_REQUEST_FORWARDS:I = 0x3

.field private static final NO_SELECTION:I = -0x1


# instance fields
.field private mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

.field private final mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private final mBasePackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mConvertViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultItemResource:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

.field private final mDefaultValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEmptyDefaultView:Landroid/view/View;

.field private final mExtensionIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

.field private final mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

.field private final mItemRequested:[Z

.field private mItemsPerListSizeRatio:F

.field private mLastChangeDirection:F

.field private final mListContent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mListCount:I

.field private mMaxVisibleItems:I

.field private mSelectedPosition:I

.field private final mWindowChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AdapterView;IIILcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "xmlLayout"    # I
    .param p4, "itemCount"    # I
    .param p5, "initialPosition"    # I
    .param p6, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p7, "extensionIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/AdapterView",
            "<*>;III",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v1, 0x10

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    .line 66
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->EmptyWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mConvertViews:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mWindowChangeListeners:Ljava/util/List;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mDefaultValues:Landroid/util/SparseArray;

    .line 88
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mBasePackageName:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mExtensionIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    .line 92
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {p6}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    .line 93
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    .line 95
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 97
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 99
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    .line 100
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemRequested:[Z

    .line 101
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->updateActiveWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItem()Z

    .line 105
    :cond_0
    invoke-virtual {p0, p5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->setSelection(I)Z

    .line 106
    return-void
.end method

.method private getConvertView(I)Landroid/view/View;
    .locals 4
    .param p1, "layoutRes"    # I

    .prologue
    .line 281
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 283
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_1

    .line 284
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v2, p1, v3}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->inflateView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 285
    new-instance v0, Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 287
    .local v0, "defaultValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->extractDefaultValues(Landroid/view/View;Landroid/util/SparseArray;)V

    .line 288
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mDefaultValues:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    :cond_0
    :goto_0
    return-object v1

    .line 291
    .end local v0    # "defaultValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mDefaultValues:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 292
    .restart local v0    # "defaultValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 293
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->applyDefaultValues(Landroid/view/View;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private notifySelectionChangeListeners()V
    .locals 4

    .prologue
    .line 123
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mWindowChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mWindowChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;

    .line 125
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;
    invoke-interface {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;->selectionChanged(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V

    goto :goto_0

    .line 127
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    return-void
.end method

.method private notifyWindowChanged(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;)V
    .locals 4
    .param p1, "newPendingWindow"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    .prologue
    .line 115
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mWindowChangeListeners:Ljava/util/List;

    monitor-enter v3

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mWindowChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;

    .line 117
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;
    invoke-interface {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;->activeWindowChanged(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;)V

    goto :goto_0

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    return-void
.end method

.method private onSelectionChanged()V
    .locals 4

    .prologue
    .line 406
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Set the selection to %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->updateActiveWindow()Z

    .line 410
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->notifySelectionChangeListeners()V

    .line 412
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItem()Z

    .line 413
    return-void
.end method

.method private requestItem(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 314
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemRequested:[Z

    array-length v2, v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemRequested:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemRequested:[Z

    aput-boolean v0, v2, p1

    .line 318
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getId()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->sendControlListRequest(II)V

    .line 319
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Requested missing item %d."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized requestMissingItemInActiveWindow()Z
    .locals 2

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItemInInRangeForwards(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItemInInRangeBackwards(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized requestMissingItemInInRangeBackwards(II)Z
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 350
    monitor-enter p0

    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 351
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestItem(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const/4 v1, 0x1

    .line 355
    :goto_1
    monitor-exit p0

    return v1

    .line 350
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 355
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized requestMissingItemInInRangeForwards(II)Z
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 359
    monitor-enter p0

    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 360
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestItem(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v1, 0x1

    .line 364
    :goto_1
    monitor-exit p0

    return v1

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sendControlListRequest(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "position"    # I

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.LIST_REQUEST_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "layout_reference"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v1, "list_item_position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mExtensionIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method private setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 301
    instance-of v0, p2, Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    :goto_0
    return-void

    .line 304
    :cond_0
    instance-of v0, p2, Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 305
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 308
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateActiveWindow()Z
    .locals 14

    .prologue
    .line 420
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    .line 422
    .local v0, "currentPosition":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 423
    const-string v10, "Active list window [min=%d,cur=%d,max=%d]/total=%d."

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v13, v13, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v13, v13, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :cond_0
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {p0, v0, v10}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 429
    .local v9, "selectedView":Landroid/view/View;
    const/4 v2, 0x0

    .line 430
    .local v2, "itemsPerListSizeRatio":F
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    instance-of v10, v10, Landroid/widget/ListView;

    if-eqz v10, :cond_4

    .line 431
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v2, v10, v11

    .line 436
    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_5

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    :goto_1
    double-to-int v10, v10

    iput v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mMaxVisibleItems:I

    .line 440
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->isActiveWindowInvalid()Z

    move-result v10

    if-nez v10, :cond_1

    iget v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemsPerListSizeRatio:F

    cmpl-float v10, v10, v2

    if-eqz v10, :cond_7

    .line 443
    :cond_1
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemsPerListSizeRatio:F

    .line 445
    const/16 v10, 0x1b

    iget v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemsPerListSizeRatio:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    mul-int/lit8 v11, v11, 0x5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 447
    .local v5, "maxAllowedItems":I
    mul-int/lit8 v10, v5, 0x2

    div-int/lit8 v3, v10, 0x3

    .line 448
    .local v3, "itemsTowardsTheChangeDirection":I
    div-int/lit8 v4, v5, 0x3

    .line 449
    .local v4, "itemsTowardsTheOppositeChangeDirection":I
    iget v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mLastChangeDirection:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    move v1, v4

    .line 452
    .local v1, "itemCountToTopFromSelection":I
    :goto_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 453
    const-string v10, "Max allowed items: %d, View: %s, itemRatio: %f, list wh:%d,%d, item wh:%d,%d"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mItemsPerListSizeRatio:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v13}, Landroid/widget/AdapterView;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget-object v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v13}, Landroid/widget/AdapterView;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_2
    const/4 v10, 0x0

    sub-int v11, v0, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 460
    .local v7, "minItemPosition":I
    iget v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    add-int/lit8 v10, v10, -0x1

    add-int v11, v7, v5

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 463
    .local v6, "maxItemPosition":I
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    invoke-direct {v8, v7, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;-><init>(II)V

    .line 464
    .local v8, "newWindow":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    invoke-virtual {v10, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 465
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 466
    const-string v10, "Changed active list window [min=%d,cur=%d,max=%d]/total=%d."

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_3
    iput-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    .line 472
    invoke-direct {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->notifyWindowChanged(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;)V

    .line 473
    const/4 v10, 0x1

    .line 476
    .end local v1    # "itemCountToTopFromSelection":I
    .end local v3    # "itemsTowardsTheChangeDirection":I
    .end local v4    # "itemsTowardsTheOppositeChangeDirection":I
    .end local v5    # "maxAllowedItems":I
    .end local v6    # "maxItemPosition":I
    .end local v7    # "minItemPosition":I
    .end local v8    # "newWindow":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    :goto_3
    return v10

    .line 434
    :cond_4
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v2, v10, v11

    goto/16 :goto_0

    .line 436
    :cond_5
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v2

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-double v10, v10

    goto/16 :goto_1

    .restart local v3    # "itemsTowardsTheChangeDirection":I
    .restart local v4    # "itemsTowardsTheOppositeChangeDirection":I
    .restart local v5    # "maxAllowedItems":I
    :cond_6
    move v1, v3

    .line 449
    goto/16 :goto_2

    .line 476
    .end local v3    # "itemsTowardsTheChangeDirection":I
    .end local v4    # "itemsTowardsTheOppositeChangeDirection":I
    .end local v5    # "maxAllowedItems":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private updateDefaultView(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 207
    .local v0, "isDefaultViewChanged":Z
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mDefaultItemResource:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    if-nez v3, :cond_2

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 212
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->updateActiveWindow()Z

    .line 214
    :cond_2
    return-void

    .end local v0    # "isDefaultViewChanged":Z
    :cond_3
    move v0, v2

    .line 204
    goto :goto_0
.end method


# virtual methods
.method public addWindowChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter$ActiveWindowChangeListener;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mWindowChangeListeners:Ljava/util/List;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mWindowChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 499
    return-void
.end method

.method public getActiveWindow()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

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
    .line 548
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItem(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "getItem() - position %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getItemCidRangeStart()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, -0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mBasePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPositionFromItemId(I)I
    .locals 5
    .param p1, "itemId"    # I

    .prologue
    .line 233
    monitor-enter p0

    const/4 v2, -0x1

    .line 234
    .local v2, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 236
    .local v3, "tempKey":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 237
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "list_item_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, p1, :cond_1

    .line 238
    move v2, v3

    .line 242
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "tempKey":I
    :cond_0
    monitor-exit p0

    return v2

    .line 234
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "tempKey":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "tempKey":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 506
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSelection()I
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    const-string v3, "getView() - position %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 251
    .local v1, "convertView":Landroid/view/View;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 252
    .local v2, "itemBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 253
    const-string v3, "data_xml_layout"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->getConvertView(I)Landroid/view/View;

    move-result-object v1

    .line 257
    :cond_1
    if-nez v1, :cond_4

    .line 258
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_3

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    invoke-direct {p0, v3, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 261
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    invoke-virtual {v3, v4, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mEmptyDefaultView:Landroid/view/View;

    .line 272
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setLeft(I)V

    .line 273
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTop(I)V

    .line 274
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setRight(I)V

    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBottom(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-object v1

    .line 266
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 267
    .local v0, "b":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    const-string v4, "layout_data"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->updateLayout(Landroid/view/View;[Landroid/os/Parcelable;)V

    .line 269
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mInflater:Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {v3, v1, p2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;Landroid/view/ViewGroup;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "itemBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isActiveWindowInvalid()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 511
    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v9, v9, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v9, v9, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    if-nez v9, :cond_4

    move v3, v7

    .line 513
    .local v3, "isActiveWindowNotYetSet":Z
    :goto_0
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v9, v9, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    if-nez v9, :cond_5

    move v1, v7

    .line 514
    .local v1, "isActiveWindowAtTop":Z
    :goto_1
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v9, v9, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    iget v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_6

    move v0, v7

    .line 516
    .local v0, "isActiveWindowAtBottom":Z
    :goto_2
    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v10, v10, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v10, v10, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    if-le v9, v10, :cond_7

    :cond_0
    move v6, v7

    .line 519
    .local v6, "isSelectionOutsideActiveWindow":Z
    :goto_3
    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v10, v10, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mMaxVisibleItems:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_8

    move v5, v7

    .line 521
    .local v5, "isSelectionCloseTopEdge":Z
    :goto_4
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v9, v9, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    iget v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mMaxVisibleItems:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v9, v10, :cond_9

    move v4, v7

    .line 524
    .local v4, "isSelectionCloseBottomEdge":Z
    :goto_5
    if-nez v3, :cond_2

    if-nez v6, :cond_2

    if-eqz v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v4, :cond_a

    if-nez v0, :cond_a

    :cond_2
    move v2, v7

    .line 529
    .local v2, "isActiveWindowInvalid":Z
    :goto_6
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 530
    const-string v9, "mMaxVisibleItems: %d"

    new-array v10, v7, [Ljava/lang/Object;

    iget v11, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mMaxVisibleItems:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    const-string v9, "isActiveWindowNotYetSet: %b"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    const-string v9, "isActiveWindowAtTop: %b"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    const-string v9, "isActiveWindowAtBottom: %b"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    const-string v9, "isSelectionOutsideActiveWindow: %b"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    const-string v9, "isSelectionCloseTopEdge: %b"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    const-string v9, "isSelectionCloseBottomEdge: %b"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    const-string v9, "isWindowInvalid: %b"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    :cond_3
    return v2

    .end local v0    # "isActiveWindowAtBottom":Z
    .end local v1    # "isActiveWindowAtTop":Z
    .end local v2    # "isActiveWindowInvalid":Z
    .end local v3    # "isActiveWindowNotYetSet":Z
    .end local v4    # "isSelectionCloseBottomEdge":Z
    .end local v5    # "isSelectionCloseTopEdge":Z
    .end local v6    # "isSelectionOutsideActiveWindow":Z
    :cond_4
    move v3, v8

    .line 511
    goto/16 :goto_0

    .restart local v3    # "isActiveWindowNotYetSet":Z
    :cond_5
    move v1, v8

    .line 513
    goto/16 :goto_1

    .restart local v1    # "isActiveWindowAtTop":Z
    :cond_6
    move v0, v8

    .line 514
    goto/16 :goto_2

    .restart local v0    # "isActiveWindowAtBottom":Z
    :cond_7
    move v6, v8

    .line 516
    goto/16 :goto_3

    .restart local v6    # "isSelectionOutsideActiveWindow":Z
    :cond_8
    move v5, v8

    .line 519
    goto/16 :goto_4

    .restart local v5    # "isSelectionCloseTopEdge":Z
    :cond_9
    move v4, v8

    .line 521
    goto/16 :goto_5

    .restart local v4    # "isSelectionCloseBottomEdge":Z
    :cond_a
    move v2, v8

    .line 524
    goto/16 :goto_6
.end method

.method public declared-synchronized isActiveWindowMissingAllData()Z
    .locals 2

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v0, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    if-gt v0, v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    const/4 v1, 0x0

    .line 494
    :goto_1
    monitor-exit p0

    return v1

    .line 489
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 489
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isActiveWindowMissingData()Z
    .locals 2

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v0, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    if-gt v0, v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 482
    const/4 v1, 0x1

    .line 485
    :goto_1
    monitor-exit p0

    return v1

    .line 480
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 480
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isBundleEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "one"    # Landroid/os/Bundle;
    .param p2, "two"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 170
    if-ne p1, p2, :cond_0

    move v5, v7

    .line 198
    :goto_0
    return v5

    .line 172
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v5, v8

    .line 173
    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    move v5, v8

    .line 177
    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 183
    .local v2, "setOne":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, "valueOne":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 186
    .local v4, "valueTwo":Ljava/lang/Object;
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_5

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_5

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->isBundleEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v8

    .line 188
    goto :goto_0

    .line 190
    :cond_5
    if-nez v3, :cond_7

    .line 191
    if-nez v4, :cond_6

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_6
    move v5, v8

    .line 192
    goto :goto_0

    .line 194
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v8

    .line 195
    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "valueOne":Ljava/lang/Object;
    .end local v4    # "valueTwo":Ljava/lang/Object;
    :cond_8
    move v5, v7

    .line 198
    goto :goto_0
.end method

.method public declared-synchronized requestMissingItem()Z
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItemInActiveWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestNearbyItem()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestNearbyItem()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 374
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v4, v4, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 376
    .local v1, "mMinNearbyItemPosition":I
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v4, v4, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 379
    .local v0, "mMaxNearbyItemPosition":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v3, v3, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    invoke-direct {p0, v3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItemInInRangeForwards(II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mActiveWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    iget v3, v3, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    invoke-direct {p0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->requestMissingItemInInRangeBackwards(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    monitor-exit p0

    return v2

    .line 374
    .end local v0    # "mMaxNearbyItemPosition":I
    .end local v1    # "mMinNearbyItemPosition":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setSelection(ILcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;)V
    .locals 1
    .param p1, "absolutePosition"    # I
    .param p2, "listWindow"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->setSelection(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSelection(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    sub-int/2addr v3, p1

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mLastChangeDirection:F

    .line 389
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 391
    .local v0, "newSelection":I
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    if-eq v3, v0, :cond_0

    .line 392
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    .line 393
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->onSelectionChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :goto_0
    monitor-exit p0

    return v1

    .line 396
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Skipped setting the selection, same as before, %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mSelectedPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v2

    .line 398
    goto :goto_0

    .line 388
    .end local v0    # "newSelection":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSelectionFromExtension(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->setSelection(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateItem(Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "item"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    monitor-enter p0

    :try_start_0
    const-string v6, "layout_reference"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 134
    .local v1, "layoutReference":I
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getId()I

    move-result v6

    if-eq v1, v6, :cond_1

    .line 135
    const-string v5, "Directed to an incorrect layout, %d, this=%d."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 139
    :cond_1
    :try_start_1
    const-string v6, "data_xml_layout"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "layoutId":I
    if-lez v0, :cond_5

    .line 141
    const-string v6, "list_item_position"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 142
    .local v3, "position":I
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 143
    .local v2, "oldItem":Landroid/os/Bundle;
    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->isBundleEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 144
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    const-string v5, "Item was not changed, skipped update, pos %d."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v0    # "layoutId":I
    .end local v1    # "layoutReference":I
    .end local v2    # "oldItem":Landroid/os/Bundle;
    .end local v3    # "position":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 149
    .restart local v0    # "layoutId":I
    .restart local v1    # "layoutReference":I
    .restart local v2    # "oldItem":Landroid/os/Bundle;
    .restart local v3    # "position":I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->mListContent:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 153
    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionListAdapter;->updateDefaultView(I)V

    .line 156
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    const-string v4, "Updated list item pos %d."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v4, v5

    .line 159
    goto :goto_0

    .line 162
    .end local v2    # "oldItem":Landroid/os/Bundle;
    .end local v3    # "position":I
    :cond_5
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    const-string v5, "Specified layout was invalid, %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

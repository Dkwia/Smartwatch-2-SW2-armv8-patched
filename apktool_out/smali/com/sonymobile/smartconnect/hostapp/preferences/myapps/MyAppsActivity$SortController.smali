.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "MyAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortController"
.end annotation


# instance fields
.field private final mAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

.field private mDivPos:I

.field mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private mPos:I

.field private origHeight:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;Lcom/mobeta/android/dslv/DragSortListView;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;)V
    .locals 3
    .param p2, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;
    .param p3, "adapter"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    .prologue
    const/4 v2, 0x0

    .line 345
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    .line 346
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->origHeight:I

    .line 347
    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->setRemoveEnabled(Z)V

    .line 348
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 349
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    .line 350
    invoke-static {p3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDivPos:I

    .line 351
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mPos:I

    .line 370
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 371
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;

    .prologue
    .line 416
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 8
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "floatPoint"    # Landroid/graphics/Point;
    .param p3, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 376
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6}, Lcom/mobeta/android/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 377
    .local v1, "first":I
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6}, Lcom/mobeta/android/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 379
    .local v4, "lvDivHeight":I
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->origHeight:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->origHeight:I

    .line 383
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDivPos:I

    .line 384
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDivPos:I

    sub-int/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, "div":Landroid/view/View;
    iget v6, p3, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_1

    .line 387
    iget v6, p3, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v7}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v5, v6

    .line 388
    .local v5, "scale":F
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v6}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x5

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 390
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->origHeight:I

    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->origHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 391
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "scale":F
    :cond_1
    if-eqz v0, :cond_2

    .line 395
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mPos:I

    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDivPos:I

    if-le v6, v7, :cond_3

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int v2, v6, v4

    .line 399
    .local v2, "limit":I
    iget v6, p2, Landroid/graphics/Point;->y:I

    if-ge v6, v2, :cond_2

    .line 400
    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 411
    .end local v2    # "limit":I
    :cond_2
    :goto_0
    return-void

    .line 405
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v2, v6, v7

    .line 406
    .restart local v2    # "limit":I
    iget v6, p2, Landroid/graphics/Point;->y:I

    if-le v6, v2, :cond_2

    .line 407
    iput v2, p2, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/mobeta/android/dslv/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    .line 356
    .local v0, "res":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDivPos:I

    .line 358
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->mDivPos:I

    if-ne v0, v2, :cond_0

    .line 359
    const/4 v0, -0x1

    .line 363
    .end local v0    # "res":I
    :goto_0
    return v0

    .line 362
    .restart local v0    # "res":I
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobeta/android/dslv/DragSortListView;->getWidth()I

    move-result v1

    .line 363
    .local v1, "width":I
    goto :goto_0
.end method

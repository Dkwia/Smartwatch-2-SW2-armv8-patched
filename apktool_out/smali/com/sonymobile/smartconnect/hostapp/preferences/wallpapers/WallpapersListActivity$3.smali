.class Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;
.super Ljava/lang/Object;
.source "WallpapersListActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteMarkedItems()V
    .locals 7

    .prologue
    .line 474
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 475
    .local v1, "checkState":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_0

    .line 476
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    .line 491
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$502(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 482
    .local v0, "checkSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 483
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 484
    .local v3, "pos":I
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 485
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 486
    .local v4, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    .end local v4    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 490
    .end local v3    # "pos":I
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->showConfirmDeleteDialog(I)V

    goto :goto_0
.end method

.method public onMarkAll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 450
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 451
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 452
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 453
    .local v2, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v3

    if-nez v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->setEnabledPosition(I)V

    .line 458
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->onUpdateActionMenu()V

    .line 459
    return-void
.end method

.method public onNotifyActionModeDestroy()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$700(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)V

    .line 514
    return-void
.end method

.method public onUnMarkAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 463
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 464
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 465
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->setEnabledPosition(I)V

    .line 468
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->onUpdateActionMenu()V

    .line 469
    return-void
.end method

.method public onUpdateActionMenu()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 495
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 496
    .local v2, "count":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    .line 497
    .local v1, "checkedCount":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;->getActionMenu()Landroid/view/Menu;

    move-result-object v0

    .line 498
    .local v0, "actionBarMenu":Landroid/view/Menu;
    const v4, 0x7f0d007f

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 499
    .local v3, "deleteMenu":Landroid/view/MenuItem;
    if-lt v1, v5, :cond_0

    move v4, v5

    :goto_0
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 501
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    move-result-object v4

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    const v8, 0x7f0700bb

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->setSpinnerLabel(Ljava/lang/String;)V

    .line 503
    if-eq v1, v2, :cond_1

    .line 504
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->setEnabledPosition(I)V

    .line 508
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;->notifyDataSetChanged()V

    .line 509
    return-void

    :cond_0
    move v4, v6

    .line 499
    goto :goto_0

    .line 506
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->setEnabledPosition(I)V

    goto :goto_1
.end method

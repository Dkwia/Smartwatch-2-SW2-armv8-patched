.class Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WallpapersListActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
        ">;",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p3, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .line 521
    const v0, 0x7f03001a

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 522
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->context:Landroid/app/Activity;

    .line 523
    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 537
    move-object v5, p2

    .line 538
    .local v5, "itemView":Landroid/view/View;
    if-nez v5, :cond_0

    .line 539
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 540
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f03001a

    const/4 v11, 0x0

    invoke-virtual {v3, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 541
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;

    invoke-direct {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;-><init>()V

    .line 542
    .local v8, "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;
    const v10, 0x7f0d0061

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 543
    const v10, 0x7f0d0062

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->description:Landroid/widget/TextView;

    .line 544
    const v10, 0x7f0d005a

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    .line 546
    const v10, 0x7f0d005e

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selected:Landroid/widget/RadioButton;

    .line 548
    const v10, 0x7f0d005c

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    .line 550
    const v10, 0x7f0d005f

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckedTextView;

    iput-object v10, v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    .line 552
    const v10, 0x7f0d005b

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, v8, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selectLayout:Landroid/view/ViewGroup;

    .line 554
    invoke-virtual {v5, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 557
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;

    .line 558
    .local v1, "holder":Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 560
    .local v9, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getThumbnailImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 561
    .local v2, "imageUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 562
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 566
    :goto_0
    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isSelected()Z

    move-result v4

    .line 567
    .local v4, "isCurrentlySelected":Z
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selected:Landroid/widget/RadioButton;

    invoke-virtual {v10, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 569
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$800(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x7

    if-gt v10, v11, :cond_3

    .line 570
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selected:Landroid/widget/RadioButton;

    invoke-virtual {v10}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 572
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 573
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selected:Landroid/widget/RadioButton;

    invoke-virtual {v10, v7}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    :goto_1
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;

    invoke-direct {v11, p0, v9}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/view/ActionMode;

    move-result-object v10

    if-eqz v10, :cond_5

    const/4 v6, 0x1

    .line 595
    .local v6, "multipleSelect":Z
    :goto_2
    if-eqz v6, :cond_7

    .line 596
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selectLayout:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 597
    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v10

    if-nez v10, :cond_6

    .line 598
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 607
    :goto_3
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 608
    .local v0, "checkedItems":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_1

    .line 609
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 612
    :cond_1
    return-object v5

    .line 564
    .end local v0    # "checkedItems":Landroid/util/SparseBooleanArray;
    .end local v4    # "isCurrentlySelected":Z
    .end local v6    # "multipleSelect":Z
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 575
    .restart local v4    # "isCurrentlySelected":Z
    :cond_3
    iget-object v11, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x4

    :goto_4
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selected:Landroid/widget/RadioButton;

    invoke-virtual {v10}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 577
    .restart local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x0

    const v11, 0x7f0d005d

    invoke-virtual {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 578
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selected:Landroid/widget/RadioButton;

    invoke-virtual {v10, v7}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 575
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 594
    .restart local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 600
    .restart local v6    # "multipleSelect":Z
    :cond_6
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_3

    .line 603
    :cond_7
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->selectLayout:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 604
    iget-object v10, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 528
    .local v0, "multipleSelect":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 531
    :goto_1
    return v1

    .end local v0    # "multipleSelect":Z
    :cond_0
    move v0, v2

    .line 527
    goto :goto_0

    .line 531
    .restart local v0    # "multipleSelect":Z
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_1
.end method

.method public onCommit()V
    .locals 3

    .prologue
    .line 617
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$800(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->access$1202(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Z)Z

    .line 618
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->invalidateOptionsMenu()V

    .line 619
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 625
    return-void

    .line 617
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WatchFaceListActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchFaceAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
        ">;",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field protected mMode:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p3, "watchFaces":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .line 467
    const v0, 0x7f03001b

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 468
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->context:Landroid/app/Activity;

    .line 469
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 483
    move-object/from16 v8, p2

    .line 484
    .local v8, "itemView":Landroid/view/View;
    if-nez v8, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 486
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f03001b

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 487
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;

    invoke-direct {v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;-><init>()V

    .line 488
    .local v10, "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;
    const v12, 0x7f0d0061

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v10, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 489
    const v12, 0x7f0d0062

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v10, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->description:Landroid/widget/TextView;

    .line 490
    const v12, 0x7f0d005a

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v10, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    .line 492
    const v12, 0x7f0d005c

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v10, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    .line 494
    const v12, 0x7f0d005f

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckedTextView;

    iput-object v12, v10, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    .line 496
    const v12, 0x7f0d005b

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v10, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->selectLayout:Landroid/view/ViewGroup;

    .line 498
    invoke-virtual {v8, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 501
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;

    .line 502
    .local v4, "holder":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 503
    .local v11, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getLastEditedTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_2

    .line 505
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$1100()Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getLastEditedTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "dateString":Ljava/lang/String;
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    .end local v3    # "dateString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getThumbnailImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 512
    .local v5, "imageUri":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 513
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 517
    :goto_1
    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v7

    .line 519
    .local v7, "isCurrentlySelected":Z
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 521
    iget-object v13, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x4

    :goto_2
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 522
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 523
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->edit:Landroid/widget/ImageView;

    new-instance v13, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/view/ActionMode;

    move-result-object v12

    if-eqz v12, :cond_5

    const/4 v9, 0x1

    .line 532
    .local v9, "multipleSelect":Z
    :goto_3
    if-eqz v9, :cond_7

    .line 533
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->selectLayout:Landroid/view/ViewGroup;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 534
    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v12

    if-nez v12, :cond_6

    .line 535
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 544
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/ListView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 545
    .local v2, "checkedItems":Landroid/util/SparseBooleanArray;
    if-eqz v2, :cond_1

    .line 546
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 549
    :cond_1
    return-object v8

    .line 509
    .end local v2    # "checkedItems":Landroid/util/SparseBooleanArray;
    .end local v5    # "imageUri":Landroid/net/Uri;
    .end local v7    # "isCurrentlySelected":Z
    .end local v9    # "multipleSelect":Z
    :cond_2
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 515
    .restart local v5    # "imageUri":Landroid/net/Uri;
    :cond_3
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 521
    .restart local v7    # "isCurrentlySelected":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 531
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 537
    .restart local v9    # "multipleSelect":Z
    :cond_6
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_4

    .line 540
    :cond_7
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->selectLayout:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 541
    iget-object v12, v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;->checkBox:Landroid/widget/CheckedTextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 474
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 475
    .local v0, "multipleSelect":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 478
    :goto_1
    return v1

    .end local v0    # "multipleSelect":Z
    :cond_0
    move v0, v2

    .line 474
    goto :goto_0

    .line 478
    .restart local v0    # "multipleSelect":Z
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_1
.end method

.method public onCommit()V
    .locals 3

    .prologue
    .line 554
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$1400(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$1302(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Z)Z

    .line 555
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTemporaryCommit()V
    .locals 0

    .prologue
    .line 568
    return-void
.end method

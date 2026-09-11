.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyAppsActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppsDragSortListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
        ">;",
        "Lcom/mobeta/android/dslv/DragSortListView$DropListener;"
    }
.end annotation


# static fields
.field private static final APPS_PER_SCREEN:I = 0x6

.field private static final TYPE_DATA:I = 0x2

.field private static final TYPE_DATA_DISABLED:I = 0x3

.field private static final TYPE_DATA_NONEHOMESCREEN:I = 0x5

.field private static final TYPE_DIVIDER:I = 0x0

.field private static final TYPE_DIVIDER_DISABLED:I = 0x1

.field private static final TYPE_DIVIDER_NONEHOMESCREEN:I = 0x4


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;Landroid/app/Activity;)V
    .locals 2
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    .line 441
    const v0, 0x7f03000a

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 442
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 443
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->dataPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getDisabledDividerPosition()I

    move-result v0

    return v0
.end method

.method private dataPosition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 646
    const/4 v4, 0x1

    if-gt p1, v4, :cond_0

    .line 647
    const/4 v0, 0x0

    .line 665
    :goto_0
    return v0

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getDisabledDividerPosition()I

    move-result v1

    .line 652
    .local v1, "disabledDIviderPosition":I
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getNoneHomeScreenAppsDividerPosition()I

    move-result v3

    .line 653
    .local v3, "noneHomeScreenAppsDividerPosition":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsListSize()I

    move-result v2

    .line 655
    .local v2, "enabledAppsListSize":I
    if-gt p1, v1, :cond_1

    .line 656
    add-int/lit8 v4, p1, -0x1

    div-int/lit8 v5, p1, 0x7

    sub-int v0, v4, v5

    .local v0, "dataPosition":I
    goto :goto_0

    .line 657
    .end local v0    # "dataPosition":I
    :cond_1
    if-gt p1, v3, :cond_2

    .line 658
    sub-int v4, p1, v1

    add-int/2addr v4, v2

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "dataPosition":I
    goto :goto_0

    .line 661
    .end local v0    # "dataPosition":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsListSize()I

    move-result v4

    add-int/2addr v4, v2

    sub-int v5, p1, v3

    add-int/2addr v4, v5

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "dataPosition":I
    goto :goto_0
.end method

.method private getAppIcon(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "app"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getType()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->NATIVE:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    if-ne v3, v4, :cond_0

    .line 555
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getHostAppIconUri(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 558
    .local v2, "imageResource":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 568
    .end local v2    # "imageResource":I
    :goto_0
    return-object v0

    .line 560
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->decodeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 564
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getDisabledDividerPosition()I
    .locals 6

    .prologue
    .line 678
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsListSize()I

    move-result v3

    int-to-double v0, v3

    .line 679
    .local v0, "appListSize":D
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    add-double/2addr v4, v0

    double-to-int v2, v4

    .line 681
    .local v2, "position":I
    return v2
.end method

.method private getNoneHomeScreenAppsDividerPosition()I
    .locals 3

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getDisabledDividerPosition()I

    move-result v1

    .line 670
    .local v1, "position":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsListSize()I

    move-result v0

    .line 671
    .local v0, "disabledAppsListSize":I
    if-lez v0, :cond_0

    .line 672
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    .line 674
    :cond_0
    return v1
.end method

.method private showDescription(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;)V
    .locals 2
    .param p1, "app"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .param p2, "holder"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getType()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->NATIVE:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    iget-object v0, p2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v0, p2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public decodeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 547
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 548
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public drop(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 447
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->dataPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 448
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 449
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->dataPosition(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->dataPosition(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->dataPosition(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 460
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateEnabledAppsList(Z)V

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->saveAppOrder()V

    .line 458
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->commit()V

    .line 459
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 10

    .prologue
    .line 578
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getEnabledAppsListSize()I

    move-result v5

    int-to-double v0, v5

    .line 579
    .local v0, "appListSize":D
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsListSize()I

    move-result v3

    .line 580
    .local v3, "disabledAppsListSize":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getNoneHomeScreenExtensionsListSize()I

    move-result v4

    .line 582
    .local v4, "noneHomeScreenExtensionsListSize":I
    int-to-double v6, v3

    add-double/2addr v6, v0

    int-to-double v8, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v2, v6

    .line 586
    .local v2, "count":I
    if-lez v3, :cond_0

    .line 587
    add-int/lit8 v2, v2, 0x1

    .line 590
    :cond_0
    if-lez v4, :cond_1

    .line 591
    add-int/lit8 v2, v2, 0x1

    .line 593
    :cond_1
    return v2
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getNoneHomeScreenAppsDividerPosition()I

    move-result v1

    .line 624
    .local v1, "noneHomeScreenAppsDividerPosition":I
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getDisabledDividerPosition()I

    move-result v0

    .line 626
    .local v0, "disabledDIviderPosition":I
    if-ge p1, v0, :cond_1

    .line 627
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    const/4 v2, 0x2

    .line 641
    :goto_0
    return v2

    .line 630
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 632
    :cond_1
    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getDisabledAppsListSize()I

    move-result v2

    if-lez v2, :cond_2

    .line 634
    const/4 v2, 0x1

    goto :goto_0

    .line 635
    :cond_2
    if-ne p1, v1, :cond_3

    .line 636
    const/4 v2, 0x4

    goto :goto_0

    .line 637
    :cond_3
    if-le p1, v0, :cond_4

    if-ge p1, v1, :cond_4

    .line 639
    const/4 v2, 0x3

    goto :goto_0

    .line 641
    :cond_4
    const/4 v2, 0x5

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getItemViewType(I)I

    move-result v6

    .line 465
    .local v6, "type":I
    const/4 v3, 0x0

    .line 466
    .local v3, "itemView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->dataPosition(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 468
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    if-eqz p2, :cond_0

    .line 469
    move-object v3, p2

    .line 502
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;

    .line 504
    .local v2, "holder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    .line 505
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->showDescription(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getAppIcon(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 508
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v8

    if-nez v8, :cond_4

    .line 512
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v3

    .line 470
    .end local v2    # "holder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    :cond_0
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 471
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03000a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 473
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;

    invoke-direct {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;-><init>()V

    .line 474
    .local v7, "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    const v8, 0x7f0d0042

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 475
    const v8, 0x7f0d0043

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->description:Landroid/widget/TextView;

    .line 477
    const v8, 0x7f0d0041

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->image:Landroid/widget/ImageView;

    .line 478
    const v8, 0x7f0d0004

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    .line 481
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 482
    .end local v7    # "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    :cond_1
    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    const/4 v8, 0x5

    if-ne v6, v8, :cond_3

    .line 483
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030017

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 485
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;

    invoke-direct {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;-><init>()V

    .line 486
    .restart local v7    # "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    const v8, 0x7f0d0055

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->name:Landroid/widget/TextView;

    .line 487
    const v8, 0x7f0d0056

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->description:Landroid/widget/TextView;

    .line 489
    const v8, 0x7f0d0054

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->image:Landroid/widget/ImageView;

    .line 491
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 493
    .end local v7    # "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03002c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 495
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;

    invoke-direct {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;-><init>()V

    .line 496
    .restart local v7    # "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    const v8, 0x7f0d0075

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->sectionLabel:Landroid/widget/TextView;

    .line 499
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 514
    .end local v7    # "viewHolder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "holder":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;
    :cond_4
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getIsEnabled()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 515
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 517
    :cond_5
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->dragHandle:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 520
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v8, 0x3

    if-eq v6, v8, :cond_7

    const/4 v8, 0x5

    if-ne v6, v8, :cond_8

    .line 521
    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->showDescription(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;)V

    .line 522
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getAppIcon(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 524
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 526
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v8, 0x4

    if-ne v6, v8, :cond_9

    .line 527
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->sectionLabel:Landroid/widget/TextView;

    const v9, 0x7f0700e2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 528
    :cond_9
    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    .line 529
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->sectionLabel:Landroid/widget/TextView;

    const v9, 0x7f0700e1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 532
    :cond_a
    div-int/lit8 v8, p1, 0x7

    add-int/lit8 v5, v8, 0x1

    .line 533
    .local v5, "sectionNumber":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700e0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "screenLabel":Ljava/lang/String;
    iget-object v8, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;->sectionLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 603
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getNoneHomeScreenAppsDividerPosition()I

    move-result v1

    .line 604
    .local v1, "noneHomeScreenAppsDividerPosition":I
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->getDisabledDividerPosition()I

    move-result v0

    .line 606
    .local v0, "disabledDIviderPosition":I
    if-ge p1, v0, :cond_2

    .line 607
    rem-int/lit8 v4, p1, 0x7

    if-eqz v4, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 607
    goto :goto_0

    .line 608
    :cond_2
    if-eq p1, v0, :cond_3

    if-ne p1, v1, :cond_0

    :cond_3
    move v2, v3

    .line 610
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 573
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 574
    return-void
.end method

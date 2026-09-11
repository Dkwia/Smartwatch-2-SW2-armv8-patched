.class public Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;
.super Landroid/app/Activity;
.source "MyAppsActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;,
        Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$ViewHolder;,
        Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;
    }
.end annotation


# static fields
.field private static final FIRST_SHOW_PREFERENCE_KEY:Ljava/lang/String; = "first_show_preference_key"

.field private static final TAG:Ljava/lang/String; = "MyAppsActivity"


# instance fields
.field private mAppsAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

.field private mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

.field private mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

.field private mNavigationAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;

.field private mSortController:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;

.field private mSpinner:Landroid/widget/Spinner;

.field private myAlertDialog:Landroid/app/AlertDialog;

.field private navSpinnerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mAppsAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/mobeta/android/dslv/DragSortListView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mNavigationAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;

    return-object v0
.end method

.method private getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 335
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected doAlphabeticalSort()V
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->doAlphabeticalSort()V

    .line 213
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 214
    return-void
.end method

.method protected doCustomSort()V
    .locals 2

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->doCustomSort()V

    .line 218
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isFirstShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->showMessage()V

    .line 222
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 81
    .local v5, "tabletSize":Z
    if-nez v5, :cond_0

    .line 83
    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->setRequestedOrientation(I)V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->setListener(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;)V

    .line 88
    const v6, 0x7f030022

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->setContentView(I)V

    .line 89
    const v6, 0x7f0d0071

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 93
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    const v6, 0x7f0700da

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(I)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->navSpinnerItems:Ljava/util/ArrayList;

    .line 98
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700dc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f020094

    const v8, 0x7f0d0005

    invoke-direct {v1, v6, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;-><init>(Ljava/lang/String;II)V

    .line 102
    .local v1, "alphabeticalSort":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f020095

    const v8, 0x7f0d0006

    invoke-direct {v2, v6, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;-><init>(Ljava/lang/String;II)V

    .line 105
    .local v2, "customSort":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->navSpinnerItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->navSpinnerItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->navSpinnerItems:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mNavigationAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;

    .line 111
    new-instance v6, Landroid/widget/Spinner;

    const v7, 0x10102d7

    invoke-direct {v6, p0, v12, v7}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSpinner:Landroid/widget/Spinner;

    .line 113
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mNavigationAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v10, v9}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 116
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isFirstShow()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->showMessage()V

    .line 123
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;

    invoke-direct {v7, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f030000

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 156
    .local v3, "listNavLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 159
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 163
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 165
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 167
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    if-nez v6, :cond_2

    .line 168
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-direct {v6, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    .line 170
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v6, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onCreate(Landroid/os/Bundle;)V

    .line 172
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    invoke-direct {v6, p0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mAppsAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    .line 173
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mAppsAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    invoke-virtual {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mAppsAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    invoke-virtual {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 177
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mAppsAdapter:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    invoke-direct {v6, p0, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;Lcom/mobeta/android/dslv/DragSortListView;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;)V

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSortController:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;

    .line 178
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSortController:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;

    invoke-virtual {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 179
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSortController:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$SortController;

    invoke-virtual {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mMyAppsList:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$2;

    invoke-direct {v7, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V

    invoke-virtual {v6, v7}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    return-void

    .line 120
    .end local v3    # "listNavLayout":Landroid/widget/LinearLayout;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v9, v9}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onDestroy()V

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getMyAppsStorage()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->setListener(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;)V

    .line 319
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 229
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    const/4 v1, 0x1

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onPause()V

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 331
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 324
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->mDialogManager:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->onResume()V

    .line 325
    return-void
.end method

.method public showMessage()V
    .locals 5

    .prologue
    .line 241
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 247
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f03002b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 249
    const v3, 0x7f0700d1

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$3;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->myAlertDialog:Landroid/app/AlertDialog;

    .line 263
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->myAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 264
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->myAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$4;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public updateAdapter()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public updateSpinner()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$5;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

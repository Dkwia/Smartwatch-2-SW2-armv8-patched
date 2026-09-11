.class public Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;
.super Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;
.source "ExtensionsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$CategoryAlertDialog;
    }
.end annotation


# static fields
.field private static final CATEGORY_POSITION:Ljava/lang/String; = "CategoryPosition"

.field private static final CATEGORY_SELECTION:Ljava/lang/String; = "categorySelection"

.field private static final SHOW_CATEGORY_DIALOG:Ljava/lang/String; = "showCategoryDialog"


# instance fields
.field private mCategories:[Ljava/lang/String;

.field private mCategoriesNwmn:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryDialog:Landroid/app/AlertDialog;

.field private mCategoryItemSelected:I

.field private mCategoryLabels:[Ljava/lang/String;

.field private mCategoryVisiblePosition:I

.field private mListView:Landroid/widget/ListView;

.field private mShowCategoryDialog:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    .line 46
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryLabels:[Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategories:[Ljava/lang/String;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    .prologue
    .line 30
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryItemSelected:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryItemSelected:I

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategories:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    return-object p1
.end method

.method private createCategoryDialog()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0700e5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 127
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 128
    .local v3, "li":Landroid/view/LayoutInflater;
    const v4, 0x7f03002a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 129
    .local v2, "dialogView":Landroid/view/View;
    const v4, 0x7f0d0073

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    .line 130
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryLabels:[Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0a0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategories:[Ljava/lang/String;

    .line 134
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x109000f

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryLabels:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoriesNwmn:Landroid/widget/ArrayAdapter;

    .line 136
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoriesNwmn:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 138
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryItemSelected:I

    invoke-virtual {v4, v5, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 140
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$1;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 147
    const v4, 0x7f07004b

    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    const v4, 0x7f07004c

    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$3;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 165
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$4;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 172
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v0, "showCategoryDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    .line 59
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "CategoryPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryVisiblePosition:I

    .line 61
    const-string v0, "categorySelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryItemSelected:I

    .line 64
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    .line 88
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->onDestroy()V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->finish()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->onPause()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->createCategoryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    .line 70
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 71
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryVisiblePosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryItemSelected:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 74
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->onResume()V

    .line 75
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const-string v0, "showCategoryDialog"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "mCategoryDialog is null!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 97
    :cond_0
    const-string v0, "CategoryPosition"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v0, "categorySelection"

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    :cond_1
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public searchExtensions()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->createCategoryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    .line 120
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mCategoryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 121
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->mShowCategoryDialog:Ljava/lang/Boolean;

    .line 122
    return-void
.end method

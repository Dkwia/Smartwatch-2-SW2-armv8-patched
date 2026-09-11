.class public Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;
.super Landroid/widget/BaseAdapter;
.source "TitleNavigationAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private imgIcon:Landroid/widget/ImageView;

.field private final spinnerNavItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;",
            ">;"
        }
    .end annotation
.end field

.field private txtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "spinnerNavItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->spinnerNavItem:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->spinnerNavItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    .end local v0    # "mInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v1, 0x7f0d0057

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->imgIcon:Landroid/widget/ImageView;

    .line 74
    const v1, 0x7f0d0058

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->txtTitle:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->txtTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->spinnerNavItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->imgIcon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->spinnerNavItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    .end local v0    # "mInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v1, 0x7f0d0057

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->imgIcon:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f0d0058

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->txtTitle:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->imgIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->spinnerNavItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->getIcon()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->txtTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    return-void
.end method

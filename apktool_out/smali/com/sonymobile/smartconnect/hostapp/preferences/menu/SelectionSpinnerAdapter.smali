.class public Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;
.super Ljava/lang/Object;
.source "SelectionSpinnerAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;
.implements Landroid/widget/ListAdapter;


# instance fields
.field protected layoutInflater:Landroid/view/LayoutInflater;

.field protected mAdapter:Landroid/widget/SpinnerAdapter;

.field protected mContext:Landroid/content/Context;

.field private mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

.field protected mLabelLayout:I


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;ILandroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;)V
    .locals 1
    .param p1, "spinnerAdapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "labelLayout"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "data"    # Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 24
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    .line 26
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mLabelLayout:I

    .line 27
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->getEnabledPosition()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->getEnabledPosition()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 44
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 46
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    move-object v1, v0

    .line 52
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 54
    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mLabelLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    .line 34
    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->getSpinnerLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 100
    return-void
.end method

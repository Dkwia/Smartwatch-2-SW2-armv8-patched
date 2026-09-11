.class public Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;
.super Landroid/widget/Spinner;
.source "SelectionSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "mode"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v6, 0x1

    .line 40
    .local v6, "sameSelected":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 42
    if-eqz v6, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 46
    :cond_0
    return-void

    .line 39
    .end local v6    # "sameSelected":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setSelection(IZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v6, 0x1

    .line 29
    .local v6, "sameSelected":Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 31
    if-eqz v6, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinner;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 35
    :cond_0
    return-void

    .line 28
    .end local v6    # "sameSelected":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

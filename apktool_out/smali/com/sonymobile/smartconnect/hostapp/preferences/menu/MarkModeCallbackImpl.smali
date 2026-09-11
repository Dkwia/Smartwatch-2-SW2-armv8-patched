.class public Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;
.super Ljava/lang/Object;
.source "MarkModeCallbackImpl.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;


# instance fields
.field public mActionMenu:Landroid/view/Menu;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public mCustomView:Landroid/view/View;

.field private mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

.field private mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field protected spinnerInited:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private initSelectionMenu()V
    .locals 7

    .prologue
    const v6, 0x7f0a0002

    const v4, 0x1090009

    const v5, 0x7f030021

    .line 98
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mCustomView:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mCustomView:Landroid/view/View;

    const v2, 0x7f0d002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 102
    .local v0, "spinner":Landroid/widget/Spinner;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 104
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 108
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 110
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->setEnabledPosition(I)V

    .line 112
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionSpinnerAdapter;-><init>(Landroid/widget/SpinnerAdapter;ILandroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 115
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMultiSelectionMode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getActionMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mActionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 147
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return v1

    .line 73
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 75
    .local v0, "id":I
    const v2, 0x7f0d007f

    if-ne v0, v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    invoke-interface {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;->onDeleteMarkedItems()V

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 52
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 53
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mActionMenu:Landroid/view/Menu;

    .line 56
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->initSelectionMenu()V

    .line 57
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;->onNotifyActionModeDestroy()V

    .line 87
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    .line 89
    :cond_0
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mActionMenu:Landroid/view/Menu;

    .line 90
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;->onUpdateActionMenu()V

    .line 65
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setMarkCallBackListener(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->mMarkListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    .line 95
    return-void
.end method

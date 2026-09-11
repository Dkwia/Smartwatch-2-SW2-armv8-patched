.class public abstract Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;
.super Landroid/app/Fragment;
.source "WidgetFragment.java"


# instance fields
.field private final alreadyAddedPresslistener:Landroid/view/View$OnClickListener;

.field private final enabledShortPresslistener:Landroid/view/View$OnClickListener;

.field longPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;

.field protected mListItemLayoutReference:I

.field protected mWidgetContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final noSpacePresslistener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 34
    const v0, 0x7f03001c

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->mListItemLayoutReference:I

    .line 35
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->enabledShortPresslistener:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->noSpacePresslistener:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->alreadyAddedPresslistener:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->longPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;

    return-void
.end method


# virtual methods
.method protected abstract getWidgets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;"
        }
    .end annotation
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 67
    const v8, 0x7f030014

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "v":Landroid/view/View;
    const v8, 0x7f0d004f

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 70
    .local v4, "widgetListView":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->getWidgets()Ljava/util/List;

    move-result-object v7

    .line 71
    .local v7, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->mWidgetContainers:Ljava/util/ArrayList;

    .line 73
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 74
    .local v2, "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    iget v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->mListItemLayoutReference:I

    invoke-virtual {p1, v8, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 75
    .local v3, "widgetLayout":Landroid/view/View;
    const v8, 0x7f0d0063

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 76
    .local v5, "widgetTextView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    const v8, 0x7f0d0053

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .line 80
    .local v6, "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    const/4 v8, 0x1

    invoke-virtual {v6, v2, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)V

    .line 81
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->longPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 82
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->enabledShortPresslistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->mWidgetContainers:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 86
    .end local v2    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v3    # "widgetLayout":Landroid/view/View;
    .end local v5    # "widgetTextView":Landroid/widget/TextView;
    .end local v6    # "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    :cond_1
    return-object v1
.end method

.method public updateWidgetValidity(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 10
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 92
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->mWidgetContainers:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 94
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->mWidgetContainers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 95
    .local v4, "widgetLayout":Landroid/view/View;
    const/4 v6, 0x1

    .line 96
    .local v6, "widgetValid":Z
    const/4 v0, 0x0

    .line 97
    .local v0, "alreadyAdded":Z
    const v8, 0x7f0d0053

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .line 98
    .local v7, "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    const v8, 0x7f0d0063

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 101
    .local v5, "widgetTextView":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->findFreePosition(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :try_end_0
    .catch Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    .line 107
    :goto_1
    invoke-virtual {v7, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->setEnabled(Z)V

    .line 108
    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v6, :cond_2

    const v8, 0x7f0b0003

    :goto_2
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 111
    .local v1, "colour":I
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .end local v1    # "colour":I
    :cond_0
    if-eqz v6, :cond_3

    .line 114
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->longPressListener:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetLongPressListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->enabledShortPresslistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;
    const/4 v6, 0x0

    .line 105
    const/4 v0, 0x1

    goto :goto_1

    .line 109
    .end local v2    # "e":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetAddedException;
    :cond_2
    const v8, 0x7f0b0002

    goto :goto_2

    .line 117
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    if-eqz v0, :cond_4

    .line 119
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->alreadyAddedPresslistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 121
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->noSpacePresslistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 126
    .end local v0    # "alreadyAdded":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "widgetLayout":Landroid/view/View;
    .end local v5    # "widgetTextView":Landroid/widget/TextView;
    .end local v6    # "widgetValid":Z
    .end local v7    # "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    :cond_5
    return-void
.end method

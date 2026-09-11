.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;
.super Landroid/app/Fragment;
.source "SelectFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v3, 0x7f030012

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "v":Landroid/view/View;
    const v3, 0x7f0d0049

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "clocksButton":Landroid/view/View;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v3, 0x7f0d004a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "widgetsButton":Landroid/view/View;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-object v1
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/ClockListFragment;
.super Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;
.source "ClockListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;-><init>()V

    .line 21
    const v0, 0x7f030016

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/ClockListFragment;->mListItemLayoutReference:I

    .line 22
    return-void
.end method

.method private getWidgetProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/ClockListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 34
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getWidgetProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getWidgets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/ClockListFragment;->getWidgetProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v0

    .line 27
    .local v0, "widgetProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->reset()V

    .line 28
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getClockWidgets()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

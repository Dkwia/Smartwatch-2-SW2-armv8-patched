.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetListFragment;
.super Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;
.source "WidgetListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;-><init>()V

    return-void
.end method

.method private getWidgetProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 29
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
    .line 21
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetListFragment;->getWidgetProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v0

    .line 22
    .local v0, "widgetProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->reset()V

    .line 23
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getNonClockWidgets()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

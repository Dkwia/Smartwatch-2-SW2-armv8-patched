.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$1;
.super Ljava/lang/Object;
.source "WidgetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 39
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    if-eqz v2, :cond_0

    .line 40
    const v2, 0x7f0d0053

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .line 41
    .local v1, "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Z

    .line 45
    .end local v1    # "widgetView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    :cond_0
    return-void
.end method

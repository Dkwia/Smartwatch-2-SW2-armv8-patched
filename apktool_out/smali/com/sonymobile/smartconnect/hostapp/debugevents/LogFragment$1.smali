.class Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$1;
.super Ljava/lang/Object;
.source "LogFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "onScroll. First: %d, Visible: %d, Total: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    add-int v3, p3, p2

    if-lt v3, p4, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->setAutoupdate(Z)V

    .line 92
    return-void

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 96
    return-void
.end method

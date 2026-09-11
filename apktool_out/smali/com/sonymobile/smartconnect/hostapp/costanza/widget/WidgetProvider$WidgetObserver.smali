.class Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;
.super Landroid/database/ContentObserver;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .line 415
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 416
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "Widget observer created!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 419
    :cond_0
    return-void
.end method

.method private notifyObservers()V
    .locals 3

    .prologue
    .line 433
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;

    .line 434
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;->onWidgetsChanged()V

    goto :goto_0

    .line 436
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 423
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "Widget change callback received!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->reset()V

    .line 429
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;->notifyObservers()V

    .line 430
    return-void
.end method

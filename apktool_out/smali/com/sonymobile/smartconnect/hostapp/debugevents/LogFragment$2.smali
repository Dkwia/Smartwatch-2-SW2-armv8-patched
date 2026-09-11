.class Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$2;
.super Landroid/database/DataSetObserver;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 123
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 127
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->access$000(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->access$100(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 130
    :cond_0
    return-void
.end method

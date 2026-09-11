.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;
.super Ljava/lang/Object;
.source "WatchFaceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 115
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$102(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 123
    .local v0, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    sget v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    const v3, 0x7f0700cd

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 144
    .end local v0    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_1
    :goto_0
    return-void

    .line 128
    .restart local v0    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_2
    sget v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    if-gt v1, v5, :cond_3

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v1

    if-ne v1, v5, :cond_3

    .line 129
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    const v3, 0x7f0700ce

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 135
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 140
    .end local v0    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_4
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 141
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 142
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.class Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$1;
.super Ljava/lang/Object;
.source "DebugCommandFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 50
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->access$000(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, "cmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->doPositiveClick(Ljava/lang/String;)V

    .line 52
    return-void
.end method

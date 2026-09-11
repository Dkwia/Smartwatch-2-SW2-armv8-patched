.class Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;
.super Ljava/lang/Object;
.source "MarkModeCallbackImpl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->initSelectionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 120
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    iget-boolean v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->spinnerInited:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->spinnerInited:Z

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    if-nez p3, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;->onMarkAll()V

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;->onUnMarkAll()V

    goto :goto_1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

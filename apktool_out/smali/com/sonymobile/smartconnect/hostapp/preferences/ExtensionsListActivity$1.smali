.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$1;
.super Ljava/lang/Object;
.source "ExtensionsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->createCategoryDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 143
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-static {v0, p3}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;->access$002(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;I)I

    .line 144
    return-void
.end method

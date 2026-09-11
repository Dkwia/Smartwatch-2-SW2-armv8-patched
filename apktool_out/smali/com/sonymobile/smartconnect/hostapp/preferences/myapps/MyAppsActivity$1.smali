.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;
.super Ljava/lang/Object;
.source "MyAppsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

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
    .line 132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;

    .line 134
    .local v0, "item":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->doAlphabeticalSort()V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->doCustomSort()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x7f0d0005
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 127
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

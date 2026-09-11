.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$2;
.super Ljava/lang/Object;
.source "MyAppsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 181
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 185
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;I)I

    move-result v2

    .line 186
    .local v2, "dataPosition":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getAppsList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 188
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getType()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->EXTENSION:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    if-ne v5, v6, :cond_0

    .line 189
    const/4 v3, 0x0

    .line 190
    .local v3, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParentPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 191
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getParent()Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v3

    .line 195
    :goto_0
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;

    invoke-direct {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;-><init>()V

    .line 197
    .local v4, "fragment":Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "configurationActivity"

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "packageName"

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v4, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;->setArguments(Landroid/os/Bundle;)V

    .line 204
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x1020002

    invoke-virtual {v5, v6, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 207
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v4    # "fragment":Lcom/sonymobile/smartconnect/hostapp/preferences/ActivityWrapperFragment;
    :cond_0
    return-void

    .line 193
    .restart local v3    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getData()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .restart local v3    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    goto :goto_0
.end method

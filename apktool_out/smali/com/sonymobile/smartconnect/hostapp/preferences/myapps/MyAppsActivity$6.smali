.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;
.super Ljava/lang/Object;
.source "MyAppsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->updateAdapter()V
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
    .line 295
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$MyAppsDragSortListAdapter;->notifyDataSetChanged()V

    .line 305
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/TitleNavigationAdapter;->notifyDataSetChanged()V

    .line 306
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$6;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/mobeta/android/dslv/DragSortListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    goto :goto_0
.end method

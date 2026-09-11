.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$5;
.super Ljava/lang/Object;
.source "MyAppsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->updateSpinner()V
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
    .line 281
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0
.end method

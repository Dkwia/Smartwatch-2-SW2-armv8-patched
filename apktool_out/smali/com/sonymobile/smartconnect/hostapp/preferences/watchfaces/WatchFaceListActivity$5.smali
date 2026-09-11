.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;
.super Ljava/lang/Object;
.source "WatchFaceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->prepareAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

.field final synthetic val$imageSwitcher:Landroid/widget/ImageSwitcher;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Landroid/widget/ImageSwitcher;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->val$imageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->val$imageSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$500()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 217
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->val$imageSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/widget/ImageSwitcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)I

    move-result v0

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$500()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$602(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;I)I

    .line 223
    :goto_1
    return-void

    .line 217
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->access$608(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)I

    goto :goto_1
.end method

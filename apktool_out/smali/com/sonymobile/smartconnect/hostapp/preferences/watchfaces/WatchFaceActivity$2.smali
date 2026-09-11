.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;
.super Ljava/lang/Object;
.source "WatchFaceActivity.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/DragEvent;

    .prologue
    const v2, 0x7f0b0003

    const/4 v3, 0x1

    .line 379
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 380
    const-string v0, "Dropped in trash"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 381
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->endHover()V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$202(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 397
    :cond_0
    :goto_0
    return v3

    .line 384
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 385
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 388
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 390
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 392
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V

    .line 395
    const-string v0, "Ended in trash"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

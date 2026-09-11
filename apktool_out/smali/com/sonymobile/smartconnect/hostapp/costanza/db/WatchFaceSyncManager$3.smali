.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;
.super Ljava/lang/Object;
.source "WatchFaceSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

.field final synthetic val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceInstaller;->handleInstallResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    goto :goto_0

    .line 328
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->handleSetSelectionResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    goto :goto_0

    .line 331
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    goto :goto_0

    .line 335
    :pswitch_5
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$3;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->handleInstallTemporaryResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

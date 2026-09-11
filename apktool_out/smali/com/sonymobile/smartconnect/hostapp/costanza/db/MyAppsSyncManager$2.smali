.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;
.super Ljava/lang/Object;
.source "MyAppsSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

.field final synthetic val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    :pswitch_0
    return-void

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->getAppsCids()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->updateDisabledAppsList([II)V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->val$resp:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseSortingApps;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->updateSnakeNativeApp(I)V

    .line 245
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

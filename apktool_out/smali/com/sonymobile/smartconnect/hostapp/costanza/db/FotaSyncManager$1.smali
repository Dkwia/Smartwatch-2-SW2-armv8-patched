.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;
.super Ljava/lang/Object;
.source "FotaSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->syncFotaFiles(IIILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

.field final synthetic val$aswId:I

.field final synthetic val$bootloaderId:I

.field final synthetic val$fsId:I

.field final synthetic val$listener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;III)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$listener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$bootloaderId:I

    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$aswId:I

    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$fsId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$listener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V

    .line 102
    .local v1, "syncListenerInfo":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    invoke-virtual {v2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->addSyncListenerInfo(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V

    .line 105
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v3, v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$bootloaderId:I

    invoke-static {v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Landroid/content/Context;I)[B

    move-result-object v0

    .line 106
    .local v0, "data":[B
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;[BILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V

    .line 107
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v3, v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$aswId:I

    invoke-static {v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Landroid/content/Context;I)[B

    move-result-object v0

    .line 108
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;[BILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V

    .line 109
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v3, v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->val$fsId:I

    invoke-static {v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Landroid/content/Context;I)[B

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;[BILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V

    .line 111
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->setAllMessagesAdded()V

    .line 112
    return-void
.end method

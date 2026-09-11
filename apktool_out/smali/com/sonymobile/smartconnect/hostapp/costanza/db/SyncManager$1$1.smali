.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1$1;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1$1;->this$1:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$1;->val$messageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

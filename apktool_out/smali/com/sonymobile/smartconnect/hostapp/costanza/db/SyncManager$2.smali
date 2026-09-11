.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$2;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->pause(Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

.field final synthetic val$pauser:Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$2;->val$pauser:Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$2;->val$pauser:Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->pause(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$2;
.super Ljava/lang/Object;
.source "WatchFaceSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->postTemporaryWatchFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;)V

    .line 263
    return-void
.end method

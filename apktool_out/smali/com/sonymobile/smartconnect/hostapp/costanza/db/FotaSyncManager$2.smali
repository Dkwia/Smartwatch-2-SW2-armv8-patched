.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;
.super Ljava/lang/Object;
.source "FotaSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->resetFota(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

.field final synthetic val$listener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;->val$listener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 577
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->clearFotaFromPendingOperations()V

    .line 580
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;->val$listener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;->val$listener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;->onReset()V

    .line 584
    :cond_0
    return-void
.end method

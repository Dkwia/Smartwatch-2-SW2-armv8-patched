.class Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$1;
.super Ljava/lang/Object;
.source "WakeLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CLEANUP:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 26
    return-void
.end method

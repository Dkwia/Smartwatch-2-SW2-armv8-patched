.class public Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;
.super Ljava/lang/Object;
.source "PokeWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$1;,
        Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$ReleaseRunner;
    }
.end annotation


# static fields
.field private static mTotalTime:J


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mReleaseRunner:Ljava/lang/Runnable;

.field private final mTimeout:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockStartTime:J

.field private mWakeLockTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeout"    # J
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mHandler:Landroid/os/Handler;

    .line 41
    iput-wide p2, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mTimeout:J

    .line 42
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 43
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    return-void
.end method

.method private acquire()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$ReleaseRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$ReleaseRunner;-><init>(Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mReleaseRunner:Ljava/lang/Runnable;

    .line 48
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mReleaseRunner:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLockStartTime:J

    .line 51
    return-void
.end method


# virtual methods
.method public poke()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mReleaseRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mReleaseRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mReleaseRunner:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->acquire()V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mReleaseRunner:Ljava/lang/Runnable;

    .line 66
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLockStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLockTime:J

    .line 70
    sget-wide v0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mTotalTime:J

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLockTime:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mTotalTime:J

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PokeLock released after: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mWakeLockTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Total PokeLock estimate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->mTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 73
    return-void
.end method

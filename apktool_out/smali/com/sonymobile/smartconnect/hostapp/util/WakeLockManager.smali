.class public Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;
    }
.end annotation


# static fields
.field private static WAKELOCK_LOGS:Z = false

.field private static final WAKELOCK_TIMEOUT:J = 0x7d0L

.field private static instance:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPokeWakeLock:Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;

.field private final mReleaser:Ljava/lang/Runnable;

.field private final mTag:Ljava/lang/String;

.field private mTotalTime:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->WAKELOCK_LOGS:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mReleaser:Ljava/lang/Runnable;

    .line 59
    const-string v1, "SmartWatch2Manager"

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mTag:Ljava/lang/String;

    .line 64
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 65
    .local v0, "powerManager":Landroid/os/PowerManager;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;

    const-wide/16 v2, 0x7d0

    const-string v4, "SmartWatch2Manager"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mPokeWakeLock:Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;

    .line 66
    const-string v1, "SmartWatch2Manager"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->instance:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->instance:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    .line 76
    :cond_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->instance:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    return-object v0
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->NONE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 85
    return-void
.end method

.method public acquire(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V
    .locals 4
    .param p1, "powerUser"    # Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .prologue
    .line 88
    iget-boolean v0, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->isOn:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->wakeLockStartTime:J

    .line 90
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mReleaser:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 93
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->WAKELOCK_LOGS:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock aquired for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->WAKELOCK_LOGS:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock not aquired. Power policy for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->isOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public poke()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->POKE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    iget-boolean v0, v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->isOn:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mPokeWakeLock:Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->poke()V

    .line 160
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->NONE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V

    .line 111
    return-void
.end method

.method public declared-synchronized release(Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;)V
    .locals 6
    .param p1, "powerUser"    # Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->isOn:Z

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 122
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->WAKELOCK_LOGS:Z

    if-eqz v2, :cond_1

    .line 123
    const-wide/16 v0, 0x0

    .line 124
    .local v0, "wakeLockTime":J
    iget-wide v2, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->wakeLockStartTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->wakeLockStartTime:J

    sub-long v0, v2, v4

    .line 127
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->wakeLockStartTime:J

    .line 129
    :cond_0
    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mTotalTime:J

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " releasing after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Total cumilative wakelock estimate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mTotalTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 134
    .end local v0    # "wakeLockTime":J
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 135
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mReleaser:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->WAKELOCK_LOGS:Z

    if-eqz v2, :cond_2

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Not releasing, not held. Total cumilative wakelock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "estimate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mTotalTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Still held: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 144
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->WAKELOCK_LOGS:Z

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not released. Power policy for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->isOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.class Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$ReleaseRunner;
.super Ljava/lang/Object;
.source "PokeWakeLock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleaseRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$ReleaseRunner;->this$0:Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$ReleaseRunner;-><init>(Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock$ReleaseRunner;->this$0:Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/util/PokeWakeLock;->release()V

    .line 25
    return-void
.end method

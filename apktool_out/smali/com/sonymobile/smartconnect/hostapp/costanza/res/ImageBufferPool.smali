.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;
.super Ljava/lang/Object;
.source "ImageBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;
    }
.end annotation


# instance fields
.field private final mBuffersPerThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;->mBuffersPerThread:Ljava/lang/ThreadLocal;

    .line 27
    return-void
.end method


# virtual methods
.method public getBuffer(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;I)[B
    .locals 6
    .param p1, "bufferId"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;
    .param p2, "size"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;->mBuffersPerThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 31
    .local v1, "pool":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;[B>;"
    if-nez v1, :cond_0

    .line 32
    new-instance v1, Ljava/util/LinkedHashMap;

    .end local v1    # "pool":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;[B>;"
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .restart local v1    # "pool":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;[B>;"
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;->mBuffersPerThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 36
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 37
    .local v0, "buffer":[B
    if-nez v0, :cond_1

    .line 38
    new-array v0, p2, [B

    .line 39
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const-string v2, "Created a new image buffer %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const-string v2, "Got an %s image buffer from %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;->mBuffersPerThread:Ljava/lang/ThreadLocal;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_2
    return-object v0
.end method

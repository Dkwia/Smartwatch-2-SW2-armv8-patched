.class public Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final MAX_RUNQUEUE_REMOVE_FAILURES:I = 0xa

.field private static sRunQueueRemoveFailureCounter:I

.field private static sRunQueueRemoveMethods:Ljava/lang/reflect/Method;

.field private static sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueues:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearViewRootRunQueueIfNeeded()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 31
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 33
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 34
    const-string v7, "ViewUtils: Not clearing queue, running on main thread"

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 75
    .local v3, "runQueueRemoveMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 38
    .end local v3    # "runQueueRemoveMethod":Ljava/lang/reflect/Method;
    :cond_1
    sget v7, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueueRemoveFailureCounter:I

    const/16 v8, 0xa

    if-gt v7, v8, :cond_0

    .line 43
    :try_start_0
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueueRemoveMethods:Ljava/lang/reflect/Method;

    .line 44
    .restart local v3    # "runQueueRemoveMethod":Ljava/lang/reflect/Method;
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    .line 45
    .local v4, "runQueues":Ljava/lang/Object;
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 46
    :cond_2
    const-string v6, "android.view.ViewRootImpl"

    .line 47
    .local v6, "sClassName":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "sRunQueues"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 49
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 51
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 53
    if-eqz v4, :cond_3

    .line 54
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 55
    .local v5, "runQueuesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "remove"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 56
    sput-object v3, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueueRemoveMethods:Ljava/lang/reflect/Method;

    .line 59
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "runQueuesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "sClassName":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 60
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    const-string v7, "Cleared RunQueue."

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v4    # "runQueues":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Failed clearing RunQueue."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget v7, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueueRemoveFailureCounter:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueueRemoveFailureCounter:I

    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "runQueues":Ljava/lang/Object;
    :cond_4
    :try_start_1
    sget v7, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueueRemoveFailureCounter:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/sonymobile/smartconnect/hostapp/util/ViewUtils;->sRunQueueRemoveFailureCounter:I

    .line 66
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    const-string v7, "Skipped clearing RunQueue."

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

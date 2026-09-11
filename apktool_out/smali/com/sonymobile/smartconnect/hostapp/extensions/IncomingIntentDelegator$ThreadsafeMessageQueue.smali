.class Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;
.super Ljava/lang/Object;
.source "IncomingIntentDelegator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadsafeMessageQueue"
.end annotation


# instance fields
.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mMessageObjectQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mMessageObjectQueue:Ljava/util/LinkedList;

    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$1;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->releaseMessageObj(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;)Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->obtainMessageObj()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method private obtainMessageObj()Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mMessageObjectQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .restart local v1    # "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    return-object v1

    .line 84
    .end local v1    # "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_1
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .restart local v1    # "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .end local v1    # "obj":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method private releaseMessageObj(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V
    .locals 2
    .param p1, "obj"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 96
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->clear()V

    .line 97
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mMessageObjectQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    :cond_0
    return-void

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

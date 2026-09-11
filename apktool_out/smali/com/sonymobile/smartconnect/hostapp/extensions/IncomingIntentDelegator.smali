.class public Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;
.super Ljava/lang/Object;
.source "IncomingIntentDelegator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$1;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;
    }
.end annotation


# static fields
.field private static final COMMAND_EXT_INTENT:I


# instance fields
.field private final mDelegatorThread:Landroid/os/HandlerThread;

.field private final mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;

.field private final mIntentHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageQueue:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 4
    .param p1, "manager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handlerThread"    # Landroid/os/HandlerThread;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mDelegatorThread:Landroid/os/HandlerThread;

    .line 119
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mMessageQueue:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

    .line 121
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mDelegatorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mMessageQueue:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

    invoke-static {p2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;->getInstance(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;

    move-result-object v3

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;

    .line 124
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mIntentHandlers:Ljava/util/Hashtable;

    .line 125
    return-void
.end method


# virtual methods
.method public delegateIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 146
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mMessageQueue:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;->access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$ThreadsafeMessageQueue;)Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;

    move-result-object v2

    .line 148
    .local v2, "intentInfo":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "intentAction":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 150
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mIntentHandlers:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    .line 151
    .local v1, "intentHandler":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;
    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v1, p1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;->configureIntentInfo(Landroid/content/Intent;Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V

    .line 153
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Sending intentData to handler, action=%s."

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;

    invoke-virtual {v6, v4, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator$IntentThreadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .end local v1    # "intentHandler":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;
    :goto_0
    return v3

    .line 157
    .restart local v1    # "intentHandler":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Skipped handling intent, no handler found for action=%s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v5, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "intentHandler":Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;
    :cond_2
    move v3, v4

    .line 161
    goto :goto_0
.end method

.method public register(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;)V
    .locals 2
    .param p1, "intentHandler"    # Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mIntentHandlers:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;->getIntentActionToHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->mDelegatorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

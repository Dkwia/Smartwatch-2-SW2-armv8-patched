.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;
.super Ljava/lang/Object;
.source "ControlExtensionStack.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;
    }
.end annotation


# static fields
.field public static final CALL_EXTENSION_PKG:Ljava/lang/String; = "com.sonyericsson.extras.liveware.extension.call"

.field private static final MAX_RUNNING_CTRL_EXTENSIONS:I = 0x5


# instance fields
.field private final mControlExtensionFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;

.field private final mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private mIsPaused:Z

.field private final mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;)V
    .locals 1
    .param p1, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p2, "ctrlExtFactory"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIsPaused:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mControlExtensionFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;

    .line 50
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 51
    return-void
.end method

.method private getExtensionOnStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 152
    .local v1, "litr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .line 154
    .local v0, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionBasePkgSame(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    .end local v0    # "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtensionBasePkgSame(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z
    .locals 2
    .param p1, "ctrlExt"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    .param p2, "ext"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isExtensionOnStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z
    .locals 1
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->getExtensionOnStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveExtensionToTop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 163
    .local v1, "litr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .line 165
    .local v0, "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionBasePkgSame(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 167
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v0    # "ctrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    :cond_1
    return-void
.end method

.method private notifyPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 242
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;

    .line 243
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;->onPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 245
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;
    :cond_0
    return-void
.end method

.method private notifyResumed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 228
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;

    .line 229
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;->onResuming(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 231
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;
    :cond_0
    return-void
.end method

.method private removeExtensionFromStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 127
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 128
    .local v0, "litr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .line 130
    .local v1, "runningCtrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    invoke-direct {p0, v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionBasePkgSame(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->removeStateChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;)V

    .line 133
    const/4 v2, 0x1

    .line 136
    .end local v1    # "runningCtrlExt":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addStateChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTop()Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public isExtensionOnTop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    .line 187
    .local v0, "topExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionBasePkgSame(Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIsPaused:Z

    return v0
.end method

.method public isResumeAllowed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z
    .locals 5
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionOnStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Resuming already started extension, %s."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isStartAllowed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z
    .locals 5
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isResumeAllowed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const-string v3, "com.sonyericsson.extras.liveware.extension.call"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Skipped starting extension: %s, only call extension may start over other."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onConnect()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 286
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->stop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public pause(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionOnStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIsPaused:Z

    .line 236
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    const-string v1, "com.sonyericsson.extras.aef.control.PAUSE"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->notifyPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 239
    :cond_0
    return-void
.end method

.method public declared-synchronized removeStateChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionOnStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->start(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 224
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->notifyResumed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 225
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIsPaused:Z

    .line 221
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    const-string v1, "com.sonyericsson.extras.aef.control.RESUME"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->moveExtensionToTop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0
.end method

.method public start(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 5
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isStartAllowed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isResumeAllowed(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->resume(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->getTop()Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->pause(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mControlExtensionFactory:Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;

    invoke-virtual {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->create(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    move-result-object v0

    .line 87
    .local v0, "ctrlExtension":Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->addStateChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;)V

    .line 90
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Added extension to stack: %s, %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    const-string v2, "com.sonyericsson.extras.aef.control.START"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->resume(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0
.end method

.method public stop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 4
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionOnStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->isExtensionOnTop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->pause(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->removeExtensionFromStack(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Z

    .line 209
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->mIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    const-string v1, "com.sonyericsson.extras.aef.control.STOP"

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Ljava/lang/String;)V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Skipped stopping extension %s, not in stack."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;
.super Landroid/app/Fragment;
.source "TcpServerFragment.java"


# static fields
.field protected static final CONNECTION_TIMEOUT:I = 0x1388

.field protected static final TCP_SERVER_PORT:I = 0xe4f8


# instance fields
.field mQuiting:Z

.field mReady:Z

.field final mTcpServer:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mReady:Z

    .line 47
    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mQuiting:Z

    .line 54
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mTcpServer:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;)Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->getDebugEventManager()Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    move-result-object v0

    return-object v0
.end method

.method private getDebugEventManager()Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 245
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getDebugEventManager()Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    move-result-object v1

    return-object v1
.end method

.method private quitServer()V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mTcpServer:Ljava/lang/Thread;

    monitor-enter v1

    .line 208
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mReady:Z

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mQuiting:Z

    .line 210
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mTcpServer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 211
    monitor-exit v1

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setReady(Z)V
    .locals 2
    .param p1, "shouldBeReady"    # Z

    .prologue
    .line 197
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mTcpServer:Ljava/lang/Thread;

    monitor-enter v1

    .line 198
    :try_start_0
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mReady:Z

    .line 199
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mTcpServer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->setReady(Z)V

    .line 228
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->setRetainInstance(Z)V

    .line 220
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->mTcpServer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 221
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->quitServer()V

    .line 233
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 234
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->setReady(Z)V

    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 240
    return-void
.end method

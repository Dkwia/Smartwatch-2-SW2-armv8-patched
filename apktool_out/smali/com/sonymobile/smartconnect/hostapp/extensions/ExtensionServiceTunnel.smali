.class public Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
.super Ljava/lang/Object;
.source "ExtensionServiceTunnel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$1;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:J = 0x2710L

.field private static final MAX_UNSUCCESSFUL_CONNECTION_ATTEMPTS:J = 0x3L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtensionPackageName:Ljava/lang/String;

.field private final mIntentQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTunnelBroken:Z

.field private final mMessengerForIntentsReceivedFromExtension:Landroid/os/Messenger;

.field private mMessengerForIntentsSentToExtension:Landroid/os/Messenger;

.field private final mServiceComponentName:Landroid/content/ComponentName;

.field private mState:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

.field private mTimeOfLastStateChange:J

.field private mUnsuccessfulConnectionAttempts:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intentDelegator"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;
    .param p3, "serviceComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mIntentQueue:Ljava/util/LinkedList;

    .line 90
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mState:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    .line 100
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mServiceComponentName:Landroid/content/ComponentName;

    .line 102
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;

    invoke-direct {v1, p0, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mMessengerForIntentsReceivedFromExtension:Landroid/os/Messenger;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mIsTunnelBroken:Z

    return p1
.end method

.method private bind()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mServiceComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string v3, "Binding service, %s."

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTING:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->setState(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;)V

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 138
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const-string v3, "Failed binding to %s."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_2
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->setState(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;)V

    move v1, v2

    .line 142
    goto :goto_0
.end method

.method private sendBundleMessage(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-static {v2, p1, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 221
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method private sendMessage(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 225
    const/4 v1, 0x0

    invoke-static {v1, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method private sendMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mMessengerForIntentsSentToExtension:Landroid/os/Messenger;

    .line 231
    .local v0, "m":Landroid/os/Messenger;
    if-eqz v0, :cond_0

    .line 232
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mMessengerForIntentsReceivedFromExtension:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 242
    :goto_0
    return v1

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->close()V

    .line 237
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->bind()Z

    .line 239
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    const-string v3, "Skipped msg to %s, due to missing service connection."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    .line 242
    goto :goto_0
.end method

.method private declared-synchronized setState(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;)V
    .locals 4
    .param p1, "state"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mTimeOfLastStateChange:J

    .line 109
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mState:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    .line 111
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$ExtensionServiceTunnel$BindState:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :pswitch_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mUnsuccessfulConnectionAttempts:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :pswitch_1
    :try_start_2
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mUnsuccessfulConnectionAttempts:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mUnsuccessfulConnectionAttempts:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 148
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->setState(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;)V

    .line 151
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "Closed tunnel to %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_1
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBroken()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mIsTunnelBroken:Z

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mState:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mState:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTING:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mState:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 252
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mMessengerForIntentsSentToExtension:Landroid/os/Messenger;

    .line 253
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->setState(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;)V

    .line 254
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Connected to extension service, %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "aha_package_name"

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->sendBundleMessage(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->sendQueuedIntentsFromHostApp()V

    .line 265
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed sending messenger setup."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 268
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnected from extension service, %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mMessengerForIntentsSentToExtension:Landroid/os/Messenger;

    .line 272
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->setState(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;)V

    .line 273
    return-void
.end method

.method public declared-synchronized sendIntent(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->isConnected()Z

    move-result v3

    if-nez v3, :cond_6

    .line 167
    iget-wide v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mUnsuccessfulConnectionAttempts:J

    const-wide/16 v6, 0x3

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 168
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mIsTunnelBroken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 172
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mIntentQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 174
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    const-string v3, "Queued intent (%s) for %s, state=%s."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mState:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->bind()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    :goto_1
    move v1, v2

    .line 193
    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mTimeOfLastStateChange:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 185
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    const-string v1, "Detected tunnel connection timeout for %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->close()V

    .line 189
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->bind()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 197
    :cond_6
    const/4 v3, 0x3

    :try_start_2
    invoke-direct {p0, v3, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->sendMessage(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 199
    const-string v3, "Sent intent (%s) through bound service (%s)."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move v1, v2

    .line 202
    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "Failed sending intent (%s) to bound service (%s)."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mExtensionPackageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized sendQueuedIntentsFromHostApp()V
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mIntentQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->mIntentQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->sendIntent(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :cond_0
    monitor-exit p0

    return-void
.end method

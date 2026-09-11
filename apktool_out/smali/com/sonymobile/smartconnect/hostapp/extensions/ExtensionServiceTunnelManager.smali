.class public Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;
.super Ljava/lang/Object;
.source "ExtensionServiceTunnelManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;


# instance fields
.field private final mActiveTunnels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

.field private final mTunnelNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentDelegator"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mActiveTunnels:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mTunnelNameCache:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    .line 36
    return-void
.end method

.method private declared-synchronized closeTunnel(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mActiveTunnels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    .line 61
    .local v0, "tunnel":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->close()V

    .line 63
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mActiveTunnels:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "tunnel":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTunnelName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mTunnelNameCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionServiceComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 53
    .local v0, "tunnelName":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mTunnelNameCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v0    # "tunnelName":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mTunnelNameCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized openTunnel(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->getTunnelName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 40
    .local v1, "tunnelComponentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 41
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    invoke-direct {v0, v2, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;Landroid/content/ComponentName;)V

    .line 42
    .local v0, "tunnel":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mActiveTunnels:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v0    # "tunnel":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 45
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Failed opening tunnel, missing extension tunnel service, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    .end local v1    # "tunnelComponentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onExtensionsDeleted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 107
    .local v0, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->closeTunnel(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_0
    return-void
.end method

.method public onExtensionsInserted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "newExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    return-void
.end method

.method public onExtensionsUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 100
    .local v0, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mTunnelNameCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    .end local v0    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_0
    return-void
.end method

.method public onSyncFinished()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public tunnelIntent(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mActiveTunnels:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    .line 75
    .local v2, "tunnel":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
    if-nez v2, :cond_2

    .line 76
    const-string v4, "com.sonyericsson.extras.liveware.aef.registration.ACCESSORY_CONNECTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    .line 88
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->openTunnel(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    move-result-object v2

    .line 85
    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->isBroken()Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    invoke-virtual {v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->sendIntent(Landroid/content/Intent;)Z

    move-result v3

    goto :goto_0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;
.super Ljava/lang/Object;
.source "ConnectionIntentDelegator.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;


# instance fields
.field private final mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private final mContext:Landroid/content/Context;

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private mNotifyLater:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p3, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mNotifyLater:Z

    .line 36
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 38
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->addExtensionsChangeListener(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;)V

    .line 39
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 40
    return-void
.end method

.method private sendToAllExtensions(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x1

    .line 68
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensions()Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    .local v1, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mNotifyLater:Z

    if-nez v3, :cond_0

    if-ne p1, v4, :cond_0

    .line 71
    iput-boolean v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mNotifyLater:Z

    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 74
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->isChild()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->sendToExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;I)V

    goto :goto_0

    .line 78
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mNotifyLater:Z

    .line 81
    :cond_3
    return-void
.end method

.method private sendToExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;I)V
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "connectionStatus"    # I

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.liveware.aef.registration.ACCESSORY_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "connnection_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Intent;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->sendToAllExtensions(I)V

    .line 64
    return-void
.end method

.method public onExtensionsDeleted(Ljava/util/List;)V
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
    .line 109
    .local p1, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
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
    .line 100
    .local p1, "newExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    return-void
.end method

.method public onExtensionsUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
    .line 105
    .local p1, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->sendToAllExtensions(I)V

    .line 58
    return-void
.end method

.method public onSyncFinished()V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->mNotifyLater:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ConnectionIntentDelegator;->sendToAllExtensions(I)V

    .line 96
    :cond_0
    return-void
.end method

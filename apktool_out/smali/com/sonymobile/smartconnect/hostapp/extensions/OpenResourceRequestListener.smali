.class public Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;
.super Ljava/lang/Object;
.source "OpenResourceRequestListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# static fields
.field private static final FAILURE:I = 0x0

.field private static final SUCCESS:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V
    .locals 2
    .param p1, "costanzaHostApplication"    # Landroid/content/Context;
    .param p2, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .param p3, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 44
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 47
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 48
    return-void
.end method

.method private showExtensionConfigurationActivity(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)I
    .locals 7
    .param p1, "ext"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "configActivity":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 97
    .local v4, "result":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launching preference activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 102
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "supports_history"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    const-string v5, "supports_actions"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v5, "aha_package_name"

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v4, 0x1

    .line 120
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v4

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 116
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open settings activity for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x83

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 57
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;-><init>(I)V

    .local v0, "confirmation":Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;
    move-object v2, p1

    .line 60
    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;

    .line 61
    .local v2, "message":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;->getResourceToOpen()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 77
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;->getResourceToOpen()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionByCid(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v1

    .line 78
    .local v1, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v1, :cond_3

    .line 79
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown open resource request, messageType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;->getResourceToOpen()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 83
    :cond_0
    invoke-virtual {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;->setStatus(I)V

    .line 90
    .end local v1    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v5, v6, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v5, v7

    invoke-interface {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 91
    return-void

    .line 63
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display support screen, messageType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;->getResourceToOpen()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 66
    :cond_1
    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;->setStatus(I)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->showSupport()V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display support screen, messageType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationOpenResource;->getResourceToOpen()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 73
    :cond_2
    invoke-virtual {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;->setStatus(I)V

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->showAbout()V

    goto :goto_0

    .line 85
    .restart local v1    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_3
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->showExtensionConfigurationActivity(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)I

    move-result v3

    .line 86
    .local v3, "showActivityResult":I
    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ConfirmationOpenResource;->setStatus(I)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showAbout()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    const-string v1, "show_attribution"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public showSupport()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/PreferenceSupportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/OpenResourceRequestListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

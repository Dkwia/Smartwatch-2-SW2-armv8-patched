.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;
.super Ljava/lang/Object;
.source "CommunicationManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerDefaultMessageListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FactoryResetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearSendQueuesAndTracking()V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$700(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->clear()V

    .line 1190
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$600(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->clear()V

    .line 1191
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$300(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->clear()V

    .line 1192
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$500(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->clear()V

    .line 1193
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$2000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->clear()V

    .line 1194
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 1131
    const/16 v0, 0x15

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v8, 0x1

    .line 1135
    move-object v4, p1

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;

    .line 1136
    .local v4, "rspFactoryReset":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got ResponseFactoryReset status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 1140
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1600(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v2

    .line 1141
    .local v2, "oldAddress":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->getRemoteAddress()Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "newAddress":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Connected to address: %s, last known address: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1147
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1148
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "synced_device"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1150
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1602(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1156
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFactoryReset;->getStatus()I

    move-result v5

    if-nez v5, :cond_4

    .line 1157
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1700(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->abort()V

    .line 1158
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->isReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1159
    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;->setSyncStarted(Z)V

    .line 1164
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->clearSendQueuesAndTracking()V

    .line 1165
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1800(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;->performReset()V

    .line 1185
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    .line 1186
    :goto_0
    return-void

    .line 1171
    :cond_4
    goto :cond_3
.end method

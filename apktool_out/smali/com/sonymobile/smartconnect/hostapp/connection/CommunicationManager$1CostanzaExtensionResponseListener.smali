.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1CostanzaExtensionResponseListener;
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
    name = "CostanzaExtensionResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1CostanzaExtensionResponseListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 1097
    const/16 v0, 0x69

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v6, 0x1

    .line 1101
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;

    .line 1102
    .local v1, "extensionResponse":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Communications manager: Got ResponseExtension action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->getExtensionCid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1109
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 1111
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1112
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "isInstalled"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1114
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1CostanzaExtensionResponseListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    const-string v5, "cid=?"

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseExtension;->getExtensionCid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1119
    .local v0, "added":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResponseExtension added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1124
    .end local v0    # "added":I
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

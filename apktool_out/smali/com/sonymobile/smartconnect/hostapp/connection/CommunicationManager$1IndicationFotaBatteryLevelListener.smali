.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1IndicationFotaBatteryLevelListener;
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
    name = "IndicationFotaBatteryLevelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1IndicationFotaBatteryLevelListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 1068
    const/16 v0, 0x12

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 1072
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;

    .line 1073
    .local v0, "indication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Communications manager: Got IndicationFotaBatteryLevelListener percentage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->getPercentage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1076
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1IndicationFotaBatteryLevelListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1500(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;->onFotaBatteryLevelIndication(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;)V

    .line 1077
    return-void
.end method

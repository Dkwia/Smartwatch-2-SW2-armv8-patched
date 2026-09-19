.class Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;
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
    name = "ResponseVersionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x5

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const v4, 0x100067

    .line 995
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;

    .line 996
    .local v0, "protoVersionMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;->getProtocolVersion()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$902(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;I)I

    .line 997
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1002(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Ljava/lang/String;)Ljava/lang/String;

    .line 998
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I

    move-result v2

    if-gt v4, v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->compareFirmware(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1000
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Communications manager: Accessory is using old protocol or firmware!(HostApp: proto=1048679, fw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Accessory: proto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1007
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_OLDER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V

    .line 1046
    :goto_0
    return-void

    .line 1008
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I

    move-result v2

    if-lt v4, v2, :cond_3

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->compareFirmware(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    .line 1010
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Communications manager: Accessory is using newer protocol or firmware!(HostApp: proto=1048679, fw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Accessory: proto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1017
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_NEWER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V

    goto :goto_0

    .line 1019
    :cond_5
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Communications manager: Accessory using matching protocol and firmware!(HostApp: proto=1048679, fw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Accessory: proto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1036
    :cond_6
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Checking shared prefs for reset"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1037
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getResetFlag()Z

    move-result v1

    .line 1038
    .local v1, "reset":Z
    if-eqz v1, :cond_9

    .line 1039
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1300(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    .line 1043
    :cond_9
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;->this$0:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->access$1400(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    goto/16 :goto_0
.end method

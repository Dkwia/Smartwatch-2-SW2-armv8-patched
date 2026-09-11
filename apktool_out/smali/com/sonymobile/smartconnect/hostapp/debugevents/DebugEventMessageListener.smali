.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventMessageListener;
.super Ljava/lang/Object;
.source "DebugEventMessageListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mDebugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;)V
    .locals 0
    .param p1, "debugEventManager"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventMessageListener;->mDebugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    .line 20
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x7c

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 27
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;

    .line 28
    .local v0, "debugEvent":Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Communications manager: Got DebugEvent action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventMessageListener;->mDebugEventManager:Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->handleDebugEvent(Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;)V

    .line 31
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/extensions/SyncTimeRequestListener;
.super Ljava/lang/Object;
.source "SyncTimeRequestListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mTimeSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;)V
    .locals 0
    .param p1, "timeAndLocaleSender"    # Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/SyncTimeRequestListener;->mTimeSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    .line 19
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x82

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/SyncTimeRequestListener;->mTimeSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->sendTimeAndTimeZone()V

    .line 29
    return-void
.end method

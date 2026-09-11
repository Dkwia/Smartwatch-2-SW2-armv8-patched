.class public Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;
.super Ljava/lang/Object;
.source "TimeAndLocaleSender.java"


# instance fields
.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V
    .locals 0
    .param p1, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .param p2, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 26
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 27
    return-void
.end method


# virtual methods
.method public sendLocale()V
    .locals 5

    .prologue
    .line 59
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;-><init>(I)V

    .line 61
    .local v1, "lr":Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 62
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to accessory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 65
    :cond_0
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;->setLocale(Ljava/util/Locale;)V

    .line 66
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 67
    return-void
.end method

.method public sendTimeAndTimeZone()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 30
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 31
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 32
    .local v2, "time":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 34
    .local v1, "offset":I
    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 35
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;-><init>(I)V

    .line 37
    .local v4, "timeReq":Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;
    invoke-virtual {v4, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeReq;->setTime(J)V

    .line 39
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v7, v9, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v4, v7, v8

    invoke-interface {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 44
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;-><init>(I)V

    .line 46
    .local v5, "timeZoneReq":Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;
    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetTimeZoneReq;->setTimeZoneOffset(I)V

    .line 48
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v7, v9, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v5, v7, v8

    invoke-interface {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 50
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    const-string v6, "Sent time and time zone update: %s."

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

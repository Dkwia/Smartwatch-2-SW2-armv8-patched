.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
.super Ljava/lang/Object;
.source "DebugEventManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    return-object v0
.end method

.method private getMessageIdProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getMessageIdProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-result-object v0

    return-object v0
.end method

.method private isDebugBuild()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public handleDebugEvent(Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;)V
    .locals 14
    .param p1, "debugEvent"    # Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->getAction()I

    move-result v0

    .line 34
    .local v0, "action":I
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->isDebugBuild()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    if-eq v0, v9, :cond_1

    const/4 v9, 0x2

    if-eq v0, v9, :cond_1

    const/4 v9, 0x4

    if-eq v0, v9, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->getData()[B

    move-result-object v1

    .line 39
    .local v1, "data":[B
    const/4 v4, 0x0

    .line 40
    .local v4, "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    const/4 v8, 0x0

    .line 41
    .local v8, "type":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    const/4 v6, 0x0

    .line 43
    .local v6, "str":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 94
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->INFO:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 95
    const-string v6, "Unknown debug event action"

    .line 96
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    .end local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    invoke-direct {v4, v6, v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;)V

    .line 99
    .restart local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 100
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->insertLogMessage(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)V

    goto :goto_0

    .line 45
    :pswitch_0
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->ERROR:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 47
    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v6    # "str":Ljava/lang/String;
    .local v7, "str":Ljava/lang/String;
    :try_start_1
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9

    .line 49
    .end local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .local v5, "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    :try_start_2
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/sonymobile/smartconnect/hostapp/debugevents/MTBFReporter;->addDropboxEntry(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_a

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    move-object v4, v5

    .line 52
    .end local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    goto :goto_1

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->FATAL:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 57
    :try_start_3
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    .line 58
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :try_start_4
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_7

    .line 59
    .end local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    :try_start_5
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/sonymobile/smartconnect/hostapp/debugevents/MTBFReporter;->addDropboxEntry(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_8

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    move-object v4, v5

    .line 62
    .end local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    goto :goto_1

    .line 60
    :catch_1
    move-exception v3

    .line 61
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_2
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->DUMP:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 67
    :try_start_6
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;

    invoke-direct {v2, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;-><init>([B)V

    .line 68
    .local v2, "ds":Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->getType()J

    move-result-wide v10

    const-wide/16 v12, 0x8

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 69
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->getDataAsString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/debugevents/MTBFReporter;->addDropboxEntry(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 71
    .end local v2    # "ds":Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;
    :catch_2
    move-exception v3

    .line 72
    .local v3, "e":Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v3    # "e":Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;
    :pswitch_3
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->INFO:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 78
    :try_start_7
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_3

    .line 79
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :try_start_8
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_6

    .end local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    move-object v4, v5

    .line 82
    .end local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    goto :goto_1

    .line 80
    :catch_3
    move-exception v3

    .line 81
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_4
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->COMMAND:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    .line 87
    :try_start_9
    new-instance v7, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_4

    .line 88
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :try_start_a
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_5

    .end local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    move-object v4, v5

    .line 91
    .end local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    goto/16 :goto_1

    .line 89
    :catch_4
    move-exception v3

    .line 90
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 89
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    goto :goto_5

    .line 80
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_6
    move-exception v3

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    goto :goto_4

    .line 60
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    goto :goto_3

    .end local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_8
    move-exception v3

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    move-object v4, v5

    .end local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    goto :goto_3

    .line 50
    .end local v6    # "str":Ljava/lang/String;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_9
    move-exception v3

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    goto :goto_2

    .end local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v7    # "str":Ljava/lang/String;
    :catch_a
    move-exception v3

    move-object v6, v7

    .end local v7    # "str":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    move-object v4, v5

    .end local v5    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .restart local v4    # "logMessage":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    goto :goto_2

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method sendDebugCommand([B)V
    .locals 5
    .param p1, "cmd"    # [B

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->isDebugBuild()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->getMessageIdProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    move-result-object v3

    .line 114
    .local v3, "msgIdProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;>;"
    invoke-interface {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v1

    .line 117
    .local v1, "messageId":I
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;-><init>(I)V

    .line 118
    .local v0, "m":Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->setAction(I)V

    .line 119
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->setData([B)V

    .line 120
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;->setEventId(I)V

    .line 121
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/lang/Iterable;)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;->handleDebugEvent(Lcom/sonymobile/smartconnect/hostapp/protocol/DebugEvent;)V

    goto :goto_0
.end method

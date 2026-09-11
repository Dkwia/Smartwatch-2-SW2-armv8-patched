.class public Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
.super Ljava/lang/Object;
.source "NotificationSource.java"


# instance fields
.field private final mAction1:Ljava/lang/String;

.field private final mAction2:Ljava/lang/String;

.field private final mAction3:Ljava/lang/String;

.field private final mActionIconUri1:Ljava/lang/String;

.field private final mActionIconUri2:Ljava/lang/String;

.field private final mActionIconUri3:Ljava/lang/String;

.field private final mActionsCount:I

.field private mCid:I

.field private mColor:I

.field private mEnabled:Z

.field private final mExtensionSpecificSourceId:Ljava/lang/String;

.field private final mIconBlackWhiteUri:Ljava/lang/String;

.field private final mIconUri1:Ljava/lang/String;

.field private final mIconUri2:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSmartConnectSourceId:J

.field private final mTextToSpeechText:Ljava/lang/String;

.field private mUpdateTime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZI)V
    .locals 5
    .param p1, "smartConnectSourceId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "extensionSpecificSourceId"    # Ljava/lang/String;
    .param p6, "iconUri1"    # Ljava/lang/String;
    .param p7, "iconUri2"    # Ljava/lang/String;
    .param p8, "iconBlackWhiteUri"    # Ljava/lang/String;
    .param p9, "action1"    # Ljava/lang/String;
    .param p10, "action2"    # Ljava/lang/String;
    .param p11, "action3"    # Ljava/lang/String;
    .param p12, "actionIconUri1"    # Ljava/lang/String;
    .param p13, "actionIconUri2"    # Ljava/lang/String;
    .param p14, "actionIconUri3"    # Ljava/lang/String;
    .param p15, "textToSpeechText"    # Ljava/lang/String;
    .param p16, "updateTime"    # J
    .param p18, "enabled"    # Z
    .param p19, "color"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-nez p4, :cond_0

    .line 78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Name must be specified!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mSmartConnectSourceId:J

    .line 82
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mPackageName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mName:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mExtensionSpecificSourceId:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mIconUri1:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mIconUri2:Ljava/lang/String;

    .line 87
    iput-object p8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mIconBlackWhiteUri:Ljava/lang/String;

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "actionsCount":I
    iput-object p9, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mAction1:Ljava/lang/String;

    .line 91
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionIconUri1:Ljava/lang/String;

    .line 92
    if-nez p9, :cond_1

    if-eqz p12, :cond_2

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 95
    :cond_2
    iput-object p10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mAction2:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionIconUri2:Ljava/lang/String;

    .line 97
    if-nez p10, :cond_3

    if-eqz p13, :cond_4

    .line 98
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 100
    :cond_4
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mAction3:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionIconUri3:Ljava/lang/String;

    .line 102
    if-nez p11, :cond_5

    if-eqz p14, :cond_6

    .line 103
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 105
    :cond_6
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionsCount:I

    .line 107
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mTextToSpeechText:Ljava/lang/String;

    .line 108
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mUpdateTime:J

    .line 110
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mEnabled:Z

    .line 111
    move/from16 v0, p19

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->setColor(I)V

    .line 113
    return-void
.end method

.method private setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 231
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mColor:I

    .line 232
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    instance-of v3, p1, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    if-nez v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 256
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 258
    .local v0, "other":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getExtensionSpecificSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getExtensionSpecificSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIconBlackWhite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIconBlackWhite()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getTextToSpeechText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getTextToSpeechText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getUpdateTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getUpdateTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move v1, v2

    .line 273
    goto/16 :goto_0
.end method

.method public getAction(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 205
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 199
    :pswitch_0
    const-string v0, "action_1"

    goto :goto_0

    .line 201
    :pswitch_1
    const-string v0, "action_2"

    goto :goto_0

    .line 203
    :pswitch_2
    const-string v0, "action_3"

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getActionIconUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionIconUri1:Ljava/lang/String;

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionIconUri2:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionIconUri3:Ljava/lang/String;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getActionText(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mAction1:Ljava/lang/String;

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mAction2:Ljava/lang/String;

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mAction3:Ljava/lang/String;

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getActionsCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mActionsCount:I

    return v0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mCid:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mColor:I

    return v0
.end method

.method public getExtensionSpecificSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mExtensionSpecificSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mIconUri1:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mIconUri2:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBlackWhite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mIconBlackWhiteUri:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartConnectSourceId()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mSmartConnectSourceId:J

    return-wide v0
.end method

.method public getTextToSpeechText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mTextToSpeechText:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mUpdateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashCode not implemented for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mEnabled:Z

    return v0
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->mCid:I

    .line 137
    return-void
.end method

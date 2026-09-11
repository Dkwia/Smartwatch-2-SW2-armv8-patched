.class public Lcom/sonymobile/smartconnect/hostapp/notification/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private mCid:I

.field private mContactsReference:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEventImageUri:Ljava/lang/String;

.field private mExtensionCid:I

.field private mExtensionId:J

.field private mId:J

.field private mImageCid:I

.field private mIsPersonal:Z

.field private mIsRead:Z

.field private mMessage:Ljava/lang/String;

.field private mProfileImageCid:I

.field private mProfileImageUri:Ljava/lang/String;

.field private mPublishedTime:J

.field private mSmartConnectEventId:J

.field private mSourceId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mCid:I

    .line 24
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionCid:I

    .line 25
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mImageCid:I

    .line 26
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageCid:I

    .line 58
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mId:J

    .line 59
    return-void
.end method

.method public constructor <init>(JJJJIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "extensionId"    # J
    .param p5, "sourceId"    # J
    .param p7, "smartConnectEventId"    # J
    .param p9, "cid"    # I
    .param p10, "extensionCid"    # I
    .param p11, "title"    # Ljava/lang/String;
    .param p12, "message"    # Ljava/lang/String;
    .param p13, "publishedTime"    # J
    .param p15, "readStatus"    # I
    .param p16, "eventImageUri"    # Ljava/lang/String;
    .param p17, "profileImageUri"    # Ljava/lang/String;
    .param p18, "displayName"    # Ljava/lang/String;
    .param p19, "contactsReference"    # Ljava/lang/String;
    .param p20, "personal"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mCid:I

    .line 24
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionCid:I

    .line 25
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mImageCid:I

    .line 26
    const/4 v2, -0x1

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageCid:I

    .line 40
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mId:J

    .line 41
    iput-wide p3, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionId:J

    .line 42
    iput-wide p5, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSourceId:J

    .line 43
    iput-wide p7, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSmartConnectEventId:J

    .line 44
    iput p9, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mCid:I

    .line 45
    iput p10, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionCid:I

    .line 46
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mTitle:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mMessage:Ljava/lang/String;

    .line 48
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mPublishedTime:J

    .line 49
    const/4 v2, 0x1

    move/from16 v0, p15

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mIsRead:Z

    .line 50
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mEventImageUri:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageUri:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mDisplayName:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mContactsReference:Ljava/lang/String;

    .line 54
    const/4 v2, 0x1

    move/from16 v0, p20

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mIsPersonal:Z

    .line 55
    return-void

    .line 49
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public compare(Lcom/sonymobile/smartconnect/hostapp/notification/Event;)I
    .locals 4
    .param p1, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    .line 185
    iget-wide v0, p1, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mPublishedTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mPublishedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 190
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v4

    .line 194
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-object v3, v0

    .line 195
    .local v3, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    iget-wide v6, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSmartConnectEventId:J

    iget-wide v8, v3, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSmartConnectEventId:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mCid:I

    return v0
.end method

.method public getContactsReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mContactsReference:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameWithContactFallback(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mDisplayName:Ljava/lang/String;

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mContactsReference:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mContactsReference:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ContactReader;->readDisplayName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mEventImageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionCid:I

    return v0
.end method

.method public getExtensionId()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionId:J

    return-wide v0
.end method

.method public getFormattedPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getFormattedPublishedTime(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedPublishedTime(Z)Ljava/lang/String;
    .locals 12
    .param p1, "abbreviate"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const-wide/32 v4, 0xea60

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "now":J
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mPublishedTime:J

    .line 82
    .local v0, "publishedTime":J
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v8

    if-nez v8, :cond_0

    .line 86
    invoke-static {v0, v1, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    invoke-static {v2, v3, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    sub-int v7, v8, v9

    .line 88
    .local v7, "days":I
    int-to-long v8, v7

    const-wide/32 v10, 0x5265c00

    mul-long/2addr v8, v10

    add-long v0, v2, v8

    .line 91
    .end local v7    # "days":I
    :cond_0
    cmp-long v8, v0, v2

    if-lez v8, :cond_1

    sub-long v8, v0, v2

    const-wide/32 v10, 0x36ee80

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 94
    add-long/2addr v0, v4

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    .line 99
    const/high16 v6, 0x80000

    .line 101
    .local v6, "flags":I
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .end local v6    # "flags":I
    :goto_0
    return-object v4

    :cond_2
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mId:J

    return-wide v0
.end method

.method public getImageCid()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mImageCid:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageCid()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageCid:I

    return v0
.end method

.method public getProfileImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mPublishedTime:J

    return-wide v0
.end method

.method public getSmartConnectEventId()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSmartConnectEventId:J

    return-wide v0
.end method

.method public getSourceId()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSourceId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 205
    const/16 v0, 0x12

    .line 207
    .local v0, "result":I
    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSmartConnectEventId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSmartConnectEventId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x22e

    .line 211
    return v0

    .line 207
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mPublishedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageUri:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersonal()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mIsPersonal:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mIsRead:Z

    return v0
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mCid:I

    .line 258
    return-void
.end method

.method public setContactsReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactsReference"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mContactsReference:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mDisplayName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setEventImageUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventImageUri"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mEventImageUri:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setExtensionCid(I)V
    .locals 0
    .param p1, "extensionCid"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionCid:I

    .line 274
    return-void
.end method

.method public setExtensionId(J)V
    .locals 1
    .param p1, "extensionId"    # J

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mExtensionId:J

    .line 234
    return-void
.end method

.method public setImageCid(I)V
    .locals 0
    .param p1, "imageCid"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mImageCid:I

    .line 266
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mMessage:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPersonal(Z)V
    .locals 0
    .param p1, "isPersonal"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mIsPersonal:Z

    .line 242
    return-void
.end method

.method public setProfileImageCid(I)V
    .locals 0
    .param p1, "profileImageCid"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageCid:I

    .line 282
    return-void
.end method

.method public setProfileImageUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileImageUri"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mProfileImageUri:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPublishedTime(J)V
    .locals 1
    .param p1, "publishedTime"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mPublishedTime:J

    .line 116
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mIsRead:Z

    .line 128
    return-void
.end method

.method public setSmartConnectEventId(J)V
    .locals 1
    .param p1, "smartConnectEventId"    # J

    .prologue
    .line 249
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSmartConnectEventId:J

    .line 250
    return-void
.end method

.method public setSourceId(J)V
    .locals 1
    .param p1, "mSourceId"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mSourceId:J

    .line 220
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->mTitle:Ljava/lang/String;

    .line 71
    return-void
.end method

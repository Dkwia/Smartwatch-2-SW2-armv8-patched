.class public Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# static fields
.field public static final GRAVITY_FACTOR:F = 101.97162f


# instance fields
.field private final mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private final mContext:Landroid/content/Context;

.field private mLastExtensionPackageName:Ljava/lang/String;

.field private mLastSensorId:I

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mSensorExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorMsgFactory:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;

.field private final mSockets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p3, "sensorMsgFactory"    # Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;
    .param p4, "ahaIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 46
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorMsgFactory:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;

    .line 47
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSockets:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private sendData(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;Ljava/lang/String;)Z
    .locals 12
    .param p1, "sensorData"    # Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;
    .param p2, "socketName"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const-string v7, "SensorManager sendData: type= %d, accuracy= %d, timestamp= %d, size= %d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getSensorType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getAccuracy()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getTimestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getDataSize()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSockets:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;

    .line 136
    .local v5, "socket":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;
    monitor-enter v5

    .line 137
    :try_start_0
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->getOutStream()Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 139
    .local v3, "outStream":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getDataSize()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 140
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getAccuracy()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getTimestamp()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 142
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getDataSize()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getDataSize()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 144
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getSensorType()I

    move-result v7

    if-nez v7, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getData()[I

    move-result-object v7

    aget v7, v7, v1

    int-to-float v7, v7

    const v8, 0x42cbf178

    div-float/2addr v7, v8

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 150
    :goto_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 151
    const-string v7, "SensorManager sendData: data%d=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getData()[I

    move-result-object v10

    aget v10, v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getData()[I

    move-result-object v7

    aget v7, v7, v1

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 154
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 156
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 159
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v6, "toBeRemoved":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;>;"
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;

    .line 161
    .local v4, "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSocketName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 162
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "outStream":Ljava/io/DataOutputStream;
    .end local v4    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    .end local v6    # "toBeRemoved":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;>;"
    :catchall_0
    move-exception v7

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 165
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "outStream":Ljava/io/DataOutputStream;
    .restart local v6    # "toBeRemoved":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;>;"
    :cond_5
    :try_start_3
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;

    .line 166
    .restart local v4    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getExtensionPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorType()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->unregisterSensor(Ljava/lang/String;I)V

    goto :goto_3

    .line 168
    .end local v4    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    :cond_6
    const/4 v7, 0x0

    monitor-exit v5

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "toBeRemoved":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;>;"
    :goto_4
    return v7

    .line 170
    .restart local v1    # "i":I
    :cond_7
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    const/4 v7, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getLastExtensionPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mLastExtensionPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSensorId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mLastSensorId:I

    return v0
.end method

.method public getLowestRateForSensor(I)I
    .locals 4
    .param p1, "sensorType"    # I

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "lowest":I
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;

    .line 253
    .local v2, "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorType()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 254
    if-nez v1, :cond_1

    .line 255
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorRate()I

    move-result v1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorRate()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 261
    .end local v2    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    :cond_2
    return v1
.end method

.method public getRequestRate(I)I
    .locals 2
    .param p1, "requestedRate"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "rate":I
    packed-switch p1, :pswitch_data_0

    .line 210
    const/4 v1, -0x1

    .line 212
    :goto_0
    return v1

    .line 198
    :pswitch_0
    const/16 v0, 0x64

    :goto_1
    move v1, v0

    .line 212
    goto :goto_0

    .line 201
    :pswitch_1
    const/16 v0, 0x64

    .line 202
    goto :goto_1

    .line 204
    :pswitch_2
    const/16 v0, 0x1f4

    .line 205
    goto :goto_1

    .line 207
    :pswitch_3
    const/16 v0, 0x3e8

    .line 208
    goto :goto_1

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRequestSensorId(I)I
    .locals 3
    .param p1, "sensorId"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "id":I
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getSensorTypeId(I)I

    move-result v1

    .line 178
    .local v1, "typeId":I
    packed-switch v1, :pswitch_data_0

    .line 189
    const/4 v2, -0x1

    .line 191
    :goto_0
    return v2

    .line 180
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    .line 191
    goto :goto_0

    .line 183
    :pswitch_1
    const/4 v0, 0x5

    .line 184
    goto :goto_1

    .line 186
    :pswitch_2
    const/4 v0, 0x1

    .line 187
    goto :goto_1

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSensorExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public getSensorTypeId(I)I
    .locals 10
    .param p1, "sensorId"    # I

    .prologue
    .line 216
    const/4 v8, -0x1

    .line 217
    .local v8, "sensorTypeId":I
    const/4 v6, 0x0

    .line 219
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Sensor;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "sensorId= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 226
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "sensorTypeId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 243
    :cond_0
    if-eqz v6, :cond_1

    .line 244
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_1
    return v8

    .line 230
    :catch_0
    move-exception v7

    .line 231
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const-string v0, "Failed to query sensor type id"

    invoke-static {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 243
    :cond_2
    if-eqz v6, :cond_1

    goto :goto_0

    .line 234
    .end local v7    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v7

    .line 235
    .local v7, "e":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    const-string v0, "Failed to query sensor type id"

    invoke-static {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 243
    :cond_3
    if-eqz v6, :cond_1

    goto :goto_0

    .line 238
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v7

    .line 239
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    const-string v0, "Failed to query sensor type id"

    invoke-static {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_4
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_5
    throw v0
.end method

.method public getSockets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSockets:Ljava/util/Map;

    return-object v0
.end method

.method public isSensorTypeUsed(I)Z
    .locals 3
    .param p1, "sensorType"    # I

    .prologue
    .line 265
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;

    .line 266
    .local v1, "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorType()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 267
    const/4 v2, 0x1

    .line 270
    .end local v1    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerSensor(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 8
    .param p1, "extensionPackageName"    # Ljava/lang/String;
    .param p2, "sensorType"    # I
    .param p3, "interruptOn"    # Z
    .param p4, "sensorRate"    # I
    .param p5, "socketName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 82
    monitor-enter p0

    if-eqz p3, :cond_1

    move p4, v0

    .line 84
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorMsgFactory:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;

    invoke-virtual {v3, p2, p4}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;->createRegisterSensorMsg(II)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSockets:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;

    invoke-direct {v6, p5}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;-><init>(Ljava/lang/String;)V

    .line 91
    .local v6, "socket":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->openStream()V

    .line 92
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSockets:Ljava/util/Map;

    invoke-interface {v0, p5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v6    # "socket":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->getLowestRateForSensor(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendSensorData(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;)V
    .locals 4
    .param p1, "sensorData"    # Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;

    .prologue
    .line 117
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;

    .line 118
    .local v1, "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getSensorType()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->isTimeToUpdate(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSocketName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->sendData(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    .end local v1    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    :cond_1
    return-void

    .line 124
    .restart local v1    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSensorData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->setOldTimeStamp(J)V

    goto :goto_0
.end method

.method public sendSensorErrorIntent(Ljava/lang/String;II)V
    .locals 2
    .param p1, "extensionPackageName"    # Ljava/lang/String;
    .param p2, "sensorId"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.sensor.ERROR_MESSSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "sensor_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-interface {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 279
    return-void
.end method

.method public setLastExtensionPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionPackageName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mLastExtensionPackageName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setLastSensorId(I)V
    .locals 0
    .param p1, "sensorId"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mLastSensorId:I

    .line 74
    return-void
.end method

.method public declared-synchronized unregisterSensor(Ljava/lang/String;I)V
    .locals 8
    .param p1, "extensionPackageName"    # Ljava/lang/String;
    .param p2, "sensorType"    # I

    .prologue
    .line 97
    monitor-enter p0

    const/4 v3, 0x0

    .line 98
    .local v3, "socketName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;

    .line 99
    .local v1, "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getExtensionPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSensorType()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 101
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;->getSocketName()Ljava/lang/String;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorExtensions:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "se":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorExtension;
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->isSensorTypeUsed(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 107
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSockets:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;

    .line 108
    .local v2, "socket":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;
    if-eqz v2, :cond_2

    .line 109
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSensorMsgFactory:Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;

    invoke-virtual {v7, p2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorMessageFactory;->createUnregisterSensorMsg(I)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestSensorData;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 110
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;->closeStream()V

    .line 111
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/sensor/SensorManager;->mSockets:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v2    # "socket":Lcom/sonymobile/smartconnect/hostapp/sensor/SensorSocket;
    :cond_2
    monitor-exit p0

    return-void

    .line 97
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;
.source "FotaSyncManager.java"


# static fields
.field private static final FOTA_ASW_FILE_ID:I = 0x1

.field private static final FOTA_BOOTLOADER_FILE_ID:I = 0x0

.field private static final FOTA_FS_FILE_ID:I = 0x2

.field private static final FOTA_REQUEST_MAGIC_FILE_ID:I = -0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "communicationManager"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FotaSyncHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Landroid/content/Context;I)[B
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->readRawResource(Landroid/content/Context;I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;[BILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->syncFotaFile([BILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V

    return-void
.end method

.method private getFotaBlockCid(II)I
    .locals 17
    .param p1, "file"    # I
    .param p2, "blockNbr"    # I

    .prologue
    .line 405
    const/4 v8, -0x1

    .line 407
    .local v8, "cid":I
    const-string v4, "fileId=? AND blockNbr=?"

    .line 409
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 414
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 416
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    const-string v1, "cid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 442
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_1
    return v8

    .line 422
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 423
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 424
    .local v15, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentProviderOperation;

    .line 425
    .local v14, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v14}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v16

    .line 427
    .local v16, "values":Landroid/content/ContentValues;
    if-eqz v16, :cond_4

    .line 428
    const-string v1, "fileId"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 429
    .local v13, "opFile":Ljava/lang/Integer;
    const-string v1, "blockNbr"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 430
    .local v12, "opBlockNbr":Ljava/lang/Integer;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p1

    if-ne v1, v0, :cond_4

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    .line 433
    const-string v1, "cid"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 434
    goto :goto_0

    .line 442
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "opBlockNbr":Ljava/lang/Integer;
    .end local v13    # "opFile":Ljava/lang/Integer;
    .end local v14    # "operation":Landroid/content/ContentProviderOperation;
    .end local v15    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v16    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 443
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_5
    throw v1
.end method

.method private getFotaBlockMessageId(I)I
    .locals 10
    .param p1, "cid"    # I

    .prologue
    .line 457
    const/4 v3, -0x1

    .line 461
    .local v3, "id":I
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 462
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 463
    .local v6, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 464
    .local v5, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 465
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v7

    .line 466
    .local v7, "values":Landroid/content/ContentValues;
    if-eqz v7, :cond_1

    .line 467
    const-string v8, "cid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 468
    .local v4, "opCid":Ljava/lang/Integer;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_1

    .line 470
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 478
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "opCid":Ljava/lang/Integer;
    .end local v5    # "operation":Landroid/content/ContentProviderOperation;
    .end local v6    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_2
    return v3
.end method

.method private getFotaFileBlockCids(I)[I
    .locals 12
    .param p1, "fileId"    # I

    .prologue
    .line 299
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v7, "blockCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "fileId=?"

    .line 302
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 303
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v5, "blockNbr ASC"

    .line 305
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 308
    .local v9, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "cid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 311
    .local v6, "blockCid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 314
    .end local v6    # "blockCid":I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 315
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_0
    throw v0

    :cond_1
    if-eqz v9, :cond_2

    .line 315
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [I

    .line 321
    .local v8, "blockCidsArray":[I
    const/4 v10, 0x0

    .line 322
    .local v10, "i":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 323
    .restart local v6    # "blockCid":I
    aput v6, v8, v10

    .line 324
    add-int/lit8 v10, v10, 0x1

    .line 325
    goto :goto_1

    .line 327
    .end local v6    # "blockCid":I
    :cond_3
    return-object v8
.end method

.method private getFotaFirmwareInfoCid(Z)I
    .locals 15
    .param p1, "includePendingOperations"    # Z

    .prologue
    .line 179
    const/4 v7, -0x1

    .line 181
    .local v7, "cid":I
    const-string v3, "fileId=?"

    .line 182
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 184
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "cid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 192
    :cond_0
    if-eqz v6, :cond_1

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_1
    const/4 v0, -0x1

    if-ne v0, v7, :cond_4

    if-eqz p1, :cond_4

    .line 200
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 201
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 202
    .local v13, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentProviderOperation;

    .line 203
    .local v12, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v14

    .line 205
    .local v14, "values":Landroid/content/ContentValues;
    if-eqz v14, :cond_3

    .line 206
    const-string v0, "fileId"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 207
    .local v11, "opBlockNbr":Ljava/lang/Integer;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 209
    const-string v0, "cid"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 219
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "opBlockNbr":Ljava/lang/Integer;
    .end local v12    # "operation":Landroid/content/ContentProviderOperation;
    .end local v13    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    return v7

    .line 192
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 193
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_5
    throw v0
.end method

.method private insertFotaBlock([BII)I
    .locals 12
    .param p1, "data"    # [B
    .param p2, "file"    # I
    .param p3, "blockNbr"    # I

    .prologue
    .line 342
    if-eqz p1, :cond_0

    array-length v8, p1

    if-eqz v8, :cond_0

    array-length v8, p1

    const/high16 v9, 0x10000

    if-le v8, v9, :cond_2

    .line 343
    :cond_0
    const/4 v3, -0x1

    .line 391
    :cond_1
    :goto_0
    return v3

    .line 347
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaBlockCid(II)I

    move-result v2

    .line 348
    .local v2, "cid":I
    const/4 v8, -0x1

    if-eq v8, v2, :cond_4

    .line 352
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaBlockMessageId(I)I

    move-result v3

    .line 354
    .local v3, "id":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 355
    const/4 v8, -0x1

    if-ne v8, v3, :cond_3

    const-string v0, " (acked)"

    .line 356
    .local v0, "ackStatus":Ljava/lang/String;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fota block already sent as CID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "! Not resending!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0

    .line 355
    .end local v0    # "ackStatus":Ljava/lang/String;
    :cond_3
    const-string v0, " (not acked)"

    goto :goto_1

    .line 362
    .end local v3    # "id":I
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getNewMessageId()I

    move-result v5

    .line 367
    .local v5, "messageId":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v6, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getNewCid()I

    move-result v2

    .line 371
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaBlock;

    invoke-direct {v4, v2, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaBlock;-><init>(II)V

    .line 372
    .local v4, "message":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaBlock;
    invoke-virtual {v4, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaBlock;->setData([B)V

    .line 375
    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 377
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "cid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v8, "fileId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v8, "blockNbr"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    invoke-virtual {v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p0, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->addOperations(ILjava/util/ArrayList;)V

    .line 384
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 385
    const-string v8, "Sending fota block message. id: %d, cid: %d, file: %d, number: %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 389
    :cond_5
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    move v3, v5

    .line 391
    goto/16 :goto_0
.end method

.method private readRawResource(Landroid/content/Context;I)[B
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 489
    const/4 v5, 0x0

    .line 491
    .local v5, "fwData":[B
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 492
    .local v6, "inputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 493
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 494
    .local v3, "dos":Ljava/io/DataOutputStream;
    const/16 v7, 0x1000

    new-array v2, v7, [B

    .line 497
    .local v2, "data":[B
    :try_start_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 498
    .local v1, "count":I
    :goto_0
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 499
    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 500
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 511
    if-eqz v3, :cond_1

    .line 513
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 521
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 523
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 531
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 533
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 543
    .end local v1    # "count":I
    :cond_3
    :goto_3
    return-object v5

    .line 504
    :catch_0
    move-exception v4

    .line 505
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 506
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to read firmware! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 511
    :cond_4
    if-eqz v3, :cond_5

    .line 513
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 521
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 523
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 531
    :cond_6
    :goto_5
    if-eqz v6, :cond_3

    .line 533
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 534
    :catch_1
    move-exception v4

    .line 535
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 536
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_3

    .line 511
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_7

    .line 513
    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 521
    :cond_7
    :goto_7
    if-eqz v0, :cond_8

    .line 523
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 531
    :cond_8
    :goto_8
    if-eqz v6, :cond_9

    .line 533
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 511
    :cond_9
    :goto_9
    throw v7

    .line 514
    :catch_2
    move-exception v4

    .line 515
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 516
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 517
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close output stream! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_7

    .line 524
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 525
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 526
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close output stream! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_8

    .line 534
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 535
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 536
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 537
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_9

    .line 514
    :catch_5
    move-exception v4

    .line 515
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 516
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close output stream! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 524
    :catch_6
    move-exception v4

    .line 525
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 526
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close output stream! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 514
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "count":I
    :catch_7
    move-exception v4

    .line 515
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 516
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close output stream! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 524
    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 525
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 526
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close output stream! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 534
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 535
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 536
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6
.end method

.method private syncFotaFile([BILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "file"    # I
    .param p3, "listenerInfo"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    .prologue
    const/high16 v6, 0x10000

    .line 128
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 158
    :cond_0
    return-void

    .line 133
    :cond_1
    array-length v5, p1

    div-int v3, v5, v6

    .line 134
    .local v3, "nBlocks":I
    array-length v5, p1

    rem-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 135
    add-int/lit8 v3, v3, 0x1

    .line 138
    :cond_2
    if-eqz p3, :cond_3

    .line 139
    invoke-virtual {p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->getRequiredMessagesCount()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p3, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->setRequiredMessagesCount(I)V

    .line 143
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 144
    mul-int v4, v1, v6

    .line 145
    .local v4, "offset":I
    const/high16 v0, 0x10000

    .line 146
    .local v0, "blockSize":I
    add-int/lit8 v5, v3, -0x1

    if-ne v1, v5, :cond_4

    .line 148
    array-length v5, p1

    rem-int v0, v5, v6

    .line 151
    :cond_4
    add-int v5, v4, v0

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {p0, v5, p2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->insertFotaBlock([BII)I

    move-result v2

    .line 154
    .local v2, "messageId":I
    const/4 v5, -0x1

    if-eq v5, v2, :cond_5

    if-eqz p3, :cond_5

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->addId(Ljava/lang/Integer;)V

    .line 143
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearFotaFromPendingOperations()V
    .locals 9

    .prologue
    .line 595
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v4, "keysToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 600
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 601
    .local v6, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 602
    .local v5, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "operation":Landroid/content/ContentProviderOperation;
    .end local v6    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 609
    .local v3, "key":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 611
    .end local v3    # "key":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public getFotaFirmwareInfoCid()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaFirmwareInfoCid(Z)I

    move-result v0

    return v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 616
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 75
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public resetFota(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method

.method public sendFotaFirmwareInfo(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)I
    .locals 13
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    .prologue
    .line 235
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 236
    const-string v11, "sendFotaFirmwareInfo()"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 240
    :cond_0
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaFirmwareInfoCid(Z)I

    move-result v3

    .line 242
    .local v3, "cid":I
    const/4 v11, -0x1

    if-eq v11, v3, :cond_2

    .line 243
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 244
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fota firmware info already sent as CID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "! Not resending!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 246
    :cond_1
    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;->onSynced()V

    move v4, v3

    .line 285
    .end local v3    # "cid":I
    .local v4, "cid":I
    :goto_0
    return v4

    .line 249
    .end local v4    # "cid":I
    .restart local v3    # "cid":I
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getNewCid()I

    move-result v3

    .line 251
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaFileBlockCids(I)[I

    move-result-object v1

    .line 252
    .local v1, "bootloaderBlocks":[I
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaFileBlockCids(I)[I

    move-result-object v0

    .line 253
    .local v0, "aswBlocks":[I
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaFileBlockCids(I)[I

    move-result-object v5

    .line 259
    .local v5, "fsBlocks":[I
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getNewMessageId()I

    move-result v6

    .line 261
    .local v6, "messageId":I
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;

    invoke-direct {v7, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;-><init>(II)V

    .line 262
    .local v7, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;
    invoke-virtual {v7, v1, v0, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->setBlockCids([I[I[I)V

    .line 264
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v8, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v11, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;->URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 267
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "cid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v11, "fileId"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v11, "blockNbr"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    invoke-virtual {v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p0, v6, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->addOperations(ILjava/util/ArrayList;)V

    .line 274
    if-eqz p1, :cond_3

    .line 275
    new-instance v9, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;

    invoke-direct {v9, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V

    .line 276
    .local v9, "syncListenerInfo":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->addId(Ljava/lang/Integer;)V

    .line 277
    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;->setAllMessagesAdded()V

    .line 278
    invoke-virtual {p0, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->addSyncListenerInfo(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;)V

    .line 280
    .end local v9    # "syncListenerInfo":Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListenerInfo;
    :cond_3
    const/4 v11, 0x1

    new-array v11, v11, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {p0, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 282
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 283
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendFotaFirmwareInfo returning with cid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    :cond_4
    move v4, v3

    .line 285
    .end local v3    # "cid":I
    .restart local v4    # "cid":I
    goto/16 :goto_0
.end method

.method public varargs sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 555
    return-void
.end method

.method public sendFotaProgressMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendFotaProgress(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 564
    return-void
.end method

.method public syncFotaFiles(IIILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V
    .locals 7
    .param p1, "bootloaderId"    # I
    .param p2, "aswId"    # I
    .param p3, "fsId"    # I
    .param p4, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    .prologue
    .line 97
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

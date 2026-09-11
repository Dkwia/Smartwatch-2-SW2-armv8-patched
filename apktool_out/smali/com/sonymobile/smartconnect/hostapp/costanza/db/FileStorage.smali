.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStorageFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->getStorageFolder()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->mStorageFolder:Ljava/io/File;

    .line 32
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->mStorageFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 33
    return-void
.end method

.method private openFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->mStorageFolder:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private openFileInput(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->openFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private openFileOutput(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->openFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method protected abstract getStorageFolder()Ljava/lang/String;
.end method

.method protected abstract getStorageVersion()I
.end method

.method public loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z
    .locals 14
    .param p1, "p"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, "inputStream":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 66
    .local v1, "failedLoading":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 67
    .local v4, "startTime":J
    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->openFileInput(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .local v3, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 69
    .local v6, "version":I
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->getStorageVersion()I

    move-result v9

    if-ne v6, v9, :cond_3

    .line 70
    invoke-interface {p1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->loadPersistedState(Ljava/io/DataInputStream;)V

    .line 71
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 72
    const-string v9, "Loaded resources in %d ms, %s."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 88
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v2, v3

    .line 95
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v4    # "startTime":J
    .end local v6    # "version":I
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :cond_2
    :goto_2
    if-nez v1, :cond_5

    :goto_3
    return v7

    .line 75
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "startTime":J
    .restart local v6    # "version":I
    :cond_3
    const/4 v1, 0x1

    .line 76
    :try_start_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 77
    const-string v9, "Wrong version of stored data found, %s."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 80
    .end local v6    # "version":I
    :catch_0
    move-exception v9

    move-object v2, v3

    .line 86
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v4    # "startTime":J
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :goto_4
    if-eqz v2, :cond_2

    .line 88
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 89
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "Failed closing file with cached resources after reading."

    new-array v10, v8, [Ljava/lang/Object;

    :goto_5
    invoke-static {v0, v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    const/4 v1, 0x1

    .line 84
    :try_start_5
    const-string v9, "Failed loading cached resources, %s."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v0, v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    if-eqz v2, :cond_2

    .line 88
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 89
    :catch_3
    move-exception v0

    .line 90
    const-string v9, "Failed closing file with cached resources after reading."

    new-array v10, v8, [Ljava/lang/Object;

    goto :goto_5

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v2, :cond_4

    .line 88
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 86
    :cond_4
    :goto_8
    throw v7

    :cond_5
    move v7, v8

    .line 95
    goto :goto_3

    .line 89
    :catch_4
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "Failed closing file with cached resources after reading."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v9, v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "startTime":J
    .restart local v6    # "version":I
    :catch_5
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "Failed closing file with cached resources after reading."

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v0, v9, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "version":I
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_7

    .line 82
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    goto :goto_6

    .line 80
    .end local v4    # "startTime":J
    :catch_7
    move-exception v9

    goto :goto_4
.end method

.method public persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V
    .locals 8
    .param p1, "p"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;

    .prologue
    const/4 v7, 0x0

    .line 36
    const/4 v1, 0x0

    .line 39
    .local v1, "outputStream":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->openFileOutput(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v1    # "outputStream":Ljava/io/DataOutputStream;
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->getStorageVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 41
    invoke-interface {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persist(Ljava/io/DataOutputStream;)V

    .line 42
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "Persisted resources, %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :cond_0
    if-eqz v2, :cond_1

    .line 50
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v1, v2

    .line 56
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v1    # "outputStream":Ljava/io/DataOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v3, "Failed persisting cached resources, %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;->persistableName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    if-eqz v1, :cond_2

    .line 50
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 51
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Failed closing file with cached resources after writing."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_3

    .line 50
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 48
    :cond_3
    :goto_4
    throw v3

    .line 51
    :catch_2
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "Failed closing file with cached resources after writing."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v2    # "outputStream":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v0

    .line 52
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "Failed closing file with cached resources after writing."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v1    # "outputStream":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 45
    .end local v1    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v2    # "outputStream":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v1    # "outputStream":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public reset()V
    .locals 9

    .prologue
    .line 99
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;->getStorageFolder()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 100
    .local v5, "storageFolder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 101
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 102
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

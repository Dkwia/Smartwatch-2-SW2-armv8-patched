.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;
.super Landroid/content/ContentProvider;
.source "SyncDataProvider.java"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 279
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 280
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.smartconnect.smartwatch2.db"

    const-string v2, "event"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.smartconnect.smartwatch2.db"

    const-string v2, "extension"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.smartconnect.smartwatch2.db"

    const-string v2, "notificationsource"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.smartconnect.smartwatch2.db"

    const-string v2, "fotablock"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 163
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "count":I
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 187
    :pswitch_0
    new-instance v2, Landroid/database/SQLException;

    const-string v3, "Invalid uri for this content provider."

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Error during bulk insert in SyncDataProvider"

    invoke-static {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 189
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncProvider bulkInsert returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 195
    return v0

    .line 172
    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 173
    aget-object v3, p2, v0

    invoke-virtual {p0, p1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    .line 178
    :cond_0
    array-length v3, p2

    if-ne v0, v3, :cond_2

    .line 179
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 184
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 166
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "count":I
    const/4 v1, 0x0

    .line 60
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 76
    :pswitch_0
    new-instance v3, Landroid/database/SQLException;

    const-string v4, "Invalid uri for this content provider."

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "Error during SyncDataProvider delete."

    invoke-static {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 81
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-eqz v1, :cond_0

    .line 85
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 97
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 99
    return v0

    .line 64
    :pswitch_1
    :try_start_3
    const-string v3, "event"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 78
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    if-eqz v1, :cond_0

    .line 85
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v2

    .line 87
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 92
    const-string v3, "Error during endTransaction()."

    :goto_2
    invoke-static {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 67
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :pswitch_2
    :try_start_5
    const-string v3, "extension"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 68
    goto :goto_1

    .line 70
    :pswitch_3
    const-string v3, "notification_source"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 71
    goto :goto_1

    .line 73
    :pswitch_4
    const-string v3, "fotablock"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    .line 74
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 85
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 83
    :cond_1
    :goto_3
    throw v3

    .line 86
    :catch_2
    move-exception v2

    .line 87
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 92
    const-string v4, "Error during endTransaction()."

    invoke-static {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_3

    .line 86
    .local v2, "e":Landroid/database/SQLException;
    :catch_3
    move-exception v2

    .line 87
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 92
    const-string v3, "Error during endTransaction()."

    goto :goto_2

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 39
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 40
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 50
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 42
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/aef-event"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v1, "vnd.android.cursor.dir/aef-extension"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/aef-notificationsource"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v1, "vnd.android.cursor.dir/aef-fotablock"

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 105
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v4

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 113
    .local v2, "id":J
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 115
    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 129
    :pswitch_0
    new-instance v5, Landroid/database/SQLException;

    const-string v6, "Invalid uri for this content provider."

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v5, "Error during insert in SyncDataProvider"

    invoke-static {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 134
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    if-eqz v0, :cond_2

    .line 138
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 150
    .end local v1    # "e":Landroid/database/SQLException;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 151
    .local v4, "result":Landroid/net/Uri;
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    .line 152
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 117
    .end local v4    # "result":Landroid/net/Uri;
    :pswitch_1
    :try_start_3
    const-string v5, "event"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 131
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    if-eqz v0, :cond_2

    .line 138
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 139
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 145
    const-string v5, "Error during endTransaction()."

    :goto_3
    invoke-static {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 120
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :pswitch_2
    :try_start_5
    const-string v5, "extension"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 121
    goto :goto_2

    .line 123
    :pswitch_3
    const-string v5, "notification_source"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 124
    goto :goto_2

    .line 126
    :pswitch_4
    const-string v5, "fotablock"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v2

    .line 127
    goto :goto_2

    .line 136
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 138
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 136
    :cond_3
    :goto_4
    throw v5

    .line 139
    :catch_2
    move-exception v1

    .line 140
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 145
    const-string v6, "Error during endTransaction()."

    invoke-static {v6, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_4

    .line 139
    .local v1, "e":Landroid/database/SQLException;
    :catch_3
    move-exception v1

    .line 140
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 145
    const-string v5, "Error during endTransaction()."

    goto :goto_3

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 255
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 273
    :pswitch_0
    new-instance v1, Landroid/database/SQLException;

    const-string v2, "Invalid uri for this content provider."

    invoke-direct {v1, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :pswitch_1
    const-string v1, "event"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 275
    :goto_0
    return-object v8

    .line 261
    :pswitch_2
    const-string v1, "extension"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 263
    goto :goto_0

    .line 265
    :pswitch_3
    const-string v1, "notification_source"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 267
    goto :goto_0

    .line 269
    :pswitch_4
    const-string v1, "fotablock"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 271
    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 201
    :cond_0
    const/4 v0, -0x1

    .line 247
    :goto_0
    return v0

    .line 204
    :cond_1
    const/4 v1, 0x0

    .line 205
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 208
    .local v0, "count":I
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 210
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDataProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 224
    :pswitch_0
    new-instance v3, Landroid/database/SQLException;

    const-string v4, "Invalid uri for this content provider."

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "Error during update in SyncDataProvider"

    invoke-static {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 229
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    if-eqz v1, :cond_2

    .line 233
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 245
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    goto :goto_0

    .line 212
    :pswitch_1
    :try_start_3
    const-string v3, "event"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 226
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    if-eqz v1, :cond_2

    .line 233
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 234
    :catch_1
    move-exception v2

    .line 235
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 240
    const-string v3, "Error during endTransaction()."

    :goto_3
    invoke-static {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 215
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :pswitch_2
    :try_start_5
    const-string v3, "extension"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 216
    goto :goto_2

    .line 218
    :pswitch_3
    const-string v3, "notification_source"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 219
    goto :goto_2

    .line 221
    :pswitch_4
    const-string v3, "fotablock"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    .line 222
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 233
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 231
    :cond_3
    :goto_4
    throw v3

    .line 234
    :catch_2
    move-exception v2

    .line 235
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 240
    const-string v4, "Error during endTransaction()."

    invoke-static {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_4

    .line 234
    .local v2, "e":Landroid/database/SQLException;
    :catch_3
    move-exception v2

    .line 235
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 240
    const-string v3, "Error during endTransaction()."

    goto :goto_3

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

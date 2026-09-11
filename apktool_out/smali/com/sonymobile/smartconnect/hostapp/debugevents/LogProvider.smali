.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;
.super Landroid/content/ContentProvider;
.source "LogProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.smartconnect.hostapp.debugevents.LogProvider"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/debugevent"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/debugevents"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEBUGEVENTS:I = 0x64

.field private static final DEBUGEVENTS_BASE_PATH:Ljava/lang/String; = "debugevents"

.field public static final DEBUGEVENT_ID:I = 0x6e

.field private static final LOG_LENGTH:J = 0x1f4L

.field private static final URIMATCHER:Landroid/content/UriMatcher;

.field private static sIsCapped:Z


# instance fields
.field private mDB:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "content://com.sonymobile.smartconnect.hostapp.debugevents.LogProvider/debugevents"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    .line 62
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.smartconnect.hostapp.debugevents.LogProvider"

    const-string v2, "debugevents"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.smartconnect.hostapp.debugevents.LogProvider"

    const-string v2, "debugevents/#"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->sIsCapped:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static insertLogMessage(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    .prologue
    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "message"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "time"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getTimeAsMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getType()Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->getTypeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v1, "dumpname"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getDumpFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 82
    return-void
.end method

.method public static declared-synchronized setCapped(Z)V
    .locals 2
    .param p0, "isCappedOn"    # Z

    .prologue
    .line 91
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->sIsCapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 96
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 97
    .local v3, "uriType":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->mDB:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 98
    .local v2, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 99
    .local v1, "rowsAffected":I
    sparse-switch v3, :sswitch_data_0

    .line 118
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown or Invalid URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :sswitch_0
    const-string v4, "debugevents"

    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 121
    return v1

    .line 105
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "id":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const-string v4, "debugevents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 110
    :cond_0
    const-string v4, "debugevents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 116
    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 127
    .local v0, "uriType":I
    sparse-switch v0, :sswitch_data_0

    .line 133
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 129
    :sswitch_0
    const-string v1, "vnd.android.cursor.dir/debugevents"

    goto :goto_0

    .line 131
    :sswitch_1
    const-string v1, "vnd.android.cursor.item/debugevent"

    goto :goto_0

    .line 127
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 140
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 141
    .local v6, "uriType":I
    const/16 v7, 0x64

    if-eq v6, v7, :cond_0

    .line 142
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid URI for insert"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 144
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->mDB:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 145
    .local v5, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "debugevents"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 147
    .local v0, "newID":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-lez v7, :cond_2

    .line 148
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 151
    .local v4, "result":Landroid/net/Uri;
    const-wide/16 v8, 0x1f4

    sub-long v2, v0, v8

    .line 152
    .local v2, "oldestID":J
    sget-boolean v7, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->sIsCapped:Z

    if-eqz v7, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    .line 153
    const-string v7, "debugevents"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 160
    return-object v4

    .line 157
    .end local v2    # "oldestID":J
    .end local v4    # "result":Landroid/net/Uri;
    :cond_2
    new-instance v7, Landroid/database/SQLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to insert row into "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->mDB:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 172
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 173
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "debugevents"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 176
    .local v9, "uriType":I
    sparse-switch v9, :sswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 188
    :sswitch_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->mDB:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 190
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 191
    return-object v8

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 197
    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->URIMATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 198
    .local v4, "uriType":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->mDB:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 202
    .local v3, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch v4, :sswitch_data_0

    .line 220
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unknown URI"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :sswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "modSelection":Ljava/lang/StringBuilder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_0
    const-string v5, "debugevents"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 222
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "modSelection":Ljava/lang/StringBuilder;
    .local v2, "rowsAffected":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 223
    return v2

    .line 216
    .end local v2    # "rowsAffected":I
    :sswitch_1
    const-string v5, "debugevents"

    invoke-virtual {v3, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 218
    .restart local v2    # "rowsAffected":I
    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

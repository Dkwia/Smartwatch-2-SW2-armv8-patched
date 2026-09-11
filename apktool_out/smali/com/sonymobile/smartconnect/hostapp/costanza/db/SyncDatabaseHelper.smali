.class Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SyncDatabaseHelper.java"


# static fields
.field private static final CID_COUNT_TRIGGER_NAME:Ljava/lang/String; = "cid_count_trigger"

.field private static final DATABASE_NAME:Ljava/lang/String; = "synchronization.db"

.field public static final DATABASE_VERSION:I = 0xc

.field static final EVENT_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS event (_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER UNIQUE NOT NULL,cid INTEGER UNIQUE NOT NULL,extension_id INTEGER NOT NULL,sourceId INTEGER NOT NULL, message TEXT, imageUri TEXT, publishedTime UNSIGNED BIG INT NOT NULL, title TEXT, personal SHORT INTEGER NOT NULL, geoData TEXT, readStatus SHORT INTEGER NOT NULL DEFAULT 0, timeStamp UNSIGNED BIG INT DEFAULT CURRENT_TIMESTAMP, display_name TEXT, profile_image_uri TEXT, contacts_reference TEXT, friend_key TEXT, extension_cid INTEGER,CHECK (readStatus IN (0,1)))"

.field static final EXTENSION_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS extension (_id INTEGER PRIMARY KEY AUTOINCREMENT, cid INTEGER NOT NULL, extensionId INTEGER NOT NULL, name TEXT NOT NULL, configurationActivity TEXT, configurationText TEXT, iconLargeUri TEXT, iconSmallUri TEXT, extensionIconUri TEXT, extension48PxIconUri TEXT, extensionIconUriBlackWhite TEXT, extension_key TEXT NOT NULL, notificationApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, packageName TEXT UNIQUE NOT NULL, launchMode UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, hostAppPackageName TEXT, widgetApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, controlApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, sensorApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, lowPowerSupport UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, controlBackIntercept UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, isInstalled UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, apiRegistrationId INTEGER NOT NULL, CONSTRAINT extIdHostAppPkgUnique UNIQUE (extensionId, hostAppPackageName))"

.field static final FOTA_BLOCK_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS fotablock (_id INTEGER PRIMARY KEY AUTOINCREMENT,cid INTEGER UNIQUE NOT NULL,blockNbr INTEGER NOT NULL,fileId INTEGER NOT NULL)"

.field private static final IMAGE_TABLE_NAME:Ljava/lang/String; = "image"

.field private static final NEW_CID_TABLE_NAME:Ljava/lang/String; = "new_cid"

.field static final NOTIFICATION_SOURCE_SQL:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS notification_source (_id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL,name TEXT NOT NULL, iconUri1 TEXT, iconUri2 TEXT, iconUriBlackWhite TEXT, enabled SHORT INTEGER NOT NULL DEFAULT 0, action_1 TEXT, action_2 TEXT, action_3 TEXT, action_icon_1 TEXT, action_icon_2 TEXT, action_icon_3 TEXT, updateTime UNSIGNED BIG INT, cid INTEGER NOT NULL, textToSpeech TEXT, color INTEGER, extension_specific_id TEXT, packageName TEXT NOT NULL, CHECK (enabled IN (0,1)))"

.field private static final RESOURCE_MASTER_STRING_TABLE_NAME:Ljava/lang/String; = "resource_master_string"

.field private static final RESOURCE_STRING_TABLE_NAME:Ljava/lang/String; = "resource_string"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const-string v0, "synchronization.db"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 128
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method private dropAllDatabaseObjects(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqliteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 175
    const-string v0, "DROP TRIGGER IF EXISTS cid_count_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "DROP TABLE IF EXISTS new_cid"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "DROP TABLE IF EXISTS event"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v0, "DROP TABLE IF EXISTS resource_string"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "DROP TABLE IF EXISTS resource_master_string"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "DROP TABLE IF EXISTS image"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v0, "DROP TABLE IF EXISTS extension"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "DROP TABLE IF EXISTS notification_source"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v0, "DROP TABLE IF EXISTS fotablock"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method private requestFactoryReset()V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 171
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->requestReset()V

    .line 172
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "sqliteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 134
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS event (_id INTEGER PRIMARY KEY AUTOINCREMENT,event_id INTEGER UNIQUE NOT NULL,cid INTEGER UNIQUE NOT NULL,extension_id INTEGER NOT NULL,sourceId INTEGER NOT NULL, message TEXT, imageUri TEXT, publishedTime UNSIGNED BIG INT NOT NULL, title TEXT, personal SHORT INTEGER NOT NULL, geoData TEXT, readStatus SHORT INTEGER NOT NULL DEFAULT 0, timeStamp UNSIGNED BIG INT DEFAULT CURRENT_TIMESTAMP, display_name TEXT, profile_image_uri TEXT, contacts_reference TEXT, friend_key TEXT, extension_cid INTEGER,CHECK (readStatus IN (0,1)))"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    const-string v1, "CREATE TABLE IF NOT EXISTS extension (_id INTEGER PRIMARY KEY AUTOINCREMENT, cid INTEGER NOT NULL, extensionId INTEGER NOT NULL, name TEXT NOT NULL, configurationActivity TEXT, configurationText TEXT, iconLargeUri TEXT, iconSmallUri TEXT, extensionIconUri TEXT, extension48PxIconUri TEXT, extensionIconUriBlackWhite TEXT, extension_key TEXT NOT NULL, notificationApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, packageName TEXT UNIQUE NOT NULL, launchMode UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, hostAppPackageName TEXT, widgetApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, controlApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, sensorApiVersion UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, lowPowerSupport UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, controlBackIntercept UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, isInstalled UNSIGNED SHORT INTEGER NOT NULL DEFAULT 0, apiRegistrationId INTEGER NOT NULL, CONSTRAINT extIdHostAppPkgUnique UNIQUE (extensionId, hostAppPackageName))"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const-string v1, "CREATE TABLE IF NOT EXISTS notification_source (_id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL,name TEXT NOT NULL, iconUri1 TEXT, iconUri2 TEXT, iconUriBlackWhite TEXT, enabled SHORT INTEGER NOT NULL DEFAULT 0, action_1 TEXT, action_2 TEXT, action_3 TEXT, action_icon_1 TEXT, action_icon_2 TEXT, action_icon_3 TEXT, updateTime UNSIGNED BIG INT, cid INTEGER NOT NULL, textToSpeech TEXT, color INTEGER, extension_specific_id TEXT, packageName TEXT NOT NULL, CHECK (enabled IN (0,1)))"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    const-string v1, "CREATE TABLE IF NOT EXISTS fotablock (_id INTEGER PRIMARY KEY AUTOINCREMENT,cid INTEGER UNIQUE NOT NULL,blockNbr INTEGER NOT NULL,fileId INTEGER NOT NULL)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string v1, "Database created."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 143
    const-string v1, "Error creating Synchronization database."

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "sqliteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 160
    const-string v0, "Database downgrade - drop all tables."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 162
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->dropAllDatabaseObjects(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->requestFactoryReset()V

    .line 167
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "sqliteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 149
    const-string v0, "Database upgrade - drop all tables."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 151
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->dropAllDatabaseObjects(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncDatabaseHelper;->requestFactoryReset()V

    .line 156
    return-void
.end method

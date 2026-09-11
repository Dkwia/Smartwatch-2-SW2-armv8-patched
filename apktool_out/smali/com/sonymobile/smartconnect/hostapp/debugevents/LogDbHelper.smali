.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogDbHelper.java"


# static fields
.field public static final COL_DUMPFILENAME:Ljava/lang/String; = "dumpname"

.field public static final COL_ID:Ljava/lang/String; = "_id"

.field public static final COL_MESSAGE:Ljava/lang/String; = "message"

.field public static final COL_TIME:Ljava/lang/String; = "time"

.field public static final COL_TYPE:Ljava/lang/String; = "type"

.field private static final CREATE_TABLE_DEBUGEVENTS:Ljava/lang/String; = "create table debugevents (_id integer primary key autoincrement, message text not null, time int8 not null, type int not null, dumpname text);"

.field private static final DB_NAME:Ljava/lang/String; = "debugevent_data"

.field private static final DB_SCHEMA:Ljava/lang/String; = "create table debugevents (_id integer primary key autoincrement, message text not null, time int8 not null, type int not null, dumpname text);"

.field private static final DB_VERSION:I = 0xc

.field public static final DUMP_DIRECTORY:Ljava/lang/String;

.field static final PROJECTION_ALL_COLS:[Ljava/lang/String;

.field public static final TABLE_DEBUGEVENTS:Ljava/lang/String; = "debugevents"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dumps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->DUMP_DIRECTORY:Ljava/lang/String;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dumpname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->PROJECTION_ALL_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string v0, "debugevent_data"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 98
    return-void
.end method

.method public static getLogMessage(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 82
    const-string v4, "message"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "message":Ljava/lang/String;
    const-string v4, "type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->getTypeForId(I)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    move-result-object v3

    .line 85
    .local v3, "type":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 86
    .local v2, "time":Landroid/text/format/Time;
    const-string v4, "time"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 87
    const-string v4, "dumpname"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "dumpName":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;Landroid/text/format/Time;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 102
    const-string v0, "create table debugevents (_id integer primary key autoincrement, message text not null, time int8 not null, type int not null, dumpname text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database. Existing contents will be lost. ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "DROP TABLE IF EXISTS debugevents"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    return-void
.end method

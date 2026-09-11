.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;
.super Ljava/lang/Object;
.source "SyncData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSourceColumns;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlockColumns;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$FotaBlock;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$ExtensionColumns;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$EventColumns;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$CostanzaBaseColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.smartconnect.smartwatch2.db"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final DIR_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field public static final EVENTS_MATCH:I = 0x64

.field public static final EXTENSIONS_MATCH:I = 0x6a

.field public static final FOTA_BLOCK_MATCH:I = 0x6c

.field public static final NOTIFICATION_SOURCE_MATCH:I = 0x6b


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://com.sonymobile.smartconnect.smartwatch2.db"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

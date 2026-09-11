.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;
.super Ljava/lang/Object;
.source "SyncData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Event"
.end annotation


# static fields
.field public static final EVENTS_PATH:Ljava/lang/String; = "event"

.field public static final EVENT_READ_STATUS_PATH:Ljava/lang/String; = "read_status"

.field public static final MIME_TYPE:Ljava/lang/String; = "aef-event"

.field public static final READ_STATUS_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "event"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;->BASE_URI:Landroid/net/Uri;

    const-string v1, "event"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    .line 65
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;->BASE_URI:Landroid/net/Uri;

    const-string v1, "read_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->READ_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

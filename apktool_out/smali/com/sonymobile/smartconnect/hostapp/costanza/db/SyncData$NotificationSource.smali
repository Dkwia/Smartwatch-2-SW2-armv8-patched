.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;
.super Ljava/lang/Object;
.source "SyncData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationSource"
.end annotation


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "aef-notificationsource"

.field public static final NOTIFICATION_SOURCES_PATH:Ljava/lang/String; = "notificationsource"

.field public static final TABLE_NAME:Ljava/lang/String; = "notification_source"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 721
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;->BASE_URI:Landroid/net/Uri;

    const-string v1, "notificationsource"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;->URI:Landroid/net/Uri;

    return-void
.end method

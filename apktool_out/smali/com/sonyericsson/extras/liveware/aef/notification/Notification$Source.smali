.class public interface abstract Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Source;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/aef/notification/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Source"
.end annotation


# static fields
.field public static final MIME_TYPE:Ljava/lang/String; = "aef-source"

.field public static final SOURCES_PATH:Ljava/lang/String; = "source"

.field public static final TABLE_NAME:Ljava/lang/String; = "source"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 549
    sget-object v0, Lcom/sonyericsson/extras/liveware/aef/notification/Notification;->BASE_URI:Landroid/net/Uri;

    const-string v1, "source"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Source;->URI:Landroid/net/Uri;

    return-void
.end method

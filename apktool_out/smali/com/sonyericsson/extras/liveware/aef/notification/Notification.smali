.class public Lcom/sonyericsson/extras/liveware/aef/notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/extras/liveware/aef/notification/Notification$SourceEventColumns;,
        Lcom/sonyericsson/extras/liveware/aef/notification/Notification$SourceEvent;,
        Lcom/sonyericsson/extras/liveware/aef/notification/Notification$EventColumns;,
        Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Event;,
        Lcom/sonyericsson/extras/liveware/aef/notification/Notification$SourceColumns;,
        Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Source;,
        Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Intents;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.extras.liveware.aef.notification"

.field protected static final BASE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    const-string v0, "content://com.sonyericsson.extras.liveware.aef.notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/notification/Notification;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    return-void
.end method

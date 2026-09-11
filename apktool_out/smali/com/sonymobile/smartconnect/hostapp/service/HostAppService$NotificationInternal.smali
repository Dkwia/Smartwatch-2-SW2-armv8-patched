.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;
.super Ljava/lang/Object;
.source "HostAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationInternal"
.end annotation


# static fields
.field public static final ADDED_EVENT_PATH:Ljava/lang/String; = "added_event"

.field public static final ADDED_EVENT_URI:Landroid/net/Uri;

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final DELETED_EVENT_PATH:Ljava/lang/String; = "deleted_event"

.field public static final DELETED_EVENT_URI:Landroid/net/Uri;

.field public static final UPDATED_EVENT_PATH:Ljava/lang/String; = "updated_event"

.field public static final UPDATED_EVENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "content://com.sonyericsson.extras.liveware.aef.notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->BASE_URI:Landroid/net/Uri;

    .line 123
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->BASE_URI:Landroid/net/Uri;

    const-string v1, "added_event"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->ADDED_EVENT_URI:Landroid/net/Uri;

    .line 128
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->BASE_URI:Landroid/net/Uri;

    const-string v1, "deleted_event"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->DELETED_EVENT_URI:Landroid/net/Uri;

    .line 133
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->BASE_URI:Landroid/net/Uri;

    const-string v1, "updated_event"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->UPDATED_EVENT_URI:Landroid/net/Uri;

    return-void
.end method

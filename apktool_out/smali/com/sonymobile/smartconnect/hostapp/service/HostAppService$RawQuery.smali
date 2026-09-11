.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$RawQuery;
.super Ljava/lang/Object;
.source "HostAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/service/HostAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RawQuery"
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final RAW_QUERY_MIME_TYPE:Ljava/lang/String; = "aef-raw_query"

.field public static final RAW_QUERY_PATH:Ljava/lang/String; = "raw_query"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "content://com.sonyericsson.extras.liveware.aef.registration"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$RawQuery;->BASE_URI:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$RawQuery;->BASE_URI:Landroid/net/Uri;

    const-string v1, "raw_query"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$RawQuery;->URI:Landroid/net/Uri;

    return-void
.end method

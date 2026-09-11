.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;
.super Ljava/lang/Object;
.source "SyncData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Extension"
.end annotation


# static fields
.field public static final EXTENSIONS_PATH:Ljava/lang/String; = "extension"

.field public static final MIME_TYPE:Ljava/lang/String; = "aef-extension"

.field public static final TABLE_NAME:Ljava/lang/String; = "extension"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData;->BASE_URI:Landroid/net/Uri;

    const-string v1, "extension"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    return-void
.end method

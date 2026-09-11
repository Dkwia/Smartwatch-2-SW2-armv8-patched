.class public interface abstract Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Input;
.super Ljava/lang/Object;
.source "Registration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/aef/registration/Registration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Input"
.end annotation


# static fields
.field public static final INPUTS_PATH:Ljava/lang/String; = "input"

.field public static final MIME_TYPE:Ljava/lang/String; = "aef-input"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1529
    sget-object v0, Lcom/sonyericsson/extras/liveware/aef/registration/Registration;->BASE_URI:Landroid/net/Uri;

    const-string v1, "input"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Input;->URI:Landroid/net/Uri;

    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resIdtoUri(ILandroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p0, "previewResId"    # I
    .param p1, "c"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "android.resource://%s/%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static resIdtoUriString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "previewResId"    # I
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/util/UriUtil;->resIdtoUri(ILandroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

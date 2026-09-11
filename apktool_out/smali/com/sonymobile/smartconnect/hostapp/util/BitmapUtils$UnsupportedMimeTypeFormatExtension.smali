.class public Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$UnsupportedMimeTypeFormatExtension;
.super Ljava/lang/IllegalArgumentException;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedMimeTypeFormatExtension"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7b5b590d1bf05f82L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 202
    const-string v0, "Unsupported mime-type %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    return-void
.end method

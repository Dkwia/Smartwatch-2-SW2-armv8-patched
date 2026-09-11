.class public final enum Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;
.super Ljava/lang/Enum;
.source "ResourceCompressedImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

.field public static final enum IMAGE_TYPE_ABGR:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

.field public static final enum IMAGE_TYPE_BMP:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

.field public static final enum IMAGE_TYPE_JPEG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

.field public static final enum IMAGE_TYPE_PNG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

.field public static final enum IMAGE_TYPE_ZLIB:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    const-string v1, "IMAGE_TYPE_PNG"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_PNG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    .line 28
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    const-string v1, "IMAGE_TYPE_JPEG"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_JPEG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    .line 29
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    const-string v1, "IMAGE_TYPE_BMP"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_BMP:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    .line 30
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    const-string v1, "IMAGE_TYPE_ABGR"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_ABGR:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    .line 31
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    const-string v1, "IMAGE_TYPE_ZLIB"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_ZLIB:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_PNG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_JPEG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_BMP:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_ABGR:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_ZLIB:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    return-object v0
.end method

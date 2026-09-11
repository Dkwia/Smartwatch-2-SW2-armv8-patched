.class public final enum Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;
.super Ljava/lang/Enum;
.source "ImageBufferPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageBufferId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

.field public static final enum DeflateBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

.field public static final enum PixelBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    const-string v1, "PixelBuffer"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->PixelBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    const-string v1, "DeflateBuffer"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->DeflateBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->PixelBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->DeflateBuffer:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool$ImageBufferId;

    return-object v0
.end method

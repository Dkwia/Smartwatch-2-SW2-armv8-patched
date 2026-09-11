.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "ImageResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageResourceHasher"
.end annotation


# instance fields
.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mCid:I

.field private final mPixelBuffer:Ljava/nio/ByteBuffer;

.field private final mTargetMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap$Config;ILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)V
    .locals 0
    .param p2, "pixelBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .param p4, "cid"    # I
    .param p5, "targetMode"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mPixelBuffer:Ljava/nio/ByteBuffer;

    .line 95
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mCid:I

    .line 97
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mTargetMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    .line 98
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 3
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mPixelBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mPixelBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update([BII)V

    .line 103
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 104
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mCid:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 105
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageResourceHasher;->mTargetMode:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 106
    return-void
.end method

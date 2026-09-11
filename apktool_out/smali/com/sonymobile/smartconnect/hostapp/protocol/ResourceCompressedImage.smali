.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceCompressedImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$1;,
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;
    }
.end annotation


# static fields
.field public static final COLOR_TYPE_3BIT:I = 0x3

.field public static final COLOR_TYPE_ABGR1555:I = 0x1

.field public static final COLOR_TYPE_ABGR4444:I = 0x2

.field public static final COLOR_TYPE_BGR565:I


# instance fields
.field private mColorType:I

.field private mCompressType:I

.field private mData:[B

.field private mFlags:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 11
    const/4 v0, 0x6

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 12
    return-void
.end method


# virtual methods
.method public getColorType()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mColorType:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mData:[B

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mHeight:I

    return v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mCompressType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mWidth:I

    return v0
.end method

.method public setColorType(I)V
    .locals 0
    .param p1, "colorType"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mColorType:I

    .line 111
    return-void
.end method

.method public setColorType(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 103
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mColorType:I

    .line 107
    :goto_0
    return-void

    .line 104
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mColorType:I

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mData:[B

    .line 53
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mFlags:I

    .line 45
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mHeight:I

    .line 81
    return-void
.end method

.method public setImageType(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 2
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 91
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mCompressType:I

    .line 96
    :goto_0
    return-void

    .line 92
    :pswitch_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_PNG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mCompressType:I

    goto :goto_0

    .line 93
    :pswitch_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->IMAGE_TYPE_JPEG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mCompressType:I

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImageType(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;)V
    .locals 1
    .param p1, "imageFormat"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage$ImageFormat;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mCompressType:I

    .line 100
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mWidth:I

    .line 67
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->toString(Ljava/lang/StringBuilder;)V

    .line 120
    const-string v0, "flags"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "w"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "h"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "compression"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mCompressType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v0, "color"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->mColorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

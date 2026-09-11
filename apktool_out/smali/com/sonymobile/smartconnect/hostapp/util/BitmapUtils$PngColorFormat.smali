.class public final enum Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
.super Ljava/lang/Enum;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PngColorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

.field public static final enum GRAYSCALE_ALPHA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

.field public static final enum GRAYSCALE_SAMPLE:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

.field public static final enum PALETTE:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

.field public static final enum RGB:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

.field public static final enum RGBA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;


# instance fields
.field private final mColorFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    const-string v1, "GRAYSCALE_SAMPLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->GRAYSCALE_SAMPLE:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    .line 102
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    const-string v1, "RGB"

    invoke-direct {v0, v1, v7, v4}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->RGB:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    .line 103
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    const-string v1, "PALETTE"

    invoke-direct {v0, v1, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->PALETTE:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    .line 104
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    const-string v1, "GRAYSCALE_ALPHA"

    invoke-direct {v0, v1, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->GRAYSCALE_ALPHA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    .line 105
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    const-string v1, "RGBA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->RGBA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->GRAYSCALE_SAMPLE:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->RGB:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->PALETTE:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->GRAYSCALE_ALPHA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->RGBA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->mColorFormat:I

    .line 110
    return-void
.end method

.method public static valueOf(I)Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 114
    packed-switch p0, :pswitch_data_0

    .line 120
    :pswitch_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->RGBA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    :goto_0
    return-object v0

    .line 115
    :pswitch_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->GRAYSCALE_ALPHA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    goto :goto_0

    .line 116
    :pswitch_2
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->RGB:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    goto :goto_0

    .line 117
    :pswitch_3
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->PALETTE:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    goto :goto_0

    .line 118
    :pswitch_4
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->GRAYSCALE_ALPHA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    return-object v0
.end method


# virtual methods
.method public getAsIntValue()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->mColorFormat:I

    return v0
.end method

.class synthetic Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$graphics$Bitmap$CompressFormat:[I

.field static final synthetic $SwitchMap$com$sonymobile$smartconnect$hostapp$util$BitmapUtils$PngColorFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Landroid/graphics/Bitmap$CompressFormat;->values()[Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    :goto_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->values()[Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$util$BitmapUtils$PngColorFormat:[I

    :try_start_2
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$util$BitmapUtils$PngColorFormat:[I

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->GRAYSCALE_ALPHA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$util$BitmapUtils$PngColorFormat:[I

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->RGBA:Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils$PngColorFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 153
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceString.java"


# static fields
.field public static final CID_FONT_LARGE_BOLD:I = 0x5

.field public static final CID_FONT_LARGE_REGULAR:I = 0x4

.field public static final CID_FONT_NORMAL_BOLD:I = 0x3

.field public static final CID_FONT_NORMAL_REGULAR:I = 0x2

.field public static final CID_FONT_SMALL_BOLD:I = 0x1

.field public static final CID_FONT_SMALL_REGULAR:I = 0x0

.field public static final HORIZONTAL_ALIGN_CENTER_INDEX:I = 0x1

.field public static final HORIZONTAL_ALIGN_LEFT_INDEX:I = 0x0

.field public static final HORIZONTAL_ALIGN_RIGHT_INDEX:I = 0x2

.field public static final TEXT_SIZE_LARGE:I = 0x18

.field public static final TEXT_SIZE_NORMAL:I = 0x12

.field public static final VERTICAL_ALIGN_BOTTOM_INDEX:I = 0x2

.field public static final VERTICAL_ALIGN_CENTER_INDEX:I = 0x1

.field public static final VERTICAL_ALIGN_TOP_INDEX:I


# instance fields
.field private mFontCid:I

.field private mHeight:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextHAlignment:I

.field private mTextSize:B

.field private mTextVAlignment:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 54
    return-void
.end method


# virtual methods
.method public getFontCid()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mFontCid:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mHeight:I

    return v0
.end method

.method public getHorizontalAlignment()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextHAlignment:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 107
    iget-byte v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextSize:B

    return v0
.end method

.method public getVerticalAlignment()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextVAlignment:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mWidth:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mHeight:I

    .line 82
    return-void
.end method

.method public setHorizontalAlignment(I)V
    .locals 0
    .param p1, "hAlignment"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextHAlignment:I

    .line 143
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mText:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextColor:I

    .line 101
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSize"    # I

    .prologue
    .line 111
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextSize:B

    .line 115
    const/16 v0, 0x12

    if-ge p1, v0, :cond_0

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mFontCid:I

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 118
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mFontCid:I

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mFontCid:I

    goto :goto_0
.end method

.method public setVerticalAlignment(I)V
    .locals 0
    .param p1, "vAlignment"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mTextVAlignment:I

    .line 154
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->mWidth:I

    .line 68
    return-void
.end method

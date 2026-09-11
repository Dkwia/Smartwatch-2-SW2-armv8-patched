.class public Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
.super Landroid/widget/TextView;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$1;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$FontCache;
    }
.end annotation


# static fields
.field private static sFontCache:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$FontCache;


# instance fields
.field private mFontPaint:Landroid/graphics/Paint;

.field private mFontPath:Ljava/lang/String;

.field private mTemplate:Ljava/lang/String;

.field private mTextSize:I

.field private mTimeTextResArray:[Ljava/lang/CharSequence;

.field private mTimeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$FontCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$FontCache;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$1;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->sFontCache:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$FontCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTextSize:I

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method private generateDefaultDaysInMonth()[Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 242
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTemplate:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "d"

    :goto_0
    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 245
    .local v0, "array":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 246
    .local v2, "d":Ljava/sql/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 247
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 248
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 250
    const/16 v5, 0x7b2

    const/4 v6, 0x0

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 251
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "array":[Ljava/lang/CharSequence;
    .end local v1    # "cal":Ljava/util/Calendar;
    .end local v2    # "d":Ljava/sql/Date;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v4    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTemplate:Ljava/lang/String;

    goto :goto_0

    .line 253
    .restart local v0    # "array":[Ljava/lang/CharSequence;
    .restart local v1    # "cal":Ljava/util/Calendar;
    .restart local v2    # "d":Ljava/sql/Date;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v4    # "i":I
    :cond_1
    return-object v0
.end method

.method private generateDefaultDaysOfWeek()[Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 212
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTemplate:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "EEE"

    :goto_0
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 214
    .local v4, "weekDayFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 215
    .local v0, "array":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 216
    .local v2, "d":Ljava/sql/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 217
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 218
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 220
    const/16 v5, 0x7b2

    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x5

    invoke-virtual {v1, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 221
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "array":[Ljava/lang/CharSequence;
    .end local v1    # "cal":Ljava/util/Calendar;
    .end local v2    # "d":Ljava/sql/Date;
    .end local v3    # "i":I
    .end local v4    # "weekDayFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTemplate:Ljava/lang/String;

    goto :goto_0

    .line 223
    .restart local v0    # "array":[Ljava/lang/CharSequence;
    .restart local v1    # "cal":Ljava/util/Calendar;
    .restart local v2    # "d":Ljava/sql/Date;
    .restart local v3    # "i":I
    .restart local v4    # "weekDayFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    return-object v0
.end method

.method private generateDefaultMonths()[Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 227
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTemplate:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "MMM"

    :goto_0
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, "weekDayFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 230
    .local v0, "array":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/sql/Date;

    invoke-direct {v2, v6, v7}, Ljava/sql/Date;-><init>(J)V

    .line 231
    .local v2, "d":Ljava/sql/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 232
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 233
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 235
    const/16 v5, 0x7b2

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 236
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "array":[Ljava/lang/CharSequence;
    .end local v1    # "cal":Ljava/util/Calendar;
    .end local v2    # "d":Ljava/sql/Date;
    .end local v3    # "i":I
    .end local v4    # "weekDayFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTemplate:Ljava/lang/String;

    goto :goto_0

    .line 238
    .restart local v0    # "array":[Ljava/lang/CharSequence;
    .restart local v1    # "cal":Ljava/util/Calendar;
    .restart local v2    # "d":Ljava/sql/Date;
    .restart local v3    # "i":I
    .restart local v4    # "weekDayFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    return-object v0
.end method

.method private generateTextArray(I)[Ljava/lang/CharSequence;
    .locals 6
    .param p1, "timeStateCount"    # I

    .prologue
    .line 269
    new-array v0, p1, [Ljava/lang/CharSequence;

    .line 270
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getDefaultDigits(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "defaultDigits":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 272
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "unpadded":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v3    # "unpadded":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getDefaultDigits(I)Ljava/lang/String;
    .locals 1
    .param p1, "stateCount"    # I

    .prologue
    .line 257
    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    .line 258
    const-string v0, "0"

    .line 264
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const/16 v0, 0x65

    if-ge p1, v0, :cond_1

    .line 260
    const-string v0, "00"

    goto :goto_0

    .line 261
    :cond_1
    const/16 v0, 0x3e9

    if-ge p1, v0, :cond_2

    .line 262
    const-string v0, "000"

    goto :goto_0

    .line 264
    :cond_2
    const-string v0, "0000"

    goto :goto_0
.end method

.method private getDefaultTimeTextResArray()[Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$widget$TimeView$TimeType:[I

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->generateTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 200
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->generateDefaultDaysOfWeek()[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->generateDefaultDaysInMonth()[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->generateDefaultMonths()[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadTextResArray([I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "textResArray"    # [I

    .prologue
    .line 190
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 191
    .local v0, "array":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getTextResArray()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeTextResArray:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimeStateCount()I
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$1;->$SwitchMap$com$sonymobile$smartconnect$hostapp$extensions$widget$TimeView$TimeType:[I

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 288
    :pswitch_0
    const/16 v0, 0x3c

    goto :goto_0

    .line 297
    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    .line 300
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 302
    :pswitch_3
    const/16 v0, 0x18

    goto :goto_0

    .line 304
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 306
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 308
    :pswitch_6
    const/16 v0, 0x1f

    goto :goto_0

    .line 310
    :pswitch_7
    const/16 v0, 0x16e

    goto :goto_0

    .line 313
    :pswitch_8
    const/16 v0, 0xc

    goto :goto_0

    .line 315
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getTimeType()Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    return-object v0
.end method

.method protected obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->values()[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/StyleHelper;->getStyledAttributes(Landroid/content/Context;[Ljava/lang/Enum;)[I

    move-result-object v0

    .line 112
    .local v0, "attrArray":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 169
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTextSize:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 171
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 172
    .local v3, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 174
    .local v1, "height":I
    move v0, v1

    .line 175
    .local v0, "fontSize":I
    :goto_0
    if-lez v0, :cond_0

    .line 176
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mFontPaint:Landroid/graphics/Paint;

    int-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 177
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mFontPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 178
    .local v2, "textWidth":F
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v4, v3, v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    .line 179
    const/4 v4, 0x0

    int-to-float v5, v0

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->setTextSize(IF)V

    .line 186
    .end local v0    # "fontSize":I
    .end local v1    # "height":I
    .end local v2    # "textWidth":F
    .end local v3    # "width":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 187
    return-void

    .line 182
    .restart local v0    # "fontSize":I
    .restart local v1    # "height":I
    .restart local v2    # "textWidth":F
    .restart local v3    # "width":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 184
    goto :goto_0
.end method

.method protected parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x1

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 120
    .local v3, "textSizeValue":Landroid/util/TypedValue;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 122
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTextSize:I

    .line 124
    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->setTextSize(IF)V

    .line 128
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->values()[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 129
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTemplate:Ljava/lang/String;

    .line 130
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mFontPath:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getTimeStateCount()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/LevelListDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 151
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mFontPath:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 156
    :try_start_1
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->sFontCache:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$FontCache;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mFontPath:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$FontCache;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :cond_2
    :goto_1
    new-instance v4, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mFontPaint:Landroid/graphics/Paint;

    .line 165
    return-void

    .line 136
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 137
    .local v2, "textArrayId":I
    if-eqz v2, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->loadTextResArray([I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeTextResArray:[Ljava/lang/CharSequence;

    .line 143
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeTextResArray:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeTextResArray:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeTextResArray:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 151
    .end local v2    # "textArrayId":I
    .end local v3    # "textSizeValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    .line 141
    .restart local v2    # "textArrayId":I
    .restart local v3    # "textSizeValue":Landroid/util/TypedValue;
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->getDefaultTimeTextResArray()[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->mTimeTextResArray:[Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 157
    .end local v2    # "textArrayId":I
    :catch_0
    move-exception v1

    .line 158
    .local v1, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Custom fonts are not visible in the layout editor."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ControlMessageSetLocaleReq.java"


# static fields
.field private static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "  "

.field private static final DEFAULT_LANGUAGE_CODE:Ljava/lang/String; = "  "


# instance fields
.field private mLocale:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 66
    const/16 v0, 0x10

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;->type:I

    .line 67
    return-void
.end method

.method public static localeToInt(Ljava/util/Locale;)I
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const-string v1, "  "

    .line 50
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string v0, "  "

    .line 54
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/high16 v4, 0x1000000

    mul-int v2, v3, v4

    .line 55
    .local v2, "result":I
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/high16 v4, 0x10000

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 56
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    .line 57
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 58
    return v2
.end method


# virtual methods
.method public getLocale()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;->mLocale:I

    return v0
.end method

.method public setLocale(I)V
    .locals 0
    .param p1, "locale"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;->mLocale:I

    .line 87
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;->localeToInt(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ControlMessageSetLocaleReq;->mLocale:I

    .line 96
    return-void
.end method

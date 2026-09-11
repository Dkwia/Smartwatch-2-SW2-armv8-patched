.class public Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;
.super Ljava/lang/Object;
.source "SimpleHasher.java"


# instance fields
.field private mCounter:I

.field private mHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 13
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->mHashCode:I

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->mCounter:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->mHashCode:I

    .line 14
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->mCounter:I

    .line 15
    return-void
.end method

.method public addValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 18
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 19
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addValue([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    .line 22
    if-nez p1, :cond_1

    .line 27
    :cond_0
    return-void

    .line 24
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 25
    .local v3, "value":I
    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->addValue(I)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHashCode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/SimpleHasher;->mHashCode:I

    return v0
.end method

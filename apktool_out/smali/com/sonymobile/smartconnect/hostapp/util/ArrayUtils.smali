.class public Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "byteArray"    # [B

    .prologue
    .line 50
    if-nez p0, :cond_0

    const-string v5, "null"

    .line 56
    :goto_0
    return-object v5

    .line 52
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    .line 54
    .local v3, "refCid":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v3    # "refCid":B
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static intArrayFromList(Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    const/4 v5, 0x0

    new-array v0, v5, [I

    .line 20
    :cond_0
    return-object v0

    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 16
    .local v0, "array":[I
    const/4 v2, 0x0

    .line 17
    .local v2, "index":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 18
    .local v4, "value":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput v4, v0, v2

    move v2, v3

    .line 19
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0
.end method

.method public static intArraytoHexString([I)Ljava/lang/String;
    .locals 1
    .param p0, "intArray"    # [I

    .prologue
    .line 35
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->toIntegerArray([I)[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->integerArraytoHexString([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static integerArraytoHexString([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 8
    .param p0, "intArray"    # [Ljava/lang/Integer;

    .prologue
    .line 24
    if-nez p0, :cond_0

    const-string v5, "null"

    .line 31
    :goto_0
    return-object v5

    .line 26
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 28
    .local v3, "refCid":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    :cond_1
    const-string v5, "0x%08x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 31
    .end local v3    # "refCid":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toIntegerArray([I)[Ljava/lang/Integer;
    .locals 8
    .param p0, "intArray"    # [I

    .prologue
    .line 39
    if-nez p0, :cond_1

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Integer;

    .line 46
    :cond_0
    return-object v4

    .line 41
    :cond_1
    array-length v7, p0

    new-array v4, v7, [Ljava/lang/Integer;

    .line 42
    .local v4, "integerArray":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 43
    .local v1, "i":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v6, v0, v3

    .line 44
    .local v6, "value":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    .line 43
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

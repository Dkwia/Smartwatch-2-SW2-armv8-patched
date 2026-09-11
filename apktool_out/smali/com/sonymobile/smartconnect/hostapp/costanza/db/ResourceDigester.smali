.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;
.super Ljava/lang/Object;
.source "ResourceDigester.java"


# instance fields
.field md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    .line 23
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 26
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Error getting MD5 instance"

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private static final intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public digest()[B
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "Error getting MD5 instance, algorithm was null"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 53
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "data"    # B

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 60
    :cond_0
    return-void
.end method

.method public update(I)V
    .locals 2
    .param p1, "intValue"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->intToByteArray(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 106
    if-nez p1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    const-string v1, "null"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_0
.end method

.method public update(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 66
    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "intList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v3, :cond_1

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 86
    .local v2, "intValue":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 88
    .end local v2    # "intValue":Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 90
    .end local v0    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public update(Z)V
    .locals 2
    .param p1, "booleanValue"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 102
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 72
    :cond_0
    return-void
.end method

.method public varargs update([[B)V
    .locals 5
    .param p1, "chunkList"    # [[B

    .prologue
    .line 75
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    .line 76
    move-object v0, p1

    .local v0, "arr$":[[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 77
    .local v1, "bytes":[B
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->md:Ljava/security/MessageDigest;

    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "arr$":[[B
    .end local v1    # "bytes":[B
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

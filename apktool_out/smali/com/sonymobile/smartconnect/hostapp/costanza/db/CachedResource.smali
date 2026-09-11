.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
.super Ljava/lang/Object;
.source "CachedResource.java"


# static fields
.field private static final HASH_LENGTH:I = 0x8


# instance fields
.field private final mCid:I

.field private final mHash:[B

.field private final mHashCode:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "remoteId"    # I
    .param p3, "hash"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mCid:I

    .line 24
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad resource hash specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p3, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHash:[B

    .line 29
    invoke-static {p3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHashCode:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mCid:I

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHash:[B

    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHash:[B

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 36
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHashCode:I

    .line 37
    return-void
.end method


# virtual methods
.method public cid()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mCid:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;

    .line 46
    .local v0, "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHashCode:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHashCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHash:[B

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHash:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "cr":Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;
    :cond_3
    move v1, v2

    .line 49
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHashCode:I

    return v0
.end method

.method public persist(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mCid:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHash:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 72
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHashCode:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string v0, "%s [cid=0x%08x, hash=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CachedResource;->mHash:[B

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

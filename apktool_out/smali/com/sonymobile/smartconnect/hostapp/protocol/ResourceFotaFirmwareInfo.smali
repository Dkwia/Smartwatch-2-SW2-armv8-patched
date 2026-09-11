.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceFotaFirmwareInfo.java"


# static fields
.field private static final ASW_INDEX:I = 0x1

.field private static final BOOTLOADER_INDEX:I = 0x0

.field private static final FILE_SYSTEM_INDEX:I = 0x2


# instance fields
.field private mCidCount:[I

.field private mCids:[I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 34
    const/16 v0, 0xd

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 35
    return-void
.end method

.method private getBlockCids(I)[I
    .locals 6
    .param p1, "fileIndex"    # I

    .prologue
    .line 55
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCidCount:[I

    aget v3, v3, p1

    new-array v0, v3, [I

    .line 56
    .local v0, "cids":[I
    const/4 v2, 0x0

    .line 57
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 58
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCidCount:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCids:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCidCount:[I

    aget v5, v5, p1

    invoke-static {v3, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public getAswBlockCids()[I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->getBlockCids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getBootloaderBlockCids()[I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->getBlockCids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFileSystemBlockCids()[I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->getBlockCids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public setBlockCids([I[I[I)V
    .locals 4
    .param p1, "bootloader"    # [I
    .param p2, "asw"    # [I
    .param p3, "fs"    # [I

    .prologue
    const/4 v3, 0x0

    .line 75
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCids:[I

    .line 76
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCids:[I

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCids:[I

    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCids:[I

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    array-length v1, p1

    aput v1, v0, v3

    const/4 v1, 0x1

    array-length v2, p2

    aput v2, v0, v1

    const/4 v1, 0x2

    array-length v2, p3

    aput v2, v0, v1

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceFotaFirmwareInfo;->mCidCount:[I

    .line 81
    return-void
.end method

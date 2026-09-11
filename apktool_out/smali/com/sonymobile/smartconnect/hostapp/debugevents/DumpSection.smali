.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;
.super Ljava/lang/Object;
.source "DumpSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;
    }
.end annotation


# static fields
.field public static final TDbgEvH_DumpSelCallstack:I = 0x1

.field public static final TDbgEvH_DumpSelMTBF:I = 0x8

.field public static final TDbgEvH_DumpSelNone:I = 0x0

.field public static final TDbgEvH_DumpSelOsTcb:I = 0x4

.field public static final TDbgEvH_DumpSelRegisters:I = 0x2


# instance fields
.field private final TDbgEvH_DumpSelAll:I

.field private final mData:[B

.field private final mSize:J

.field private final mType:J


# direct methods
.method public constructor <init>([B)V
    .locals 8
    .param p1, "dump"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0xf

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->TDbgEvH_DumpSelAll:I

    .line 49
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;

    const-string v1, "Too short dump"

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mSize:J

    .line 54
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mSize:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mSize:J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 55
    :cond_1
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", full dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mType:J

    .line 59
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mType:J

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    .line 60
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mType:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection$DumpFormatException;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mSize:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v5, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mData:[B

    .line 64
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mData:[B

    return-object v0
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mData:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mSize:J

    return-wide v0
.end method

.method public getType()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpSection;->mType:J

    return-wide v0
.end method

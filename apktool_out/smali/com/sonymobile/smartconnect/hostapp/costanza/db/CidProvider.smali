.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
.super Ljava/lang/Object;
.source "CidProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;
    }
.end annotation


# static fields
.field public static final CID_MAX_VALUE:I = 0x7fffffff

.field public static final CID_MIN_VALUE:I = 0x100000

.field public static final CID_START_VALUE:I

.field public static final NO_CID:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const/high16 v0, 0x100000

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->CID_START_VALUE:I

    return-void
.end method


# virtual methods
.method public abstract getCidRange(I)I
.end method

.method public abstract getNewCid()I
.end method

.method public abstract getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I
.end method

.method public abstract reset()V
.end method

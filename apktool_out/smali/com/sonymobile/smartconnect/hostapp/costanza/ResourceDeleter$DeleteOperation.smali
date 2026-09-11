.class Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
.super Ljava/lang/Object;
.source "ResourceDeleter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCid:Ljava/lang/Integer;

.field private final mComparables:[Ljava/lang/Integer;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p2, "cid"    # Ljava/lang/Integer;
    .param p3, "transactionNumber"    # Ljava/lang/Integer;
    .param p4, "priority"    # Ljava/lang/Integer;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->mCid:Ljava/lang/Integer;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->mCid:Ljava/lang/Integer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->mComparables:[Ljava/lang/Integer;

    .line 59
    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->mCid:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)I
    .locals 4
    .param p1, "another"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->mComparables:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->mComparables:[Ljava/lang/Integer;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->mComparables:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    .line 65
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "result":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->compareTo(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)I

    move-result v0

    return v0
.end method

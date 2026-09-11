.class public Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
.super Ljava/lang/Object;
.source "ResourceDeleter.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    }
.end annotation


# static fields
.field protected static final MAX_RETRY_COUNT:I = 0xa

.field private static final NORMAL_DELETE_PRIORITY:I = 0x0

.field protected static final RESEND_DELAY:J = 0x12cL

.field private static final UNREFERENCED_CIDS_DELETE_PRIORITY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeleteQueue:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsBusyWaiting:Z

.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mPendingOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRetryCounter:I

.field private mTransactionNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mPendingOperations:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mDeleteQueue:Ljava/util/SortedSet;

    .line 89
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mIsBusyWaiting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mIsBusyWaiting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->removeCidFromHost(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mRetryCounter:I

    return p1
.end method

.method static synthetic access$208(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->sendNextDeleteMsg()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$608(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    .line 41
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mTransactionNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mTransactionNumber:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;IILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p4, "x4"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .param p5, "x5"    # I

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->offerResourceDeletion(IILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;ILjava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->performDbOperations(ILjava/util/ArrayList;)V

    return-void
.end method

.method private offerResourceDeletion(IILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;I)V
    .locals 16
    .param p1, "transactionNumber"    # I
    .param p2, "cid"    # I
    .param p3, "resCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p4, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .param p5, "priority"    # I

    .prologue
    .line 191
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->removeCid(I)V

    .line 193
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->remove(I)I

    move-result v13

    .line 194
    .local v13, "refCount":I
    if-lez v13, :cond_1

    .line 195
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v11, "brokenCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->findReferences(ILjava/util/List;)V

    .line 197
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 198
    .local v4, "brokenCid":I
    add-int/lit8 v7, p5, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->offerResourceDeletion(IILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;I)V

    .line 200
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "Queued broken cid 0x%08x for deletion."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    .end local v4    # "brokenCid":I
    .end local v11    # "brokenCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v15, "unreferencedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->popUnreferencedCids(Ljava/util/List;)V

    .line 208
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 212
    .local v14, "unreferencedCid":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->offerResourceDeletion(IILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;I)V

    goto :goto_1

    .line 216
    .end local v14    # "unreferencedCid":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mDeleteQueue:Ljava/util/SortedSet;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method private performDbOperations(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "cid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "dbOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 252
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Running db operations for 0x%08x."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sonymobile.smartconnect.smartwatch2.db"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 259
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 260
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Landroid/content/OperationApplicationException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 262
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private removeCidFromHost(II)V
    .locals 7
    .param p1, "cidRangeFirst"    # I
    .param p2, "cidRangeLast"    # I

    .prologue
    .line 127
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mDeleteQueue:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 128
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;>;"
    move v0, p1

    .local v0, "cid":I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 129
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;

    .line 131
    .local v1, "deleteOperation":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 128
    .end local v1    # "deleteOperation":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    const-string v3, "Removed cids, 0x%08x-0x%08x, from delete queue."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mDeleteQueue:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->sendNextDeleteMsg()V

    .line 146
    :cond_4
    return-void
.end method

.method private sendNextDeleteMsg()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 223
    iget-boolean v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mIsBusyWaiting:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mDeleteQueue:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 224
    iput-boolean v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mIsBusyWaiting:Z

    .line 226
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mDeleteQueue:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 227
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;

    .line 228
    .local v1, "firstCid":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    move-object v3, v1

    .line 229
    .local v3, "lastCid":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;

    .line 231
    .local v4, "nextQueuedOperation":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 235
    .end local v4    # "nextQueuedOperation":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    :cond_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;

    const/4 v5, -0x1

    invoke-direct {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;-><init>(I)V

    .line 236
    .local v0, "deleteMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->setCidRangeFirst(I)V

    .line 237
    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;->setCidRangeLast(I)V

    .line 239
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v6, v8, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v6, v9

    invoke-interface {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 241
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    const-string v5, "Requested removal of cids, 0x%08x-0x%08x."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    .end local v0    # "deleteMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResources;
    .end local v1    # "firstCid":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;>;"
    .end local v3    # "lastCid":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    :cond_1
    return-void

    .line 232
    .restart local v1    # "firstCid":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    .restart local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;>;"
    .restart local v3    # "lastCid":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    .restart local v4    # "nextQueuedOperation":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$DeleteOperation;
    :cond_2
    move-object v3, v4

    .line 233
    goto :goto_0
.end method


# virtual methods
.method public deleteResource(ILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "cid"    # I
    .param p2, "resCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p3, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-gez p1, :cond_1

    .line 153
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "Skipped delete request, invalid cid: 0x%08x."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;ILcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onConnect()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onDeleteResponse(IILcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;)V
    .locals 2
    .param p1, "cidRangeFirst"    # I
    .param p2, "cidRangeLast"    # I
    .param p3, "status"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mIsBusyWaiting:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->sendNextDeleteMsg()V

    .line 290
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mRetryCounter:I

    .line 268
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mDeleteQueue:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 269
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mPendingOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 270
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->mIsBusyWaiting:Z

    .line 271
    return-void
.end method

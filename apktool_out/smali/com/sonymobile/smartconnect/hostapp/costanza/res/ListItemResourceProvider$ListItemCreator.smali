.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "ListItemResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemCreator"
.end annotation


# instance fields
.field private final mCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListCid:I

.field private final mPosition:I


# direct methods
.method public constructor <init>(ILjava/util/List;I)V
    .locals 0
    .param p1, "listCid"    # I
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 45
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;->mListCid:I

    .line 46
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;->mCids:Ljava/util/List;

    .line 47
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;->mPosition:I

    .line 48
    return-void
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 58
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;-><init>(II)V

    .line 59
    .local v0, "screenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;->mCids:Ljava/util/List;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->intArrayFromList(Ljava/util/List;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->setCids([I)V

    .line 60
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;->mCids:Ljava/util/List;

    invoke-virtual {p2, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(ILjava/util/List;)V

    .line 61
    return-object v0
.end method

.method public getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I
    .locals 2
    .param p1, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .prologue
    .line 52
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;->mListCid:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemCreator;->mPosition:I

    add-int/2addr v0, v1

    return v0
.end method

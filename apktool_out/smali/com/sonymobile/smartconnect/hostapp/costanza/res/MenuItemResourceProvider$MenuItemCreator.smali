.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "MenuItemResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemCreator"
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 36
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemCreator;->mCids:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 42
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;-><init>(II)V

    .line 43
    .local v0, "screenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemCreator;->mCids:Ljava/util/List;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->intArrayFromList(Ljava/util/List;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->setCids([I)V

    .line 44
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemCreator;->mCids:Ljava/util/List;

    invoke-virtual {p2, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(ILjava/util/List;)V

    .line 45
    return-object v0
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "ListItemResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemHasher"
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
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .param p1, "listCid"    # I
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 26
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;->mListCid:I

    .line 27
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;->mPosition:I

    .line 28
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;->mCids:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;->mListCid:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 35
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider$ListItemHasher;->mCids:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Ljava/util/List;)V

    .line 36
    return-void
.end method

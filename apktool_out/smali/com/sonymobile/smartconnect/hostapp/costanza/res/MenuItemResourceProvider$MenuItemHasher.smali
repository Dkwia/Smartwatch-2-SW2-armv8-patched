.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "MenuItemResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemHasher"
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
    .line 23
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemHasher;->mCids:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider$MenuItemHasher;->mCids:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Ljava/util/List;)V

    .line 30
    return-void
.end method

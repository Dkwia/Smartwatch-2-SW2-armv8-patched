.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "MasterResourceProvider.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MasterHasherAndCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;
    }
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

.field private final mExtensionCid:I

.field private final mIsTouchUpdatable:Z

.field private final mMasterCreator:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;

.field private final mSubScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewId:I


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;Z)V
    .locals 2
    .param p1, "extensionCid"    # I
    .param p2, "viewId"    # I
    .param p5, "isTouchUpdatable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 58
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mExtensionCid:I

    .line 59
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mViewId:I

    .line 60
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mCids:Ljava/util/List;

    .line 61
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mSubScreens:Ljava/util/List;

    .line 62
    iput-boolean p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mIsTouchUpdatable:Z

    .line 63
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mMasterCreator:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mCids:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;Ljava/util/List;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->createMainScreen(Ljava/util/List;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mIsTouchUpdatable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mSubScreens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mExtensionCid:I

    return v0
.end method

.method private createMainScreen(Ljava/util/List;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;"
        }
    .end annotation

    .prologue
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 92
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    invoke-direct {v0, v1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;-><init>(II)V

    .line 94
    .local v0, "mainScreen":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->intArrayFromList(Ljava/util/List;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->setCids([I)V

    .line 95
    return-object v0
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 1
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mMasterCreator:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v0

    return-object v0
.end method

.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 77
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mViewId:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 78
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mIsTouchUpdatable:Z

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Z)V

    .line 79
    return-void
.end method

.method public getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I
    .locals 1
    .param p1, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->mMasterCreator:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I

    move-result v0

    return v0
.end method

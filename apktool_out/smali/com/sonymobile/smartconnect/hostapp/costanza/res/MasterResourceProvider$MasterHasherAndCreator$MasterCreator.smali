.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "MasterResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterCreator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)V

    return-void
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 5
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    const/4 v4, 0x0

    .line 36
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;

    const/4 v2, -0x1

    invoke-direct {v0, p1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;-><init>(II)V

    .line 38
    .local v0, "masterScreenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->rightX:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setScreenBoxRight(I)V

    .line 40
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->bottomY:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setScreenBoxBottom(I)V

    .line 42
    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->keepPreviousResult(Z)V

    .line 43
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;Ljava/util/List;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setMaster(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;)V

    .line 44
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setTouchUpdatable(Z)V

    .line 45
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Ljava/util/List;

    move-result-object v2

    new-array v3, v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v1, "referencedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator$MasterCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider$MasterHasherAndCreator;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p2, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(ILjava/util/List;)V

    .line 52
    return-object v0
.end method

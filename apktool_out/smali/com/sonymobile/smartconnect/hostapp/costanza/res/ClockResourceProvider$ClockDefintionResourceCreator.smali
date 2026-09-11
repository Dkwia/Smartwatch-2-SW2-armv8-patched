.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionResourceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "ClockResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClockDefintionResourceCreator"
.end annotation


# instance fields
.field private final mClockItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;",
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
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "clockItems":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionResourceCreator;->mClockItems:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 4
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 55
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;

    const/4 v2, -0x1

    invoke-direct {v0, p1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;-><init>(II)V

    .line 56
    .local v0, "clockDef":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider$ClockDefintionResourceCreator;->mClockItems:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;

    .line 57
    .local v1, "items":[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;->setNormalClockItems([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClock;->setLowPowerItems([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;)V

    .line 59
    return-object v0
.end method

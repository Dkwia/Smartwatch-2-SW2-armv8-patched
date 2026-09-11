.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "WatchFaceResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchFaceCreator"
.end annotation


# instance fields
.field private final mComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

.field private final mPreviewImageCid:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;Ljava/util/List;I)V
    .locals 1
    .param p3, "previewImageCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "components":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;->mComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .line 55
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;->mPreviewImageCid:I

    .line 56
    return-void
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 60
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;-><init>(II)V

    .line 62
    .local v0, "watchFace":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;->mPreviewImageCid:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->setPreviewImageCid(I)V

    .line 63
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;->mComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->setNormalComponents([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;)V

    .line 65
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceCreator;->mComponents:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFace;->setLowPowerComponents([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;)V

    .line 66
    return-object v0
.end method

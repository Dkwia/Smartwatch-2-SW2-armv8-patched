.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "WatchFaceResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchFaceHasher"
.end annotation


# instance fields
.field private final mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewImageCid:I

.field private final mWatchFaceCid:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;IILjava/util/List;)V
    .locals 0
    .param p2, "watchFaceCid"    # I
    .param p3, "previewImageCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p4, "components":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 28
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;->mWatchFaceCid:I

    .line 29
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;->mPreviewImageCid:I

    .line 30
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;->mComponents:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 3
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 35
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;->mWatchFaceCid:I

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 36
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;->mPreviewImageCid:I

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 37
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WatchFaceResourceProvider$WatchFaceHasher;->mComponents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;

    .line 38
    .local v0, "c":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->getWidgetCid()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 39
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->getWidgetTag()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 40
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->getScreenBoxTop()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 41
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->getScreenBoxLeft()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 42
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->getScreenBoxRight()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 43
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;->getScreenBoxBottom()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    goto :goto_0

    .line 45
    .end local v0    # "c":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceWatchFaceComponent;
    :cond_0
    return-void
.end method

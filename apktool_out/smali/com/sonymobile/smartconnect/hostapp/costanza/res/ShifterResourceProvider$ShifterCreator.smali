.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "ShifterResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShifterCreator"
.end annotation


# instance fields
.field private final mPositionedCid:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "positionedCid"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 50
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;->mPositionedCid:I

    .line 51
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;->mX:I

    .line 52
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;->mY:I

    .line 53
    return-void
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "cidReferenceTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 58
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;-><init>(II)V

    .line 60
    .local v0, "shifter":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;->mPositionedCid:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->setResource(I)V

    .line 61
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;->mX:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->setX(I)V

    .line 62
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;->mY:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->setY(I)V

    .line 64
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$ShifterCreator;->mPositionedCid:I

    invoke-virtual {p2, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(II)V

    .line 66
    return-object v0
.end method

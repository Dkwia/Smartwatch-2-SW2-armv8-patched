.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "ShifterResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventShifterHasher"
.end annotation


# instance fields
.field private final mEventId:I

.field private final mPositionedCid:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "positionedCid"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 28
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mEventId:I

    .line 29
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mPositionedCid:I

    .line 30
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mX:I

    .line 31
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mY:I

    .line 32
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mEventId:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 37
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mPositionedCid:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 38
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mX:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 39
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider$EventShifterHasher;->mY:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 40
    return-void
.end method

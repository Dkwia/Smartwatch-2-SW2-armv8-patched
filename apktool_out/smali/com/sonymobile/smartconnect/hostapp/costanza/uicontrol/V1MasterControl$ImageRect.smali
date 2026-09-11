.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;
.super Ljava/lang/Object;
.source "V1MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageRect"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mRect:Landroid/graphics/Rect;

.field private final mWidth:I

.field private final mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;)V
    .locals 6
    .param p1, "shifter"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
    .param p2, "image"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->getX()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mX:I

    .line 60
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->getY()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mY:I

    .line 61
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mWidth:I

    .line 62
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mHeight:I

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mX:I

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mY:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mX:I

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mY:I

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mRect:Landroid/graphics/Rect;

    .line 64
    return-void
.end method


# virtual methods
.method public contains(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;)Z
    .locals 2
    .param p1, "olderRect"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

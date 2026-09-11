.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "BoxResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoxCreator"
.end annotation


# instance fields
.field private final mFillColor:I

.field private final mOutlineColor:I

.field private final mScreenBox:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;Landroid/graphics/Rect;II)V
    .locals 0
    .param p2, "screenBox"    # Landroid/graphics/Rect;
    .param p3, "outlineColor"    # I
    .param p4, "fillColor"    # I

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mScreenBox:Landroid/graphics/Rect;

    .line 50
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mOutlineColor:I

    .line 51
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mFillColor:I

    .line 52
    return-void
.end method


# virtual methods
.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 56
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;-><init>(II)V

    .line 58
    .local v0, "boxMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mScreenBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxLeft(I)V

    .line 59
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mScreenBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxTop(I)V

    .line 60
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mScreenBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxRight(I)V

    .line 61
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mScreenBox:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxBottom(I)V

    .line 62
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mOutlineColor:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setOutlineColor(I)V

    .line 63
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxCreator;->mFillColor:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setFillColor(I)V

    .line 65
    return-object v0
.end method

.class abstract Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ControlResourceCreator"
.end annotation


# instance fields
.field protected final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceCreator;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;->mRect:Landroid/graphics/Rect;

    .line 316
    return-void
.end method


# virtual methods
.method protected abstract createResource(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.end method

.method public createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 1
    .param p1, "cid"    # I
    .param p2, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;->createResource(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v0

    return-object v0
.end method

.method protected createResourceControl(IIIIILcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "touchAction"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    .prologue
    .line 333
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;-><init>(II)V

    .line 334
    .local v0, "rc":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;
    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->setTouchBoxLeft(I)V

    .line 335
    invoke-virtual {v0, p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->setTouchBoxTop(I)V

    .line 336
    invoke-virtual {v0, p4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->setTouchBoxRight(I)V

    .line 337
    invoke-virtual {v0, p5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->setTouchBoxBottom(I)V

    .line 338
    invoke-virtual {v0, p6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->setOnlineTouchAction(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)V

    .line 340
    return-object v0
.end method

.method protected createResourceControl(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;
    .locals 7
    .param p1, "cid"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "touchAction"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    .prologue
    .line 327
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;->createResourceControl(IIIIILcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;

    move-result-object v0

    return-object v0
.end method

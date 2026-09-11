.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuResourceCreator"
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

.field private final mIsSlideEffectEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;Z)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p3, "isSlideEffectEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceCreator;-><init>(Landroid/graphics/Rect;)V

    .line 292
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;->mCids:Ljava/util/List;

    .line 293
    iput-boolean p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;->mIsSlideEffectEnabled:Z

    .line 294
    return-void
.end method


# virtual methods
.method public createResource(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .prologue
    .line 299
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;-><init>()V

    .line 300
    .local v0, "menuAction":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->setStartVisible(Z)V

    .line 301
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;->mIsSlideEffectEnabled:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->setUseSlideEffect(Z)V

    .line 302
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->setKey(I)V

    .line 303
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;->mCids:Ljava/util/List;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->intArrayFromList(Ljava/util/List;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->setScreens([I)V

    .line 305
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;->mCids:Ljava/util/List;

    invoke-virtual {p3, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(ILjava/util/List;)V

    .line 307
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceCreator;->createResourceControl(ILandroid/graphics/Rect;Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;
.source "ListItemControl.java"


# instance fields
.field private final mIsOpaque:Z

.field private final mListControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

.field private final mPosition:I

.field private mSubCid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

.field private mSubScreenCid:I

.field private final mXmlLayout:I


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "xmlLayout"    # I
    .param p3, "listControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    .param p4, "position"    # I
    .param p5, "controlFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    .prologue
    .line 43
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;-><init>(Landroid/view/View;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;ILcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "xmlLayout"    # I
    .param p3, "listControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
    .param p4, "position"    # I
    .param p5, "controlFactory"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .param p6, "isUpdatable"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;-><init>(Landroid/view/View;Z)V

    .line 32
    invoke-virtual {p5, p0, p1, p2, p6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createUiControlTree(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;Landroid/view/View;IZ)V

    .line 33
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->disableTouchResources()V

    .line 34
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mXmlLayout:I

    .line 35
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mListControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .line 36
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mPosition:I

    .line 37
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mParent:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/UiControl;

    .line 38
    invoke-static {p1}, Lcom/sonymobile/smartconnect/hostapp/util/TransparencyChecker;->isViewOpaque(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mIsOpaque:Z

    .line 39
    return-void
.end method


# virtual methods
.method public generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    const/4 v5, 0x0

    .line 51
    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mIsDirty:Z

    if-eqz v3, :cond_0

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 53
    .local v0, "itemCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2, v0, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 55
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mListControl:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;->getListCid()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mPosition:I

    invoke-virtual {p1, p2, v0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getListItem(Ljava/util/List;Ljava/util/List;II)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mSubScreenCid:I

    .line 58
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->getRectangle()Landroid/graphics/Rect;

    move-result-object v1

    .line 59
    .local v1, "rect":Landroid/graphics/Rect;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;-><init>()V

    .line 60
    .local v2, "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    invoke-virtual {v2, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxLeft(I)V

    .line 61
    invoke-virtual {v2, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxTop(I)V

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxRight(I)V

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxBottom(I)V

    .line 64
    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mIsOpaque:Z

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenOpaque(Z)V

    .line 65
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mSubScreenCid:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setResourceCid(I)V

    .line 66
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mSubCid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 69
    .end local v0    # "itemCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mSubCid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/GroupControl;->getHierarchicalHint(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 79
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mXmlLayout:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 82
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mPosition:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 83
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;->mPosition:I

    return v0
.end method

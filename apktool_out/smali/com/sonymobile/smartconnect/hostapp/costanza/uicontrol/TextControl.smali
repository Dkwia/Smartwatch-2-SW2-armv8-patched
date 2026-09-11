.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;
.source "TextControl.java"


# instance fields
.field private final mExtractor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;

.field private mTextLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "isUpdatable"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/PositionedControl;-><init>(Landroid/view/View;Z)V

    .line 25
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->mExtractor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;

    .line 26
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->mExtractor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;->extractTextLayoutData(Landroid/widget/TextView;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->mTextLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 27
    return-void
.end method


# virtual methods
.method protected getPositionedCid(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)I
    .locals 2
    .param p2, "resourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            ")I"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->mTextLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->getTargetColorMode()Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    return v0
.end method

.method public refreshView(Landroid/view/View;)V
    .locals 5
    .param p1, "updatedView"    # Landroid/view/View;

    .prologue
    .line 38
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 41
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->invalidate(Landroid/view/View;)V

    .line 42
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->mExtractor:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextLayoutDataExtractor;->extractTextLayoutData(Landroid/widget/TextView;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/TextControl;->mTextLayoutData:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "textView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "ex":Ljava/lang/ClassCastException;
    const-string v3, "Failed refreshing view, was not an ImageView."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

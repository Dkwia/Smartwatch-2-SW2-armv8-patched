.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;
.source "TextResourceProvider.java"


# instance fields
.field private final mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;Landroid/content/Context;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rc"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "cidRefTracker"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .param p5, "pool"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;
    .param p6, "c"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;Landroid/content/Context;)V

    .line 29
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    .line 30
    return-void
.end method


# virtual methods
.method public getText(Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->insertString(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getText(Ljava/util/List;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I
    .locals 1
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "masterBox"    # Landroid/graphics/Rect;
    .param p6, "textSize"    # I
    .param p7, "gravity"    # I
    .param p8, "textColor"    # I
    .param p9, "backgroundColor"    # I
    .param p10, "useMaster"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Landroid/graphics/Rect;",
            "IIIIZ)I"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual/range {p0 .. p10}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->insertString(Ljava/util/List;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I

    move-result v0

    return v0
.end method

.method protected insertString(Ljava/util/List;Ljava/lang/String;)I
    .locals 11
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    const/4 v3, 0x0

    .line 76
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->insertString(Ljava/util/List;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I

    move-result v0

    return v0
.end method

.method protected insertString(Ljava/util/List;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I
    .locals 10
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "masterBox"    # Landroid/graphics/Rect;
    .param p6, "textSize"    # I
    .param p7, "gravity"    # I
    .param p8, "textColor"    # I
    .param p9, "backgroundColor"    # I
    .param p10, "useMaster"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Landroid/graphics/Rect;",
            "IIIIZ)I"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    const/4 v5, -0x1

    .line 100
    .local v5, "stringCid":I
    const/4 v2, -0x1

    .line 102
    .local v2, "masterCid":I
    if-nez p2, :cond_0

    .line 103
    const/4 v8, -0x1

    .line 168
    :goto_0
    return v8

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->getNewCid()I

    move-result v5

    .line 107
    const/4 v6, -0x1

    .line 109
    .local v6, "stringMessageId":I
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;

    invoke-direct {v4, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;-><init>(II)V

    .line 110
    .local v4, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;
    invoke-virtual {v4, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setText(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v4, p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setWidth(I)V

    .line 112
    invoke-virtual {v4, p4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setHeight(I)V

    .line 113
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setTextSize(I)V

    .line 114
    move/from16 v0, p8

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setTextColor(I)V

    .line 117
    and-int/lit8 v7, p7, 0x70

    .line 118
    .local v7, "verticalGravity":I
    const/16 v8, 0x30

    if-ne v7, v8, :cond_1

    .line 119
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setVerticalAlignment(I)V

    .line 129
    :goto_1
    and-int/lit8 v1, p7, 0x7

    .line 130
    .local v1, "horizontalGravity":I
    const/4 v8, 0x3

    if-ne v1, v8, :cond_4

    .line 131
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setHorizontalAlignment(I)V

    .line 141
    :goto_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    if-eqz p10, :cond_7

    .line 145
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->getNewCid()I

    move-result v2

    .line 149
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;

    const/4 v8, -0x1

    invoke-direct {v3, v2, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;-><init>(II)V

    .line 150
    .local v3, "masterMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;
    iget v8, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setViewWindowLeft(I)V

    .line 151
    iget v8, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setViewWindowTop(I)V

    .line 152
    iget v8, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setViewWindowRight(I)V

    .line 153
    iget v8, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setViewWindowBottom(I)V

    .line 154
    iget v8, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setVirtualWindowLeft(I)V

    .line 155
    iget v8, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setVirtualWindowTop(I)V

    .line 156
    iget v8, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setVirtualWindowRight(I)V

    .line 157
    iget v8, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setVirtualWindowBottom(I)V

    .line 158
    move/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setBackgroundColor(I)V

    .line 159
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    invoke-virtual {v3, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;->setStringCids([I)V

    .line 161
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->mCidRefTracker:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    invoke-virtual {v8, v2, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(II)V

    move v8, v2

    .line 165
    goto :goto_0

    .line 120
    .end local v1    # "horizontalGravity":I
    .end local v3    # "masterMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterString;
    :cond_1
    const/16 v8, 0x10

    if-ne v7, v8, :cond_2

    .line 121
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setVerticalAlignment(I)V

    goto :goto_1

    .line 122
    :cond_2
    const/16 v8, 0x50

    if-ne v7, v8, :cond_3

    .line 123
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setVerticalAlignment(I)V

    goto :goto_1

    .line 126
    :cond_3
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setVerticalAlignment(I)V

    goto :goto_1

    .line 132
    .restart local v1    # "horizontalGravity":I
    :cond_4
    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    .line 133
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setHorizontalAlignment(I)V

    goto :goto_2

    .line 134
    :cond_5
    const/4 v8, 0x5

    if-ne v1, v8, :cond_6

    .line 135
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setHorizontalAlignment(I)V

    goto :goto_2

    .line 138
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceString;->setHorizontalAlignment(I)V

    goto :goto_2

    :cond_7
    move v8, v5

    .line 168
    goto/16 :goto_0
.end method

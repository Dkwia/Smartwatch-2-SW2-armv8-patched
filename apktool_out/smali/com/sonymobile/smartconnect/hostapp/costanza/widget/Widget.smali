.class public Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
.super Ljava/lang/Object;
.source "Widget.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_EMPTY_PKG_NAME:Ljava/lang/String; = ""

.field private static final RES_PROVIDER_NAME_PREFIX:Ljava/lang/String; = "widget_"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCategory:I

.field private transient mControls:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

.field private transient mExtensionCid:I

.field private mHeight:I

.field private mKey:Ljava/lang/String;

.field private transient mListPreviewResource:I

.field private mName:Ljava/lang/String;

.field private mNameResource:I

.field private mPackageName:Ljava/lang/String;

.field private transient mPreviewImageUri:Landroid/net/Uri;

.field private mPreviewImageUriString:Ljava/lang/String;

.field private mTag:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    if-ne p0, p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 316
    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 318
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 319
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 320
    .local v0, "other":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mExtensionCid:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mExtensionCid:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 321
    goto :goto_0

    .line 322
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 323
    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 324
    goto :goto_0

    .line 325
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 326
    goto :goto_0

    .line 327
    :cond_6
    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mTag:I

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mTag:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 328
    goto :goto_0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mCategory:I

    return v0
.end method

.method public getControls()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mControls:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    return-object v0
.end method

.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mExtensionCid:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mHeight:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getListPreviewResource()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mListPreviewResource:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameResource()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mNameResource:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPreviewImageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPreviewImageUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPreviewImageUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPreviewImageUri:Landroid/net/Uri;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPreviewImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPreviewImageUriString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPreviewImageUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceProvider(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .locals 2
    .param p1, "resProviderCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->getSynchronized(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v0

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mTag:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 303
    const/16 v0, 0x1f

    .line 304
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 305
    .local v1, "result":I
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mExtensionCid:I

    add-int/lit8 v1, v2, 0x1f

    .line 306
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 307
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mTag:I

    add-int v1, v2, v3

    .line 308
    return v1

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isClock()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 353
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getCategory()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNative()Z
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mExtensionCid:I

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;IIII)V
    .locals 9
    .param p1, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    .param p2, "eventType"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "touchKey"    # I

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getControls()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    move-result-object v8

    .line 429
    .local v8, "ctrls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    if-eqz v8, :cond_0

    array-length v1, v8

    if-lez v1, :cond_0

    .line 431
    const/4 v1, 0x0

    aget-object v0, v8, v1

    .line 432
    .local v0, "widgetCtrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->onTouch(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;Ljava/lang/String;IIIII)V

    .line 434
    .end local v0    # "widgetCtrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    :cond_0
    return-void
.end method

.method public renderOnAccessory(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V
    .locals 15
    .param p1, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p2, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .prologue
    .line 382
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mControls:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    .line 383
    .local v10, "controls":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    if-eqz v10, :cond_2

    .line 384
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v7, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v2

    array-length v2, v2

    new-array v5, v2, [I

    .line 387
    .local v5, "displayCids":[I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v2

    array-length v2, v2

    new-array v6, v2, [I

    .line 389
    .local v6, "updateIntervals":[I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v9

    .local v9, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    array-length v13, v9

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v13, :cond_0

    aget-object v8, v9, v11

    .line 390
    .local v8, "accState":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v2

    aget-object v14, v10, v2

    .line 391
    .local v14, "widgetCtrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v12

    .line 392
    .local v12, "index":I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->generateWidgetScreen(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;)I

    move-result v2

    aput v2, v5, v12

    .line 393
    invoke-virtual {v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;->getUpdateInterval()I

    move-result v2

    aput v2, v6, v12

    .line 389
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 396
    .end local v8    # "accState":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .end local v12    # "index":I
    .end local v14    # "widgetCtrl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
    :cond_0
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mExtensionCid:I

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mTag:I

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;II[I[ILjava/util/List;)V

    .line 398
    .local v1, "widgetRenderable":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->render(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;)V

    .line 404
    .end local v1    # "widgetRenderable":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;
    .end local v5    # "displayCids":[I
    .end local v6    # "updateIntervals":[I
    .end local v7    # "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    .end local v9    # "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    :cond_1
    :goto_1
    return-void

    .line 400
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    const-string v2, "Skipped rendering widget. Missing data."

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public setCategory(I)V
    .locals 0
    .param p1, "mCategory"    # I

    .prologue
    .line 411
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mCategory:I

    .line 412
    return-void
.end method

.method public setControls([Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;)V
    .locals 0
    .param p1, "controls"    # [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mControls:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;

    .line 420
    return-void
.end method

.method public setExtensionCid(I)V
    .locals 0
    .param p1, "extensionCid"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mExtensionCid:I

    .line 342
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mHeight:I

    .line 229
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mKey:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setListPreviewResource(I)V
    .locals 0
    .param p1, "listPreviewResId"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mListPreviewResource:I

    .line 367
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mName:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setNameResource(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resWidgetName"    # I

    .prologue
    .line 357
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mNameResource:I

    .line 358
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mName:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPackageName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setPreviewImageUriString(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewImageUri"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mPreviewImageUriString:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mTag:I

    .line 334
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mWidth:I

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 376
    const-string v0, "Widget [name=%s w=%d h=%d tag=%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->mTag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

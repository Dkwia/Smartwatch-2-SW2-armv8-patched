.class public Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;
.source "RenderingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetRenderable"
.end annotation


# instance fields
.field private final mDisplayCids:[I

.field private final mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

.field private final mTag:I

.field private final mUpdateIntervals:[I


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;II[I[ILjava/util/List;)V
    .locals 0
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "extensionCid"    # I
    .param p3, "tag"    # I
    .param p4, "displayCids"    # [I
    .param p5, "updateIntervals"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "II[I[I",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p6, "requiredResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-direct {p0, p2, p6}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$BaseRenderable;-><init>(ILjava/util/List;)V

    .line 189
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .line 190
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mTag:I

    .line 191
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mDisplayCids:[I

    .line 192
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mUpdateIntervals:[I

    .line 193
    return-void
.end method

.method private getRenderConfig(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;
    .locals 4
    .param p1, "accState"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .prologue
    .line 249
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mDisplayCids:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->getRenderMode(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->getUpdateInterval(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;-><init>(III)V

    return-object v0
.end method

.method private getRenderMode(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)I
    .locals 2
    .param p1, "accState"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .prologue
    .line 258
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$6;->$SwitchMap$com$sonymobile$smartconnect$hostapp$costanza$uicontrol$WidgetControl$AccessoryState:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 259
    :pswitch_0
    sget v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_NORMAL_POWER:I

    goto :goto_0

    .line 260
    :pswitch_1
    sget v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_OFFLINE_NORMAL_POWER_NO_TOUCH:I

    goto :goto_0

    .line 261
    :pswitch_2
    sget v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_LOW_POWER:I

    goto :goto_0

    .line 262
    :pswitch_3
    sget v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_OFFLINE_LOW_POWER:I

    goto :goto_0

    .line 263
    :pswitch_4
    sget v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;->RENDER_MODE_ONLINE_NORMAL_POWER_NO_TOUCH:I

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getUpdateInterval(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)I
    .locals 2
    .param p1, "accState"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mUpdateIntervals:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method public deleteResources()V
    .locals 6

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->getRequiredResources()[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 198
    .local v4, "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->getCid()I

    move-result v1

    .line 199
    .local v1, "cid":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mResProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    invoke-virtual {v5, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->delete(I)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "cid":I
    .end local v4    # "res":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    if-ne p1, p0, :cond_0

    .line 217
    :goto_0
    return v1

    .line 207
    :cond_0
    instance-of v3, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 208
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;

    .line 209
    .local v0, "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v3

    .line 210
    :try_start_0
    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mExtensionCid:I

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mExtensionCid:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mDisplayCids:[I

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mDisplayCids:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mUpdateIntervals:[I

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mUpdateIntervals:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mTag:I

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mTag:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mRequiredResources:Ljava/util/List;

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mRequiredResources:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    .line 210
    goto :goto_1

    .end local v0    # "r":Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;
    :cond_2
    move v1, v2

    .line 217
    goto :goto_0
.end method

.method public getRenderingRequest()Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .locals 7

    .prologue
    .line 234
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;-><init>(I)V

    .line 235
    .local v5, "widgetRenderRequest":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;
    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->Widget:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->setType(Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;)V

    .line 237
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mExtensionCid:I

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->setExtensionCid(I)V

    .line 238
    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mTag:I

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->setTag(I)V

    .line 240
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v4, "renderConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 242
    .local v0, "accState":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->getRenderConfig(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;)Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "accState":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    :cond_0
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;->setRenderConfigurations([Lcom/sonymobile/smartconnect/hostapp/protocol/RenderConfig;)V

    .line 245
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mRequiredResources:Ljava/util/List;

    monitor-enter v1

    .line 225
    :try_start_0
    const-string v0, "%s res=%s cids=%s intervals=%s."

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mRequiredResources:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mDisplayCids:[I

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->intArraytoHexString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$WidgetRenderable;->mUpdateIntervals:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

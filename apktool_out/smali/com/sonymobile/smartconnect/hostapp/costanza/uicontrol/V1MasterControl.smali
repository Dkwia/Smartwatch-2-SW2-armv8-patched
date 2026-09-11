.class public Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;
.source "V1MasterControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$1;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ClearScreenRenderable;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$ImageRect;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;
    }
.end annotation


# instance fields
.field private final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

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

.field private final mContext:Landroid/content/Context;

.field private final mExtensionCid:I

.field private final mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

.field private final mTouchListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;


# direct methods
.method public constructor <init>(ILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/View;Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;)V
    .locals 2
    .param p1, "extensionCid"    # I
    .param p2, "targetScreen"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "resources"    # Landroid/content/res/Resources;
    .param p6, "view"    # Landroid/view/View;
    .param p7, "extensionIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    .prologue
    .line 160
    invoke-direct {p0, p6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MasterControl;-><init>(Landroid/view/View;)V

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCids:Ljava/util/List;

    .line 161
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mExtensionCid:I

    .line 162
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mContext:Landroid/content/Context;

    .line 163
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 164
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 165
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTouchListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;

    .line 166
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTouchListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;

    invoke-direct {v1, p7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventAdaptor;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;->setAefEventListener(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    return-object v0
.end method

.method private createMasterScreen(Z)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;
    .locals 3
    .param p1, "keepPrevious"    # Z

    .prologue
    .line 196
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_MASTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;-><init>(II)V

    .line 199
    .local v0, "masterScreenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->rightX:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setScreenBoxRight(I)V

    .line 201
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->COSTANZA_TO_COSTANZA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v1, v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->bottomY:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setScreenBoxBottom(I)V

    .line 203
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->keepPreviousResult(Z)V

    .line 205
    return-object v0
.end method

.method private createShifter(Ljava/util/List;III)V
    .locals 3
    .param p2, "resCid"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_SHIFTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;-><init>(II)V

    .line 266
    .local v0, "shifter":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;
    invoke-virtual {v0, p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->setX(I)V

    .line 267
    invoke-virtual {v0, p4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->setY(I)V

    .line 268
    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourcePositionShifter;->setResource(I)V

    .line 269
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->invalidate()V

    .line 243
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 245
    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_EMPTY_BOX:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;-><init>(II)V

    .line 248
    .local v0, "emptyBox":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->leftX:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxLeft(I)V

    .line 249
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->topY:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxTop(I)V

    .line 250
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->rightX:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxRight(I)V

    .line 251
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iget v2, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->bottomY:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setBoxBottom(I)V

    .line 252
    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setOutlineColor(I)V

    .line 253
    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->setFillColor(I)V

    .line 254
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceBox;->getCid()I

    move-result v2

    invoke-direct {p0, v1, v2, v5, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->createShifter(Ljava/util/List;III)V

    .line 258
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ClearScreenRenderable;

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mExtensionCid:I

    invoke-direct {v2, p0, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ClearScreenRenderable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;)V

    .line 259
    return-void
.end method

.method public generateInitialResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V
    .locals 11
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 173
    .local v0, "initialResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCids:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->generateBackgroundTouchControls(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;)V

    .line 175
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCids:Ljava/util/List;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_SHIFTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-interface {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {p0, v0, v9, v8, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->createShifter(Ljava/util/List;III)V

    .line 178
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    invoke-direct {v2, v9, v9}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;-><init>(II)V

    .line 179
    .local v2, "mainScreen":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCids:Ljava/util/List;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->intArrayFromList(Ljava/util/List;)[I

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->setCids([I)V

    .line 181
    invoke-direct {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->createMasterScreen(Z)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;

    move-result-object v4

    .line 182
    .local v4, "unlockedMasterScreen":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;
    invoke-virtual {v4, v10}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setTouchUpdatable(Z)V

    .line 183
    invoke-virtual {v4, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setMaster(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;)V

    .line 184
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mExtensionCid:I

    invoke-direct {v5, p0, v6, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;)V

    .line 187
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 188
    .local v3, "resourcesForTouchLock":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-direct {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->createMasterScreen(Z)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;

    move-result-object v1

    .line 189
    .local v1, "lockedMasterScreen":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;
    invoke-virtual {v1, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setTouchUpdatable(Z)V

    .line 190
    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceMasterScreen;->setMaster(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;)V

    .line 191
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;

    iget v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mExtensionCid:I

    invoke-direct {v5, p0, v6, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1Renderable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V

    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;)V

    .line 193
    return-void
.end method

.method public getTouchProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mTouchListener:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1TouchProcessor;

    return-object v0
.end method

.method public update(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Landroid/view/View;Landroid/util/SparseArray;)V
    .locals 7
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Landroid/view/View;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;>;"
    const v4, 0x7f0d0003

    .line 222
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, "bitmapView":Landroid/view/View;
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .line 225
    .local v2, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->invalidate()V

    .line 227
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 229
    .local v3, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_IMAGE:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-interface {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getUncachedDeflatedImage(ILandroid/graphics/Bitmap;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;

    move-result-object v1

    .line 232
    .local v1, "imageRes":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceCompressedImage;->getCid()I

    move-result v4

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteLeft(Landroid/view/View;)I

    move-result v5

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/UIUtils;->getAbsoluteTop(Landroid/view/View;)I

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->createShifter(Ljava/util/List;III)V

    .line 237
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->mExtensionCid:I

    invoke-direct {v4, p0, v5, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl$V1ImageRenderable;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;ILjava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/V1MasterControl;->offerNewRenderable(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager$ControlExtensionRenderable;)V

    .line 238
    return-void
.end method

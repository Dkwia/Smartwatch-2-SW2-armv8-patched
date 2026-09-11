.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;
.super Ljava/lang/Object;
.source "RunningControlExtensionFactory.java"


# static fields
.field private static final RES_PROVIDER_NAME_PREFIX:Ljava/lang/String; = "ctrl_ext_"


# instance fields
.field private final mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field private final mContext:Landroid/content/Context;

.field private final mExtensionIntentHandlerThread:Landroid/os/HandlerThread;

.field private final mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

.field private final mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

.field private final mResProviderFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Landroid/os/HandlerThread;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)V
    .locals 0
    .param p1, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p2, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p3, "inputProcessor"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
    .param p4, "extensionIntentHandlerThread"    # Landroid/os/HandlerThread;
    .param p5, "ahaIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "resProviderCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mResProviderFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 40
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 41
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 42
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mExtensionIntentHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 44
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    .line 46
    return-void
.end method


# virtual methods
.method public create(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
    .locals 13
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mResProviderFactory:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ctrl_ext_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->getSynchronized(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v3

    .line 52
    .local v3, "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mContext:Landroid/content/Context;

    invoke-direct {v11, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Landroid/content/Context;)V

    .line 54
    .local v11, "ctrlFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    new-instance v6, Landroid/os/Handler;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mExtensionIntentHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V

    .line 58
    .local v0, "displayDataProcessor":Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    new-instance v8, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mExtensionIntentHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mInputProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    move-object v12, v3

    invoke-direct/range {v4 .. v12}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;)V

    .line 63
    .local v4, "layoutProcessor":Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtensionFactory;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    move-object v6, p1

    move-object v8, v4

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V

    return-object v5
.end method

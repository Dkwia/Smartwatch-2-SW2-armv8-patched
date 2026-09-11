.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
.source "RunningControlExtension.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack$ControlExtensionStateChangeListener;


# instance fields
.field private final mDisplayDataProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

.field private final mExtensionIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

.field private final mLayoutProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

.field private final mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

.field private mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;)V
    .locals 1
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "renderingManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;
    .param p3, "layoutProcessor"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;
    .param p4, "displayDataProcessor"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;
    .param p5, "intentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 23
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;->UNKNOWN:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 33
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    .line 34
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mLayoutProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    .line 35
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mDisplayDataProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    .line 36
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    invoke-direct {v0, p5, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mExtensionIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    .line 37
    return-void
.end method


# virtual methods
.method public getDisplayDataProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mDisplayDataProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    return-object v0
.end method

.method public getIntentSender()Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mExtensionIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;

    return-object v0
.end method

.method public getLayoutProcessor()Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mLayoutProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    return-object v0
.end method

.method public getTargetScreen()Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    return-object v0
.end method

.method public onPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mDisplayDataProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->onPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mLayoutProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->onPaused(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 66
    return-void
.end method

.method public onResuming(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mRenderingManager:Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->reset()V

    .line 58
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mDisplayDataProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/DisplayDataProcessor;->onResuming(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mLayoutProcessor:Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/LayoutProcessor;->onResuming(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    .line 60
    return-void
.end method

.method public setTargetScreen(Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;)V
    .locals 0
    .param p1, "targetScreen"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/RunningControlExtension;->mTargetScreen:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DeviceScreenTranslation;

    .line 45
    return-void
.end method

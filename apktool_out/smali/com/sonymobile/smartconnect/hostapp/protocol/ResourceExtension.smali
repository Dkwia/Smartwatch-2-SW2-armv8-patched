.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    }
.end annotation


# instance fields
.field private mCapabilities:I

.field private mColor:I

.field private mIconCid:I

.field private mIconOfflineCid:I

.field private mNameCid:I

.field private mPriority:I

.field private mRelativeCid:I

.field private mShowOnHomeScreen:Z

.field private mSupportedDrawingSpecs:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 35
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mColor:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mShowOnHomeScreen:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mRelativeCid:I

    .line 58
    const/16 v0, 0xb

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 59
    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mCapabilities:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mColor:I

    return v0
.end method

.method public getIconCid()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mIconCid:I

    return v0
.end method

.method public getIconOfflineCid()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mIconOfflineCid:I

    return v0
.end method

.method public getNameCid()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mNameCid:I

    return v0
.end method

.method public getPriority()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->values()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mPriority:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getShowOnHomeScreen()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mShowOnHomeScreen:Z

    return v0
.end method

.method public getSupportedDrawingSpecs()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mSupportedDrawingSpecs:I

    return v0
.end method

.method public setCapabilities(I)V
    .locals 0
    .param p1, "capabilites"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mCapabilities:I

    .line 137
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mColor:I

    .line 168
    return-void
.end method

.method public setIconCid(I)V
    .locals 0
    .param p1, "iconCid"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mIconCid:I

    .line 90
    return-void
.end method

.method public setIconOfflineCid(I)V
    .locals 0
    .param p1, "iconOfflineCid"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mIconOfflineCid:I

    .line 105
    return-void
.end method

.method public setNameCid(I)V
    .locals 0
    .param p1, "nameCid"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mNameCid:I

    .line 75
    return-void
.end method

.method public setPriority(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;)V
    .locals 1
    .param p1, "priority"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mPriority:I

    .line 122
    return-void
.end method

.method public setRelativeCid(I)V
    .locals 0
    .param p1, "relativeCid"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mRelativeCid:I

    .line 192
    return-void
.end method

.method public setShowOnHomeScreen(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mShowOnHomeScreen:Z

    .line 184
    return-void
.end method

.method public setSupportedDrawingSpecs(I)V
    .locals 0
    .param p1, "supportedDrawingSpecs"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->mSupportedDrawingSpecs:I

    .line 152
    return-void
.end method

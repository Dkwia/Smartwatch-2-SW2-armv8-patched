.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseVersion.java"


# instance fields
.field private mFirmwareVersion:Ljava/lang/String;

.field private mProtocolVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 13
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;->type:I

    .line 14
    return-void
.end method


# virtual methods
.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;->mProtocolVersion:I

    return v0
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "firmwareVersion"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;->mFirmwareVersion:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0
    .param p1, "protocolVersion"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseVersion;->mProtocolVersion:I

    .line 25
    return-void
.end method

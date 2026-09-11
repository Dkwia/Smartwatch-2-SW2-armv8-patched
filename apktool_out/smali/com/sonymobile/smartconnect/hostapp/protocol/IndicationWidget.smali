.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationWidget.java"


# static fields
.field public static final ACTION_START:I = 0x0

.field public static final ACTION_STOP:I = 0x1


# instance fields
.field private mAction:I

.field private mExtensionCid:I

.field private mTag:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 28
    const/16 v0, 0x8f

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->type:I

    .line 29
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->mAction:I

    return v0
.end method

.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->mExtensionCid:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->mTag:I

    return v0
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 46
    const-string v0, "mAction"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v0, "mExtensionCid"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->mExtensionCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->appendHexProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string v0, "mTag"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidget;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

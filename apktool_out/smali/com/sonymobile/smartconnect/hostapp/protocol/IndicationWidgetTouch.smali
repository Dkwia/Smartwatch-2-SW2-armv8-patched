.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationWidgetTouch.java"


# static fields
.field public static final ACTION_LONG_PRESS:I = 0x1

.field public static final ACTION_PRESS:I = 0x0

.field public static final ACTION_RELEASE:I = 0x2


# instance fields
.field private mAction:I

.field private mExtensionCid:I

.field private mKey:I

.field private mTag:I

.field private mTimestamp:J

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 32
    const/16 v0, 0x90

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->type:I

    .line 33
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mAction:I

    return v0
.end method

.method public getExtensionCid()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mExtensionCid:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mKey:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mTag:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mTimestamp:J

    return-wide v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mY:I

    return v0
.end method

.method public setExtensionCid(I)V
    .locals 0
    .param p1, "mExtensionCid"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mExtensionCid:I

    .line 65
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 70
    const-string v0, "mAction"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, "mExtensionCid"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mExtensionCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "mTimestamp"

    iget-wide v2, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "mTag"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mTag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v0, "mX"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v0, "mY"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v0, "mKey"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWidgetTouch;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

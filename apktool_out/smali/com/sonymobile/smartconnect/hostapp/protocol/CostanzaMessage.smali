.class public abstract Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.super Ljava/lang/Object;
.source "CostanzaMessage.java"


# instance fields
.field private bufferedPack:[[B

.field private messageId:I

.field protected type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "newMessageId"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->messageId:I

    .line 10
    return-void
.end method


# virtual methods
.method protected appendHexProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 60
    const-string v0, "0x%08x"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 70
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    if-nez p4, :cond_1

    .end local p3    # "value":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    return-void

    .line 74
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public clearCachedPack()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->bufferedPack:[[B

    .line 47
    return-void
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->messageId:I

    return v0
.end method

.method public getPacked(Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;)[[B
    .locals 1
    .param p1, "proto"    # Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->bufferedPack:[[B

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1, p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;->pack(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->bufferedPack:[[B

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->bufferedPack:[[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    return v0
.end method

.method public setMessageId(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->messageId:I

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 55
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 78
    const-string v0, "msgId"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->messageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v0, "type"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestExtension.java"


# static fields
.field public static final ACTION_INSTALL:I = 0x0

.field public static final ACTION_UNINSTALL:I = 0x1

.field public static final ACTION_UPDATE:I = 0x2


# instance fields
.field private mAction:I

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 26
    const/16 v0, 0x68

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->type:I

    .line 27
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->mAction:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->mValue:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->mAction:I

    .line 42
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->mValue:I

    .line 50
    return-void
.end method

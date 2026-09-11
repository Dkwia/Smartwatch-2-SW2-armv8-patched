.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "ResponseCtrl.java"


# static fields
.field public static final CTRL_RESP_CODE_OK:I


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
    const/16 v0, 0x6b

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;->type:I

    .line 27
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;->mAction:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseCtrl;->mValue:I

    return v0
.end method

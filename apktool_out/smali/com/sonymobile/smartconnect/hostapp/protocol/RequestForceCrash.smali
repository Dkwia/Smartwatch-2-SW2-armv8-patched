.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestForceCrash.java"


# static fields
.field public static final FORCE_CRASH_REQUEST_MAGIC:I = -0x3fa858d6


# instance fields
.field private mMagic:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 18
    const/16 v0, 0x29a

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;->type:I

    .line 19
    const v0, -0x3fa858d6

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;->mMagic:I

    .line 20
    return-void
.end method


# virtual methods
.method public getMagic()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;->mMagic:I

    return v0
.end method

.method public setMagic(I)V
    .locals 0
    .param p1, "magic"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;->mMagic:I

    .line 28
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "RequestDeleteResource.java"


# static fields
.field public static final ANALYTICS_CID:I = 0x7

.field public static final APPLICATION_PROPERTIES_CID:I = 0x8

.field public static final APP_DEF_CID:I = 0x4

.field public static final BINARY_CID:I = 0x5

.field public static final CONTROL_CID:I = 0x1

.field public static final DISPLAY_CID:I = 0x0

.field public static final FOTA_CID:I = 0x6

.field public static final NOTIFICATION_CID:I = 0x2

.field public static final TEXT_CID:I = 0x3


# instance fields
.field private mCidToDelete:I

.field private mCidType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 36
    const/16 v0, 0x75

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->type:I

    .line 37
    return-void
.end method


# virtual methods
.method public getCidToDelete()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;->mCidToDelete:I

    return v0
.end method

.method public getCidType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;->mCidType:I

    return v0
.end method

.method public setCidToDelete(I)V
    .locals 0
    .param p1, "cidToDelete"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;->mCidToDelete:I

    .line 45
    return-void
.end method

.method public setCidType(I)V
    .locals 0
    .param p1, "cidType"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestDeleteResource;->mCidType:I

    .line 59
    return-void
.end method

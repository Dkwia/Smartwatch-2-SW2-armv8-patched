.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;
.super Ljava/lang/Object;
.source "ResourceNotificationDataMap.java"


# instance fields
.field private mKey:I

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;->mKey:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;->mValue:I

    return v0
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;->mKey:I

    .line 18
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;->mValue:I

    .line 26
    return-void
.end method

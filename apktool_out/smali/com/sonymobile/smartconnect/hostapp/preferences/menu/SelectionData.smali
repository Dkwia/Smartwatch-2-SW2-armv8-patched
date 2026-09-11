.class public Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;
.super Ljava/lang/Object;
.source "SelectionData.java"


# instance fields
.field private mEnabledPosition:I

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "initialEnabledPosition"    # I
    .param p2, "initialLabel"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->mEnabledPosition:I

    .line 10
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->mLabel:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getEnabledPosition()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->mEnabledPosition:I

    return v0
.end method

.method public getSpinnerLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setEnabledPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->mEnabledPosition:I

    .line 19
    return-void
.end method

.method public setSpinnerLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;->mLabel:Ljava/lang/String;

    .line 23
    return-void
.end method

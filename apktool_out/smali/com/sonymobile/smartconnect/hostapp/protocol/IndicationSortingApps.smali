.class public Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
.source "IndicationSortingApps.java"


# static fields
.field public static final APPSORTING_IND_CODE_APP_DISABLED:I = 0x0

.field public static final APPSORTING_IND_CODE_APP_ENABLED:I = 0x1

.field public static final APPSORTING_IND_CODE_AZ_SORT:I = 0x2

.field public static final APPSORTING_IND_CODE_CUSTOM_SORT:I = 0x3

.field public static final APPSORTING_IND_CODE_LUNCH_AHA_SORT:I = 0x5

.field public static final APPSORTING_IND_CODE_SNAKE_UNLOCKED:I = 0x4


# instance fields
.field private mAction:I

.field private mAppCid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "newMessageId"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;-><init>(I)V

    .line 23
    const/16 v0, 0x9b

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->type:I

    .line 24
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->mAction:I

    return v0
.end method

.method public getAppCid()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->mAppCid:I

    return v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->toString(Ljava/lang/StringBuilder;)V

    .line 37
    const-string v0, "action"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v0, "appCid"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->mAppCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->appendHexProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

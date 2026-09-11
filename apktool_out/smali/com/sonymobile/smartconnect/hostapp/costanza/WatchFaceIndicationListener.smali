.class public Lcom/sonymobile/smartconnect/hostapp/costanza/WatchFaceIndicationListener;
.super Ljava/lang/Object;
.source "WatchFaceIndicationListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private final mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V
    .locals 0
    .param p1, "watchFaceStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WatchFaceIndicationListener;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 21
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x95

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 30
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;

    .line 32
    .local v0, "indication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WatchFaceIndicationListener;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionFromAccessory(I)V

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/WatchFaceIndicationListener;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationWatchFace;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setCurrentSelectedWatchFace(I)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

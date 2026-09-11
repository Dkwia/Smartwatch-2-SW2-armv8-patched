.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;
.super Ljava/lang/Object;
.source "WatchFaceTemporaryInstaller.java"


# instance fields
.field private final mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

.field private final mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V
    .locals 0
    .param p1, "msgSender"    # Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;
    .param p2, "watchFaceStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    .line 22
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 23
    return-void
.end method


# virtual methods
.method public handleInstallTemporaryResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;)V
    .locals 7
    .param p1, "resp"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    move v0, v4

    .line 44
    .local v0, "isInstallResponse":Z
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getTempWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v3

    .line 45
    .local v3, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    const/4 v2, -0x1

    .line 46
    .local v2, "watchFaceCid":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getValues()[I

    move-result-object v1

    .line 47
    .local v1, "values":[I
    if-eqz v1, :cond_0

    array-length v6, v1

    if-ne v6, v4, :cond_0

    .line 48
    aget v2, v1, v5

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseWatchFace;->getResult()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 68
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .end local v0    # "isInstallResponse":Z
    .end local v1    # "values":[I
    .end local v2    # "watchFaceCid":I
    .end local v3    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_2
    move v0, v5

    .line 42
    goto :goto_0

    .line 54
    .restart local v0    # "isInstallResponse":Z
    .restart local v1    # "values":[I
    .restart local v2    # "watchFaceCid":I
    .restart local v3    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :pswitch_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setInstalled(Z)V

    goto :goto_1

    .line 63
    :pswitch_2
    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v3, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setInstalled(Z)V

    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public install(I)V
    .locals 5
    .param p1, "watchFaceCid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;-><init>(I)V

    .line 27
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setAction(I)V

    .line 28
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setValue(I)V

    .line 29
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v2, v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 30
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Sent temporary WatchFace install msg, %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void
.end method

.method public uninstall(I)V
    .locals 5
    .param p1, "watchFaceCid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;-><init>(I)V

    .line 35
    .local v0, "req":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setAction(I)V

    .line 36
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestWatchFace;->setValue(I)V

    .line 37
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceTemporaryInstaller;->mMsgSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    new-array v2, v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 38
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Sent temporary WatchFace uninstall msg, %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    return-void
.end method

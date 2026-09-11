.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceControl.java"


# instance fields
.field private mOnlineTouchAction:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

.field private mTouchBoxBottom:I

.field private mTouchBoxLeft:I

.field private mTouchBoxRight:I

.field private mTouchBoxTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 19
    const/16 v0, 0xf

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;II)V
    .locals 1
    .param p1, "rc"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;
    .param p2, "cid"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 23
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;-><init>(II)V

    .line 24
    iget v0, p1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxLeft:I

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxLeft:I

    .line 25
    iget v0, p1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxTop:I

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxTop:I

    .line 26
    iget v0, p1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxRight:I

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxRight:I

    .line 27
    iget v0, p1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxBottom:I

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxBottom:I

    .line 28
    iget-object v0, p1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mOnlineTouchAction:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mOnlineTouchAction:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    .line 29
    return-void
.end method


# virtual methods
.method public getOnlineTouchAction()Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mOnlineTouchAction:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    return-object v0
.end method

.method public getTouchBoxBottom()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxBottom:I

    return v0
.end method

.method public getTouchBoxLeft()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxLeft:I

    return v0
.end method

.method public getTouchBoxRight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxRight:I

    return v0
.end method

.method public getTouchBoxTop()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxTop:I

    return v0
.end method

.method public setOnlineTouchAction(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;)V
    .locals 0
    .param p1, "onlineTouchAction"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mOnlineTouchAction:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    .line 99
    return-void
.end method

.method public setTouchBoxBottom(I)V
    .locals 0
    .param p1, "touchBoxBottom"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxBottom:I

    .line 85
    return-void
.end method

.method public setTouchBoxLeft(I)V
    .locals 0
    .param p1, "touchBoxLeft"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxLeft:I

    .line 43
    return-void
.end method

.method public setTouchBoxRight(I)V
    .locals 0
    .param p1, "touchBoxRight"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxRight:I

    .line 71
    return-void
.end method

.method public setTouchBoxTop(I)V
    .locals 0
    .param p1, "touchBoxTop"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxTop:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    const-string v0, "%s [cid=0x%08x, l=%d, t=%d, r=%d, b=%d, onlineTouchAction=%s]"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxLeft:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxTop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxRight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mTouchBoxBottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceControl;->mOnlineTouchAction:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

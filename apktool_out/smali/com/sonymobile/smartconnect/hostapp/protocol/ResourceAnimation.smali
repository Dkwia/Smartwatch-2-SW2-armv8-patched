.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation$AnimationType;
    }
.end annotation


# instance fields
.field private mDoneEvent:Z

.field private mFrames:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;

.field private mType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 25
    const/16 v0, 0x10

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 26
    return-void
.end method


# virtual methods
.method public enableDoneEvent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mDoneEvent:Z

    .line 30
    return-void
.end method

.method public getFrames()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mFrames:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mType:I

    return v0
.end method

.method public isDoneEventEnabled()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mDoneEvent:Z

    return v0
.end method

.method public setFrames([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;)V
    .locals 0
    .param p1, "frames"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mFrames:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;

    .line 49
    return-void
.end method

.method public setType(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation$AnimationType;)V
    .locals 1
    .param p1, "type"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation$AnimationType;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation$AnimationType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mType:I

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const-string v0, "%s [type=%d frames=%s doneEvent=%b]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mFrames:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimationFrame;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceAnimation;->mDoneEvent:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

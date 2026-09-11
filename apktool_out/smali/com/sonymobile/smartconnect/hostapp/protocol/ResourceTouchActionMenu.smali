.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;
.source "ResourceTouchActionMenu.java"


# instance fields
.field private mScreens:[I

.field private mStartVisible:Z

.field private mUseSlideEffect:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchAction;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mStartVisible:Z

    .line 18
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->setTouchAction(I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getScreens()[I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mScreens:[I

    return-object v0
.end method

.method public getStartVisible()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mStartVisible:Z

    return v0
.end method

.method public isSlideEffectUsed()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mUseSlideEffect:Z

    return v0
.end method

.method public setScreens([I)V
    .locals 0
    .param p1, "screens"    # [I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mScreens:[I

    .line 33
    return-void
.end method

.method public setStartVisible(Z)V
    .locals 0
    .param p1, "startVisible"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mStartVisible:Z

    .line 37
    return-void
.end method

.method public setUseSlideEffect(Z)V
    .locals 0
    .param p1, "useSlideEffect"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mUseSlideEffect:Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string v0, "%s [screens=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceTouchActionMenu;->mScreens:[I

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/StringUtil;->toHexString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

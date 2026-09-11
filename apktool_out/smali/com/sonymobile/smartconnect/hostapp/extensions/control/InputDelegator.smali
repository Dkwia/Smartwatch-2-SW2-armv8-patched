.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
.super Ljava/lang/Object;
.source "InputDelegator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$BaseTouchProcessor;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchEventListener;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;
    }
.end annotation


# static fields
.field public static final SWIPE_KEY:I = -0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mMenuListener:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;

.field private mTouchListenerProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mHandler:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mTouchListenerProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mMenuListener:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;

    return-object v0
.end method


# virtual methods
.method public delegateInput(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;)V
    .locals 2
    .param p1, "swipeIndication"    # Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mTouchListenerProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;

    if-nez v0, :cond_1

    .line 185
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ignored touch input, missing listener provider."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public delegateInput(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V
    .locals 2
    .param p1, "touchIndication"    # Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getAction()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mMenuListener:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mTouchListenerProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;

    if-nez v0, :cond_2

    .line 219
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ignored touch input, missing listener provider."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMenuListener(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;)V
    .locals 0
    .param p1, "menuListener"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mMenuListener:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;

    .line 181
    return-void
.end method

.method public setTouchListenerProvider(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;)V
    .locals 0
    .param p1, "touchListenerProvider"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->mTouchListenerProvider:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;

    .line 242
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;
.super Ljava/lang/Object;
.source "InputDelegator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->delegateInput(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

.field final synthetic val$touchIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;->val$touchIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 227
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;->val$touchIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getKey()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchListenerProvider;->getTouchProcessor(I)Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;

    move-result-object v0

    .line 229
    .local v0, "touchProcessor":Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
    if-nez v0, :cond_1

    .line 230
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Ignored touch, no matching touch processor (key=0x%08x)."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;->val$touchIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getKey()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$3;->val$touchIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;->onTouch(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V

    goto :goto_0
.end method

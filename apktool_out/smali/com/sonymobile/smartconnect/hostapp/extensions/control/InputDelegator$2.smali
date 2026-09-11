.class Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$2;
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
    .line 209
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$2;->val$touchIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$2;->val$touchIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;->getKey()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$MenuListener;->onMenuAction(I)V

    .line 212
    return-void
.end method

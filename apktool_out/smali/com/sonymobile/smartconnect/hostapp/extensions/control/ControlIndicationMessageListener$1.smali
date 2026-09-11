.class Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;
.super Ljava/lang/Object;
.source "ControlIndicationMessageListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

.field final synthetic val$ctrlIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;

.field final synthetic val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$ctrlIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;

    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$ctrlIndication:Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationCtrl;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->start(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->stop(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->resume(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlExtensionStack;->pause(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 91
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener$1;->val$extension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;->access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ControlIndicationMessageListener;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

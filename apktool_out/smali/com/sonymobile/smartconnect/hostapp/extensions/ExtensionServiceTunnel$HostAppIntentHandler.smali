.class Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;
.super Landroid/os/Handler;
.source "ExtensionServiceTunnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostAppIntentHandler"
.end annotation


# instance fields
.field private final mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;)V
    .locals 0
    .param p2, "intentDelegator"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    .line 39
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 43
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 62
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "Received tunneled intent %s from %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->access$000(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;->mIntentDelegator:Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/IncomingIntentDelegator;->delegateIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    invoke-static {v1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->access$102(Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;Z)Z

    .line 54
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->close()V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$HostAppIntentHandler;->this$0:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;->close()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

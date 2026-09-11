.class public Lcom/sonymobile/smartconnect/hostapp/extensions/TunnelingAhaIntentSenderImpl;
.super Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;
.source "TunnelingAhaIntentSenderImpl.java"


# instance fields
.field private final mTunnelManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "tunnelMananger"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/TunnelingAhaIntentSenderImpl;->mTunnelManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;

    .line 18
    return-void
.end method


# virtual methods
.method protected send(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/TunnelingAhaIntentSenderImpl;->mTunnelManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnelManager;->tunnelIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSenderImpl;->send(Landroid/content/Intent;)V

    .line 26
    :cond_0
    return-void
.end method

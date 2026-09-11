.class public Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeReceiver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTimeSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "timeSender"    # Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;->mTimeSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "We got a TimeChange intent!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;->mTimeSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->sendTimeAndTimeZone()V

    .line 43
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/service/TimeChangeReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    return-void
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;
.super Ljava/lang/Object;
.source "MyAppsIndicationListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

.field private final mSmartWatchAppStateListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "myAppsStorage"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mSmartWatchAppStateListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;

    .line 29
    return-void
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x9b

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 6
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 38
    move-object v1, p1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;

    .line 45
    .local v1, "indication":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mSmartWatchAppStateListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->getAppCid()I

    move-result v3

    int-to-long v4, v3

    const/4 v3, 0x0

    invoke-interface {v2, v4, v5, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;->onAppStateChange(JZ)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mSmartWatchAppStateListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSortingApps;->getAppCid()I

    move-result v3

    int-to-long v4, v3

    const/4 v3, 0x1

    invoke-interface {v2, v4, v5, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;->onAppStateChange(JZ)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mSmartWatchAppStateListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->ALPHABETIC:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;->onAppSortChange(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;)V

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mSmartWatchAppStateListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->CUSTOM:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    invoke-interface {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;->onAppSortChange(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;)V

    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addSnakeNativeApp()V

    goto :goto_0

    .line 62
    :pswitch_5
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mMyAppsStorage:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->doCustomSort()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/MyAppsIndicationListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

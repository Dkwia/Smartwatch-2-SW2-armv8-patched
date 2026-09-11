.class public Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LanguageChangedReceiver.java"


# instance fields
.field private final mAppsSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

.field private final mLocaleSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

.field private final mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;)V
    .locals 0
    .param p1, "timeAndLocaleSender"    # Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;
    .param p2, "watchFaceStorage"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .param p3, "appsSyncManager"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;->mLocaleSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    .line 29
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 30
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;->mAppsSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User changed language. Sending setting to accessory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;->mLocaleSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->sendLocale()V

    .line 39
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;->mWatchFaceStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->refreshNativeWatchFaces()V

    .line 40
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/LanguageChangedReceiver;->mAppsSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MyAppsSyncManager;->refreshApps()V

    .line 41
    return-void
.end method

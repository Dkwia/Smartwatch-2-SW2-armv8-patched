.class Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;
.super Ljava/lang/Object;
.source "CostanzaHostApplication.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CostanzaFactoryResetter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mTotalResetRequested:Z

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearResetFlag()V
    .locals 4

    .prologue
    .line 185
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "force_factory_reset"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method public getResetFlag()Z
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "force_factory_reset"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public performReset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 110
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->disableEventObservers()V

    .line 111
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->disableContentObservers()V

    .line 112
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->disableContentObservers()V

    .line 113
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;-><init>()V

    .line 115
    .local v1, "pauser":Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->pause(Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;)V

    .line 116
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->pause(Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;)V

    .line 119
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->waitForPauseAck([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CachePersister;->reset()V

    .line 126
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$600(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;->reset()V

    .line 127
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$700(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->reset()V

    .line 128
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->reset()V

    .line 129
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->reset()V

    .line 130
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->reset()V

    .line 131
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->reset(Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;)V

    .line 132
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$800(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;->reset()V

    .line 133
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->reset()V

    .line 134
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$900(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WatchFaceSyncManager;->reset()V

    .line 135
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1000(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/WallpaperSyncManager;->reset()V

    .line 137
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1100(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/RenderingManager;->reset()V

    .line 139
    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->mTotalResetRequested:Z

    if-eqz v2, :cond_0

    .line 140
    iput-boolean v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->mTotalResetRequested:Z

    .line 142
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1200(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->reset()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->clearResetFlag()V

    .line 148
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/ThreadPauser;->resume()V

    .line 150
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->enableEventOberservers()V

    .line 151
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->enableContentObservers()V

    .line 152
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->enableContentObservers()V

    .line 153
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto/16 :goto_0
.end method

.method public requestReset()V
    .locals 4

    .prologue
    .line 163
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Host application reset called"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1300(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Resetting Host Application"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "force_factory_reset"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->access$1400(Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->sendFactoryResetMessage()V

    .line 176
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method public requestTotalReset()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication$CostanzaFactoryResetter;->mTotalResetRequested:Z

    .line 181
    return-void
.end method

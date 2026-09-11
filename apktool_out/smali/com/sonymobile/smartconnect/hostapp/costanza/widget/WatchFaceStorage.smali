.class public Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;
.source "WatchFaceStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;
    }
.end annotation


# static fields
.field private static final ACCESSSORY_SELECTION_TIMESTAMP_KEY:Ljava/lang/String; = "watchface_accessory_selection_timestamp"

.field private static final HOSTAPP_SELECTED_WF_KEY0:Ljava/lang/String; = "hostapp_selected_watchface_0"

.field private static final HOSTAPP_SELECTED_WF_KEY1:Ljava/lang/String; = "hostapp_selected_watchface_1"

.field private static final HOSTAPP_SELECTED_WF_KEY2:Ljava/lang/String; = "hostapp_selected_watchface_2"

.field private static final HOSTAPP_SELECTION_TIMESTAMP_KEY:Ljava/lang/String; = "watchface_hostapp_selection_timestamp"

.field private static final HOSTAPP_SET_CURRENT_SELECTED:Ljava/lang/String; = "hostapp_set_current_selected"

.field public static final MAX_SELECTED_WATCHFACES:I = 0x3

.field public static final MAX_WATCHFACE_NUMBER:I = 0x13

.field private static final STORAGE_FOLDER:Ljava/lang/String; = "watchfaces"

.field private static final STORAGE_VERSION:I = 0x11


# instance fields
.field private final mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mTempWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

.field mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

.field private final mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "widgetProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 136
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .line 138
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->addWidgetChangeListener(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;)V

    .line 139
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->loadWatchFaces()V

    .line 140
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persistInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getNativeWatchFaces(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWidgetProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    return-object v0
.end method

.method private getNativeWatchFaces(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v8, "watchFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v6, "savedSelectedNativeWatchfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ge v3, v9, :cond_1

    .line 188
    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectedWatchFaceKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getPersistedInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, "cid":I
    if-eqz v1, :cond_0

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "cid":I
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 194
    .local v2, "config":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->getCid()I

    move-result v9

    invoke-direct {v7, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;-><init>(I)V

    .line 195
    .local v7, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->getTextResId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->getTextResId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setName(Ljava/lang/String;)V

    .line 200
    :goto_2
    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;)I

    move-result v9

    invoke-static {v9, p1}, Lcom/sonymobile/smartconnect/hostapp/util/UriUtil;->resIdtoUriString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setThumbnailUriString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 203
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setSelected(Z)V

    .line 193
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setName(Ljava/lang/String;)V

    goto :goto_2

    .line 207
    .end local v2    # "config":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    .end local v7    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_4
    return-object v8
.end method

.method private loadWatchFaces()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 145
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 149
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 153
    :cond_0
    return-void
.end method

.method private notifyCommitObservers()V
    .locals 3

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;

    .line 161
    .local v1, "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;->onCommit()V

    goto :goto_0

    .line 163
    .end local v1    # "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;
    :cond_0
    return-void
.end method

.method private notifyTemporaryCommitObservers()V
    .locals 3

    .prologue
    .line 166
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;

    .line 167
    .local v1, "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;->onTemporaryCommit()V

    goto :goto_0

    .line 169
    .end local v1    # "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;
    :cond_0
    return-void
.end method

.method private persistInt(Ljava/lang/String;I)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 692
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 693
    const-string v2, "Persisting int: %s=%d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 697
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 698
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 700
    return-void
.end method

.method private removeWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 2
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->remove(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->commit()V

    .line 322
    :cond_0
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSelectedWatchFaceInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 3
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 540
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v1

    .line 541
    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 542
    monitor-exit v1

    .line 553
    :goto_0
    return-void

    .line 544
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setSelected(Z)V

    .line 545
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    sget v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    .line 550
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->commit()V

    goto :goto_0

    .line 544
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 548
    :cond_2
    :try_start_1
    sget v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    goto :goto_2

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method

.method public addTempWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 0
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mTempWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 360
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->temporaryCommit()V

    .line 361
    return-void
.end method

.method public addWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 3
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 298
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->size()I

    move-result v0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 300
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "WatchFace not added, watchface number limit exceeded"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 302
    monitor-exit v1

    .line 314
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 309
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    const-string v0, "WatchFace not added, already existed"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public areWatchFacesSelected([I)Z
    .locals 9
    .param p1, "cids"    # [I

    .prologue
    .line 676
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v8

    .line 677
    move-object v0, p1

    .local v0, "arr$":[I
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget v1, v0, v3

    .line 678
    .local v1, "cid":I
    const/4 v5, 0x0

    .line 679
    .local v5, "selected":Z
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 680
    .local v6, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isMarkedForDeletion()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v7

    if-ne v7, v1, :cond_0

    .line 681
    const/4 v5, 0x1

    goto :goto_1

    .line 684
    .end local v6    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_1
    if-nez v5, :cond_2

    .line 685
    const/4 v7, 0x0

    monitor-exit v8

    .line 688
    .end local v1    # "cid":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "selected":Z
    :goto_2
    return v7

    .line 677
    .restart local v1    # "cid":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "selected":Z
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 687
    .end local v1    # "cid":I
    .end local v5    # "selected":Z
    :cond_3
    monitor-exit v8

    .line 688
    const/4 v7, 0x1

    goto :goto_2

    .line 687
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public clearSelectedWatchFaces()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 526
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v3

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 528
    .local v1, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setSelected(Z)V

    goto :goto_0

    .line 530
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    sput v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    .line 532
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "Commit called"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 173
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 175
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->notifyCommitObservers()V

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public editSelectedWatchFaceInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 2
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 556
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v1

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->commit()V

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public editWatchFaceSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 4
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 520
    const-string v0, "Editing watchface, 0x%08x."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp()V

    .line 522
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->editSelectedWatchFaceInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 523
    return-void
.end method

.method public getAccessorySelectionTimestamp()I
    .locals 1

    .prologue
    .line 728
    const-string v0, "watchface_accessory_selection_timestamp"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getPersistedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllWatchFaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    .local v0, "returnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 271
    return-object v0
.end method

.method public getCurrentSelectedWatchFace()I
    .locals 1

    .prologue
    .line 733
    const-string v0, "hostapp_set_current_selected"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getPersistedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHostAppSelectedWatchFaceKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 752
    packed-switch p1, :pswitch_data_0

    .line 759
    const-string v0, "hostapp_selected_watchface_0"

    :goto_0
    return-object v0

    .line 754
    :pswitch_0
    const-string v0, "hostapp_selected_watchface_1"

    goto :goto_0

    .line 756
    :pswitch_1
    const-string v0, "hostapp_selected_watchface_2"

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHostAppSelectionTimestamp()I
    .locals 1

    .prologue
    .line 724
    const-string v0, "watchface_hostapp_selection_timestamp"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getPersistedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPersistedInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 703
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 704
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSelectedWatchFaces()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .locals 6

    .prologue
    .line 660
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v2, "selectedWatchfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v5

    .line 663
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 664
    .local v3, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isMarkedForDeletion()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 670
    .local v1, "ret":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    check-cast v1, [Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 672
    .restart local v1    # "ret":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    return-object v1
.end method

.method public getSelectedWatchFacesCid()[I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 651
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 652
    .local v2, "value":[I
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getSelectedWatchFaces()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v1

    .line 653
    .local v1, "selectedWatchfacesCid":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    if-ge v0, v4, :cond_0

    .line 654
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    aput v3, v2, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-object v2

    .line 651
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method protected getStorageFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "watchfaces"

    return-object v0
.end method

.method protected getStorageVersion()I
    .locals 1

    .prologue
    .line 227
    const/16 v0, 0x11

    return v0
.end method

.method public declared-synchronized getTempWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mTempWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mTempWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWatchFace(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 279
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v3

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 281
    .local v1, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 282
    monitor-exit v3

    .line 286
    .end local v1    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :goto_0
    return-object v1

    .line 285
    :cond_1
    monitor-exit v3

    .line 286
    const/4 v1, 0x0

    goto :goto_0

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWatchFaces()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getAllWatchFaces()Ljava/util/List;

    move-result-object v1

    .line 240
    .local v1, "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 241
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isMarkedForDeletion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 246
    :cond_1
    return-object v1
.end method

.method public isHostAppSelectionSynced()Z
    .locals 2

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getAccessorySelectionTimestamp()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectionTimestamp()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWatchFaceSelected(I)Z
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 639
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v3

    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 641
    .local v1, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isMarkedForDeletion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    const/4 v2, 0x1

    monitor-exit v3

    .line 647
    .end local v1    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :goto_0
    return v2

    .line 645
    :cond_1
    monitor-exit v3

    .line 647
    const/4 v2, 0x0

    goto :goto_0

    .line 645
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public markNonNativeWatchFacesAsNotInstalled()V
    .locals 4

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getAllWatchFaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 738
    .local v1, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v2

    if-nez v2, :cond_0

    .line 739
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setInstalled(Z)V

    goto :goto_0

    .line 742
    .end local v1    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v3

    .line 743
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 744
    monitor-exit v3

    .line 745
    return-void

    .line 744
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public markTempWatchFaceForUninstall()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mTempWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isMarkedForDeletion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mTempWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->markForDeletion()V

    .line 370
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->temporaryCommit()V

    .line 372
    :cond_0
    return-void
.end method

.method public markWatchFacesForDeletion(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "watchfacesToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    const/4 v3, 0x0

    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v3

    .line 330
    :cond_1
    const/4 v1, 0x0

    .line 331
    .local v1, "isSelectionChanged":Z
    monitor-enter p1

    .line 332
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 333
    .local v2, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v4

    if-nez v4, :cond_2

    .line 334
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->markForDeletion()V

    .line 335
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    const/4 v1, 0x1

    .line 337
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setSelected(Z)V

    .line 338
    sget v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    goto :goto_1

    .line 342
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-eqz v1, :cond_5

    .line 345
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getSelectedWatchFaces()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_4

    .line 346
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getWatchFaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 355
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp()V

    .line 349
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->commit()V

    goto :goto_2

    .line 352
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->commit()V

    goto :goto_2
.end method

.method public refreshNativeWatchFaces()V
    .locals 9

    .prologue
    .line 212
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 213
    .local v1, "config":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->getCid()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;-><init>(I)V

    .line 214
    .local v6, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v7, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 215
    .local v3, "indexInList":I
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;->getTextResId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "newWatchfaceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v7, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v7, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setName(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "config":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$NativeWatchFaceConfig;
    .end local v3    # "indexInList":I
    .end local v5    # "newWatchfaceName":Ljava/lang/String;
    .end local v6    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_0
    return-void
.end method

.method public removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public setAccessorySelectionTimestamp(I)V
    .locals 1
    .param p1, "timestamp"    # I

    .prologue
    .line 716
    const-string v0, "watchface_accessory_selection_timestamp"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persistInt(Ljava/lang/String;I)V

    .line 717
    return-void
.end method

.method public setCurrentSelectedWatchFace(I)V
    .locals 1
    .param p1, "cid"    # I

    .prologue
    .line 720
    const-string v0, "hostapp_set_current_selected"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persistInt(Ljava/lang/String;I)V

    .line 721
    return-void
.end method

.method public setHostAppSelectionTimestamp()V
    .locals 4

    .prologue
    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp(I)V

    .line 713
    return-void
.end method

.method public setHostAppSelectionTimestamp(I)V
    .locals 1
    .param p1, "timestamp"    # I

    .prologue
    .line 708
    const-string v0, "watchface_hostapp_selection_timestamp"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persistInt(Ljava/lang/String;I)V

    .line 709
    return-void
.end method

.method public setInstalled(IZ)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "isInstalled"    # Z

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getWatchFace(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v0

    .line 563
    .local v0, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    if-eqz v0, :cond_1

    .line 564
    if-eqz p2, :cond_0

    .line 565
    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setInstalled(Z)V

    .line 569
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v2

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 571
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :goto_1
    return-void

    .line 567
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->removeWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 573
    :cond_1
    const-string v1, "Failed to set non-existing watch face as installed, 0x%08x."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setInstalled([I)V
    .locals 9
    .param p1, "values"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 617
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    monitor-enter v5

    .line 618
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->mWatchFaces:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 619
    .local v3, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setInstalled(Z)V

    goto :goto_0

    .line 621
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    if-eqz p1, :cond_3

    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_3

    .line 625
    aget v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getWatchFace(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v2

    .line 626
    .local v2, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    if-eqz v2, :cond_2

    .line 627
    invoke-virtual {v2, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setInstalled(Z)V

    .line 624
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 629
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 630
    const-string v4, "Failed to set non-existing watchface as installed, 0x%08x."

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, p1, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 636
    .end local v0    # "i":I
    .end local v2    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_3
    return-void
.end method

.method public setTempWatchFaceFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 1
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 514
    const-string v0, "Selected temporary Watch face"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 515
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp()V

    .line 516
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->temporaryCommit()V

    .line 517
    return-void
.end method

.method public setWatchFaceSelectionCidsFromAccessory([I)V
    .locals 2
    .param p1, "cids"    # [I

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->clearSelectedWatchFaces()V

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 588
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionFromAccessory(I)V

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_0
    return-void
.end method

.method public setWatchFaceSelectionFromAccessory(I)V
    .locals 5
    .param p1, "watchFaceCid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 598
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getWatchFace(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v0

    .line 599
    .local v0, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    if-eqz v0, :cond_1

    .line 600
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setSelectedWatchFaceInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 601
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const-string v1, "Changed watchface selection from accessory."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    sget v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->CID_START_VALUE:I

    if-lt p1, v1, :cond_3

    .line 605
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    const-string v1, "Failed setting the watch face, 0x%08x."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    :cond_2
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->STANDBY_APP_HERO:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionFromAccessory(I)V

    goto :goto_0

    .line 610
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    const-string v1, "Failed finding native watch face, 0x%08x. Skipped setting it."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWatchFaceSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 4
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 508
    const-string v0, "Selected watchface, 0x%08x."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setHostAppSelectionTimestamp()V

    .line 510
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setSelectedWatchFaceInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 511
    return-void
.end method

.method public temporaryCommit()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->notifyTemporaryCommitObservers()V

    .line 181
    return-void
.end method

.method public updateTempWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 0
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->addTempWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 365
    return-void
.end method

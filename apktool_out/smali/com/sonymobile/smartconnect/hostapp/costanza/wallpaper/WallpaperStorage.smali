.class public Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;
.source "WallpaperStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;
    }
.end annotation


# static fields
.field private static final ACCESSSORY_SELECTION_TIMESTAMP_KEY:Ljava/lang/String; = "wallpaper_accessory_selection_timestamp"

.field private static final HOSTAPP_SELECTION_TIMESTAMP_KEY:Ljava/lang/String; = "wallpaper_hostapp_selection_timestamp"

.field public static final MAX_WALLPAPER_NUMBER:I = 0x14

.field public static final NATIVE_WALLPAPERS_COUNT:I = 0x7

.field private static final STORAGE_FOLDER:Ljava/lang/String; = "wallpapers"

.field private static final STORAGE_VERSION:I = 0x1

.field private static mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;


# instance fields
.field private final mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 97
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mContext:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->loadWallpapers()V

    .line 99
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPersistedInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 447
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private loadWallpapers()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 104
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 106
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 108
    :cond_0
    return-void
.end method

.method private notifyCommitObservers()V
    .locals 3

    .prologue
    .line 121
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;

    .line 122
    .local v1, "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;->onCommit()V

    goto :goto_0

    .line 124
    .end local v1    # "observer":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;
    :cond_0
    return-void
.end method

.method private persistInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 439
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 443
    return-void
.end method

.method private declared-synchronized removeWallpaper(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setSelectedWallpaperInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V
    .locals 3
    .param p1, "wallpaper"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .prologue
    .line 361
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 362
    .local v1, "wallpaperEntry":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setSelected(Z)V

    goto :goto_0

    .line 364
    .end local v1    # "wallpaperEntry":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->commit()V

    .line 365
    return-void
.end method


# virtual methods
.method public addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public declared-synchronized addWallpaper(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "Wallpaper not added, already exists"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    const-string v0, "Commit called"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 201
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 202
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->notifyCommitObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccessorySelectionTimestamp()I
    .locals 1

    .prologue
    .line 467
    const-string v0, "wallpaper_accessory_selection_timestamp"

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getPersistedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllWallpapers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    .local v0, "wallpapersReturnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    return-object v0
.end method

.method public getHostAppSelectionTimestamp()I
    .locals 1

    .prologue
    .line 463
    const-string v0, "wallpaper_hostapp_selection_timestamp"

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getPersistedInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getImageResourceProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    return-object v0
.end method

.method public getNativeWallpapers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v5, "wallpapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->values()[Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 209
    .local v1, "config":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/CostanzaWallpaper;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->getCid()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/CostanzaWallpaper;-><init>(I)V

    .line 210
    .local v4, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->getTextResId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->getTextResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setName(Ljava/lang/String;)V

    .line 215
    :goto_1
    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;)I

    move-result v6

    invoke-static {v6, p1}, Lcom/sonymobile/smartconnect/hostapp/util/UriUtil;->resIdtoUriString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setThumbnailUriString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    .end local v1    # "config":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$NativeWallpaperConfig;
    .end local v4    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_1
    return-object v5
.end method

.method public getNonNativeWallpapers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAllWallpapers()Ljava/util/List;

    move-result-object v1

    .line 225
    .local v1, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 231
    :cond_1
    return-object v1
.end method

.method public getSelectedWallpaper()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    .locals 3

    .prologue
    .line 286
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 287
    .local v1, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isMarkedForDeletion()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    .end local v1    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedWallpaperCid()I
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getSelectedWallpaper()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    move-result-object v0

    .line 279
    .local v0, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v1

    .line 282
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getStorageFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "wallpapers"

    return-object v0
.end method

.method protected getStorageVersion()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public getWallpaper(I)Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 269
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 270
    .local v1, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 274
    .end local v1    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWallpapers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAllWallpapers()Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "wallpapersReturnList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 238
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isMarkedForDeletion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 244
    :cond_1
    return-object v1
.end method

.method public isHostAppSelectionSynced()Z
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAccessorySelectionTimestamp()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getHostAppSelectionTimestamp()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markNonNativeWallpapersAsNotInstalled()V
    .locals 3

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAllWallpapers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 431
    .local v1, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v2

    if-nez v2, :cond_0

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setInstalled(Z)V

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    goto :goto_0

    .line 436
    .end local v1    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_1
    return-void
.end method

.method public markWallpapersForDeletion(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "wallpapersToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    const/4 v3, 0x0

    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    const/4 v1, 0x0

    .line 180
    .local v1, "isSelectionChanged":Z
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

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 181
    .local v2, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v4

    if-nez v4, :cond_2

    .line 182
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->markForDeletion()V

    .line 183
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    const/4 v1, 0x1

    .line 185
    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setSelected(Z)V

    goto :goto_1

    .line 190
    .end local v2    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_3
    if-eqz v1, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getWallpapers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setWallpaperSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    .line 196
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->commit()V

    goto :goto_2
.end method

.method public removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public removeMarkedWallpaper()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getAllWallpapers()Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "wallpapersReturnList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isMarkedForDeletion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    :cond_1
    return-void
.end method

.method public setAccessorySelectionTimestamp(I)V
    .locals 1
    .param p1, "timestamp"    # I

    .prologue
    .line 459
    const-string v0, "wallpaper_accessory_selection_timestamp"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->persistInt(Ljava/lang/String;I)V

    .line 460
    return-void
.end method

.method public setHostAppSelectionTimestamp()V
    .locals 4

    .prologue
    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setHostAppSelectionTimestamp(I)V

    .line 456
    return-void
.end method

.method public setHostAppSelectionTimestamp(I)V
    .locals 1
    .param p1, "timestamp"    # I

    .prologue
    .line 451
    const-string v0, "wallpaper_hostapp_selection_timestamp"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->persistInt(Ljava/lang/String;I)V

    .line 452
    return-void
.end method

.method public setImageResourceProivder(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;)V
    .locals 0
    .param p1, "imageResourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    .prologue
    .line 426
    sput-object p1, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mImageResourceProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;

    .line 427
    return-void
.end method

.method public setInstalled(IZ)V
    .locals 5
    .param p1, "cid"    # I
    .param p2, "isInstalled"    # Z

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getWallpaper(I)Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    move-result-object v0

    .line 390
    .local v0, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    if-eqz v0, :cond_1

    .line 391
    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setInstalled(Z)V

    .line 396
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    monitor-enter v2

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->persist(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)V

    .line 398
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :goto_1
    return-void

    .line 394
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->removeWallpaper(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 400
    :cond_1
    const-string v1, "Failed to set non-existing wallpaper installed, 0x%08x."

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
    .locals 11
    .param p1, "values"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 405
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    monitor-enter v7

    .line 406
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->mWallpapers:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 407
    .local v5, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setInstalled(Z)V

    goto :goto_0

    .line 409
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    if-eqz p1, :cond_3

    .line 412
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget v4, v0, v1

    .line 413
    .local v4, "wallpaperCid":I
    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getWallpaper(I)Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    move-result-object v3

    .line 414
    .local v3, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    if-eqz v3, :cond_2

    .line 415
    invoke-virtual {v3, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setInstalled(Z)V

    .line 412
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 417
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 418
    const-string v6, "Failed to set non-existing wallpaper installed, 0x%08x."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 423
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    .end local v4    # "wallpaperCid":I
    :cond_3
    return-void
.end method

.method public setWallpaperSelectionFromAccessory(I)V
    .locals 5
    .param p1, "wallpaperCid"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 368
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getWallpaper(I)Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    move-result-object v0

    .line 369
    .local v0, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setSelectedWallpaperInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    .line 372
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "Changed wallpaper selection from accessory"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    sget v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->CID_START_VALUE:I

    if-lt p1, v1, :cond_3

    .line 377
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    const-string v1, "Failed setting the wallpaper, 0x%08x."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :cond_2
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WALLPAPER_01:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setWallpaperSelectionFromAccessory(I)V

    goto :goto_0

    .line 382
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const-string v1, "Failed finding native wallpaper, 0x%08x. Skipped setting it."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setWallpaperSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .prologue
    .line 355
    const-string v0, "Selected wallpaper, 0x%08x, %d."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setHostAppSelectionTimestamp()V

    .line 357
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setSelectedWallpaperInternal(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    .line 358
    return-void
.end method

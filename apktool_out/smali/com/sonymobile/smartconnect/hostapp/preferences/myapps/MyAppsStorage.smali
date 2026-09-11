.class public Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;
.source "MyAppsStorage.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;
    }
.end annotation


# static fields
.field private static final CID_SEPARATOR:Ljava/lang/String; = ";"

.field private static final DISABLED_APPS_PREFERENCE_KEY:Ljava/lang/String; = "disabled_apps_preference_key"

.field private static final FIRST_SHOW_PREFERENCE_KEY:Ljava/lang/String; = "first_show_preference_key"

.field private static final SORT_MODE_PREFERENCE_KEY:Ljava/lang/String; = "sort_mode_preference_key"

.field private static final SORT_ORDER_PREFERENCE_KEY:Ljava/lang/String; = "sort_order_preference_key"

.field private static final TAG:Ljava/lang/String; = "MyAppsStorage"


# instance fields
.field private mAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCustomSort:Z

.field private final mDisabledAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledSavedAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeAppMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mNoneHomeScreenExtensionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FileStorage;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 59
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    .line 61
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    .line 62
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    .line 72
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mExtensions:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNoneHomeScreenExtensionsList:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    .line 76
    const-string v1, "sort_mode_preference_key"

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "sortMode":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->CUSTOM:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->setCustomSort(Z)V

    .line 81
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->readNativeApps()V

    .line 82
    return-void
.end method

.method private notifyCommitObservers()V
    .locals 3

    .prologue
    .line 95
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;

    .line 96
    .local v1, "observer":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;->onCommit()V

    goto :goto_0

    .line 98
    .end local v1    # "observer":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;
    :cond_0
    return-void
.end method

.method private readNativeApps()V
    .locals 15

    .prologue
    .line 114
    iget-object v12, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 115
    .local v10, "res":Landroid/content/res/Resources;
    const v12, 0x7f0a0004

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "nativeApps":[Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 117
    .local v0, "app":Ljava/lang/String;
    const-string v12, ";"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "nativeApp":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v6, v12

    const-string v13, "com.native.snake.app"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 120
    if-eqz v6, :cond_0

    :try_start_0
    array-length v12, v6

    const/4 v13, 0x2

    if-ge v12, v13, :cond_2

    .line 121
    :cond_0
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad format of app "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot parse native app cid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 116
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_2
    const/4 v12, 0x0

    :try_start_1
    aget-object v4, v6, v12

    .line 124
    .local v4, "key":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v12, v6, v12

    const-string v13, "string"

    iget-object v14, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 126
    .local v11, "resourceId":I
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "nativeAppName":Ljava/lang/String;
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v12, 0x0

    aget-object v12, v6, v12

    const/4 v13, 0x1

    aget-object v13, v6, v13

    const/4 v14, 0x1

    invoke-direct {v7, v12, v13, v8, v14}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    .local v7, "nativeAppItem":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    iget-object v12, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v12, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 135
    .end local v0    # "app":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "nativeApp":[Ljava/lang/String;
    .end local v7    # "nativeAppItem":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v8    # "nativeAppName":Ljava/lang/String;
    .end local v11    # "resourceId":I
    :cond_3
    return-void
.end method

.method private switchToCustomSortMode()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isFirstShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V

    .line 195
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;->showMessage()V

    .line 201
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateAppsLists()V

    .line 202
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateEnabledAppsList(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public addDisabledApp(J)V
    .locals 9
    .param p1, "cid"    # J

    .prologue
    .line 342
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 343
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 344
    .local v0, "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, v6, p1

    if-nez v4, :cond_0

    .line 345
    const-string v4, "App already in the mDisabledExtensionList"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 346
    monitor-exit v5

    .line 369
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :goto_0
    return-void

    .line 349
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mExtensions:Ljava/util/ArrayList;

    .line 352
    .local v2, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 353
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 354
    .local v1, "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, v6, p1

    if-nez v4, :cond_2

    .line 355
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v1    # "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 360
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 361
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 362
    .restart local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, v6, p1

    if-nez v4, :cond_4

    .line 363
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->setIsEnabled(Z)V

    .line 364
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 349
    .end local v2    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 359
    .restart local v2    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method public addDisabledApp(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 313
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 314
    .local v0, "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 315
    const-string v4, "App already in the mDisabledExtensionList"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 316
    monitor-exit v5

    .line 339
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :goto_0
    return-void

    .line 319
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 321
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mExtensions:Ljava/util/ArrayList;

    .line 322
    .local v2, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 323
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 324
    .local v1, "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 325
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v1    # "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 330
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 331
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 332
    .restart local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_4

    .line 333
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->setIsEnabled(Z)V

    .line 334
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_5
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 319
    .end local v2    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 329
    .restart local v2    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method public addSnakeNativeApp()V
    .locals 17

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    monitor-enter v14

    .line 557
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 558
    .local v7, "nativeApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v15, "com.native.watchworm.app"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 559
    monitor-exit v14

    .line 598
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "nativeApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :goto_0
    return-void

    .line 562
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 565
    .local v11, "res":Landroid/content/res/Resources;
    const v13, 0x7f0a0004

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 566
    .local v10, "nativeApps":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    monitor-enter v14

    .line 567
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    :try_start_1
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_5

    aget-object v1, v2, v4

    .line 568
    .local v1, "app":Ljava/lang/String;
    const-string v13, ";"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 569
    .local v7, "nativeApp":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v7, v13

    const-string v15, "com.native.watchworm.app"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-eqz v13, :cond_3

    .line 571
    if-eqz v7, :cond_2

    :try_start_2
    array-length v13, v7

    const/4 v15, 0x2

    if-ge v13, v15, :cond_4

    .line 572
    :cond_2
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad format of app "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 582
    :catch_0
    move-exception v3

    .line 583
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot parse native app cid: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 567
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 562
    .end local v1    # "app":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "nativeApp":[Ljava/lang/String;
    .end local v10    # "nativeApps":[Ljava/lang/String;
    .end local v11    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v13

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v13

    .line 574
    .restart local v1    # "app":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "nativeApp":[Ljava/lang/String;
    .restart local v10    # "nativeApps":[Ljava/lang/String;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :cond_4
    const/4 v13, 0x0

    :try_start_5
    aget-object v5, v7, v13

    .line 575
    .local v5, "key":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v7, v13

    const-string v15, "string"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v13, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 577
    .local v12, "resourceId":I
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 578
    .local v9, "nativeAppName":Ljava/lang/String;
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v13, 0x0

    aget-object v13, v7, v13

    const/4 v15, 0x1

    aget-object v15, v7, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v8, v13, v15, v9, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 580
    .local v8, "nativeAppItem":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v13, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 587
    .end local v1    # "app":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "nativeApp":[Ljava/lang/String;
    .end local v8    # "nativeAppItem":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v9    # "nativeAppName":Ljava/lang/String;
    .end local v12    # "resourceId":I
    :catchall_1
    move-exception v13

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v13

    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_5
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    monitor-enter v14

    .line 590
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 592
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v13

    if-nez v13, :cond_6

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V

    .line 597
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateLists()V

    goto/16 :goto_0

    .line 592
    :catchall_2
    move-exception v13

    :try_start_9
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v13
.end method

.method public addToAppsList(J)V
    .locals 11
    .param p1, "cid"    # J

    .prologue
    .line 394
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 395
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 396
    .local v0, "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, v6, p1

    if-nez v4, :cond_0

    .line 397
    const-string v4, "App already in the mAppsList"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 398
    monitor-exit v5

    .line 432
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mExtensions:Ljava/util/ArrayList;

    .line 404
    .local v2, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 405
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 406
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 407
    .local v1, "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    int-to-long v8, v4

    cmp-long v4, v8, p1

    if-nez v4, :cond_3

    .line 408
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v1    # "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 416
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 417
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 418
    :try_start_4
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 419
    :try_start_5
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 420
    .restart local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v4

    int-to-long v8, v4

    cmp-long v4, v8, p1

    if-nez v4, :cond_5

    .line 421
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->setIsEnabled(Z)V

    .line 422
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_6
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 428
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 429
    iget-boolean v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCustomSort:Z

    if-nez v4, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V

    goto :goto_0

    .line 401
    .end local v2    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v4

    .line 415
    .restart local v2    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4

    .line 416
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v4

    .line 427
    :catchall_3
    move-exception v4

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v4

    .line 428
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v4
.end method

.method public declared-synchronized commit()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    const-string v0, "Commit called"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 110
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->notifyCommitObservers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doAlphabeticalSort()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "sort_mode_preference_key"

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->ALPHABETIC:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->setCustomSort(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V

    .line 171
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateAppsLists()V

    .line 172
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->saveAppOrder()V

    .line 173
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->commit()V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;->updateSpinner()V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;->updateAdapter()V

    .line 178
    :cond_0
    return-void
.end method

.method public doCustomSort()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "sort_mode_preference_key"

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->CUSTOM:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->setCustomSort(Z)V

    .line 183
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->switchToCustomSortMode()V

    .line 184
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->saveAppOrder()V

    .line 185
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->commit()V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;->updateSpinner()V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;->updateAdapter()V

    .line 190
    :cond_0
    return-void
.end method

.method public getAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisabledAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisabledAppsListSize()I
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEnabledAppsListSize()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledSavedAppsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtensionsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mExtensions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNativeAppMap()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getNoneHomeScreenExtensionsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNoneHomeScreenExtensionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNoneHomeScreenExtensionsListSize()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNoneHomeScreenExtensionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSortedCids()[I
    .locals 5

    .prologue
    .line 211
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 212
    .local v2, "size":I
    new-array v0, v2, [I

    .line 213
    .local v0, "cids":[I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 214
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v3

    aput v3, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    monitor-exit v4

    .line 218
    return-object v0

    .line 217
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected getStorageFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStorageVersion()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isCostumSort()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCustomSort:Z

    return v0
.end method

.method isFirstShow()Z
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "first_show_preference_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onAppSortChange(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    .prologue
    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppSortChange, mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 655
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->CUSTOM:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SmartWatchAppStateListener$SortMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->doCustomSort()V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->doAlphabeticalSort()V

    goto :goto_0
.end method

.method public onAppStateChange(JZ)V
    .locals 3
    .param p1, "cid"    # J
    .param p3, "enabled"    # Z

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppStateChange, cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 634
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 635
    const-string v0, "Wrong cid"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 650
    :goto_0
    return-void

    .line 639
    :cond_0
    if-nez p3, :cond_1

    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addDisabledApp(J)V

    .line 641
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->removeFromAppsList(J)V

    .line 648
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateLists()V

    .line 649
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->commit()V

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->removeDisabledApp(J)V

    .line 645
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addToAppsList(J)V

    goto :goto_1
.end method

.method persistString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void
.end method

.method public readAppOrder()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    const-string v7, "sort_order_preference_key"

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "appOrder":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    const/4 v6, 0x0

    .line 274
    :cond_0
    return-object v6

    .line 269
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v6, "storedPackageNamesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ";"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "storedPackageNames":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 272
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public readDisabledApps()V
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->readDisabledAppsCids()Ljava/util/ArrayList;

    move-result-object v0

    .line 280
    .local v0, "disabledAppsPackageNamesLis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 287
    :cond_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    .local v1, "i":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->addDisabledApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readDisabledAppsCids()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    const-string v7, "disabled_apps_preference_key"

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "disabledApps":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 301
    const/4 v3, 0x0

    .line 308
    :cond_0
    return-object v3

    .line 303
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v3, "disabledAppsPackageNamesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, ";"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "disabledAppsPackageName":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 306
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public refreshNativeApps()V
    .locals 7

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->readNativeApps()V

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    .local v3, "temporaryEnabledAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 143
    .local v4, "wrapper":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getType()Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->NATIVE:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    if-ne v5, v6, :cond_0

    .line 144
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 145
    .local v1, "indexOfItem":I
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 146
    .local v2, "nativeApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getIsEnabled()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->setIsEnabled(Z)V

    goto :goto_0

    .line 152
    .end local v1    # "indexOfItem":I
    .end local v2    # "nativeApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v4    # "wrapper":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    return-void
.end method

.method public removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$CommitObserver;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCommitObservers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public removeDisabledApp(J)V
    .locals 7
    .param p1, "cid"    # J

    .prologue
    .line 372
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 373
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 374
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_1
    monitor-exit v3

    .line 380
    return-void

    .line 379
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeDisabledApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 384
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 385
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_1
    monitor-exit v3

    .line 391
    return-void

    .line 390
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeFromAppsList(J)V
    .locals 7
    .param p1, "cid"    # J

    .prologue
    .line 435
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 437
    .local v0, "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 442
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 444
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 445
    .restart local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getCid()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v4, p1

    if-nez v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 450
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 451
    return-void

    .line 442
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 450
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public removeSnakeNativeApp()V
    .locals 6

    .prologue
    .line 601
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    monitor-enter v4

    .line 602
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 603
    .local v2, "nativeApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.native.watchworm.app"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    const-string v3, "Snake app already in the list"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 605
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNativeAppMap:Ljava/util/Hashtable;

    const-string v5, "com.native.watchworm.app"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .end local v2    # "nativeApp":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 611
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 612
    .local v0, "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.native.watchworm.app"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 613
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 614
    const-string v3, "Snake removed from "

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 618
    .end local v0    # "app":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 620
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 621
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 622
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 624
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->isCostumSort()Z

    move-result v3

    if-nez v3, :cond_4

    .line 625
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V

    .line 628
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateLists()V

    .line 629
    return-void

    .line 609
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 618
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 623
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public saveAppOrder()V
    .locals 6

    .prologue
    .line 243
    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCustomSort:Z

    if-eqz v3, :cond_0

    .line 244
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 250
    .local v2, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    .end local v2    # "packageNames":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 253
    .restart local v1    # "i":I
    .restart local v2    # "packageNames":[Ljava/lang/String;
    :cond_1
    const-string v3, ";"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "appOrder":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- save order, appOrder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 255
    const-string v3, "sort_order_preference_key"

    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public saveAppOrder(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "storedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, ";"

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "appOrder":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- save order, appOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 261
    const-string v1, "sort_order_preference_key"

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public saveDisabledAppsPackageNames()V
    .locals 4

    .prologue
    .line 290
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 291
    .local v2, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const-string v3, ";"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "disabledApps":Ljava/lang/String;
    const-string v3, "disabled_apps_preference_key"

    invoke-virtual {p0, v3, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public setCustomSort(Z)V
    .locals 0
    .param p1, "customSort"    # Z

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mCustomSort:Z

    .line 507
    return-void
.end method

.method public setListener(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;)V
    .locals 0
    .param p1, "uiChangeListener"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    .line 668
    return-void
.end method

.method public sortAZ()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    return-void
.end method

.method public updateAppsLists()V
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 456
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 458
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mDisabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNoneHomeScreenExtensionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mNoneHomeScreenExtensionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mUiChangeListener:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/UiChangeListener;->updateAdapter()V

    .line 470
    :cond_2
    return-void

    .line 465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateDisabledAppsLists(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "PackageNamesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->removeDisabledApp(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->saveDisabledAppsPackageNames()V

    .line 240
    return-void
.end method

.method public updateEnabledAppsList(Z)V
    .locals 5
    .param p1, "changedSortType"    # Z

    .prologue
    .line 473
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 474
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 476
    if-eqz p1, :cond_1

    .line 477
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledSavedAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 486
    :cond_0
    monitor-exit v3

    .line 487
    return-void

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .line 481
    .local v0, "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getIsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mEnabledAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    .end local v0    # "a":Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateExtensionsList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->mExtensions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 545
    .local v0, "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 546
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 547
    .local v1, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setCid(I)V

    goto :goto_0

    .line 553
    .end local v0    # "e":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v1    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public updateLists()V
    .locals 0

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->saveAppOrder()V

    .line 539
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->saveDisabledAppsPackageNames()V

    .line 540
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->updateAppsLists()V

    .line 541
    return-void
.end method

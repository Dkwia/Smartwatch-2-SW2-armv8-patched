.class public Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;
.super Ljava/lang/Object;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;
    }
.end annotation


# static fields
.field static final COSTANZA_COLUMN_SIZE:I = 0x2b

.field static final COSTANZA_ROW_SIZE:I = 0x22


# instance fields
.field private mCachedClockWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedNonClockWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mResDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

.field private final mWidgetChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mResDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetChangeListeners:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized findWidget(Ljava/util/List;Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 246
    .local v1, "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p3, :cond_0

    .line 251
    .end local v1    # "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 245
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;
    .locals 2
    .param p1, "widgetCidKey"    # Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    .prologue
    .line 230
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method private isWatchFaceWidgetSupportedBySmartConnect()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 304
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Version;->URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 309
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 312
    :try_start_1
    const-string v1, "version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 314
    .local v8, "version":I
    const/4 v1, 0x3

    if-lt v8, v1, :cond_3

    const/4 v1, 0x1

    .line 323
    :goto_1
    if-eqz v6, :cond_1

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v9, v1

    .line 327
    .end local v8    # "version":I
    :cond_2
    :goto_2
    return v9

    .restart local v8    # "version":I
    :cond_3
    move v1, v9

    .line 314
    goto :goto_1

    .line 315
    .end local v8    # "version":I
    :catch_0
    move-exception v7

    .line 316
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 317
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "Failed querying SmartConnect version."

    invoke-static {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 323
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_4
    throw v1

    :cond_5
    if-eqz v6, :cond_2

    .line 324
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private declared-synchronized loadAllWidgets()V
    .locals 5

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->loadNativeClockWidgets(Ljava/util/ArrayList;)V

    .line 150
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->loadNativeNonClockWidgets(Ljava/util/ArrayList;)V

    .line 152
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->loadWidgetsFromSmartConnect(Ljava/util/ArrayList;)V

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedNonClockWidgets:Ljava/util/ArrayList;

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedClockWidgets:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .line 158
    .local v1, "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getCategory()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 159
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedClockWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v2    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 161
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .restart local v2    # "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedNonClockWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    .end local v1    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private loadNativeClockWidgets(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 56
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a5

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_HERO_5x4_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DIGITAL1_5x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DIGITAL2_5x3_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DIGITAL3_2x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DIGITAL4_5x2_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_ANALOGUE1_3x3_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_ANALOGUE2_3x3_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_ANALOGUE3_3x3_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private loadNativeNonClockWidgets(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    const v5, 0x7f07009d

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 167
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DATE_WEEKDAY_3x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DATE_DAY_MONTH_4x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DATE_WEEKDAY_DAY_MONTH_4x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_CLOCK_DATE_3x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_SYSTEMINFO:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a4

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_SYSTEMINFO_BATTERY_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_SYSTEMINFO:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_SYSTEMINFO_BLUETOOTH_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_NOTIFICATIONS:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_NOTIFICATIONS_1x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_NOTIFICATIONS:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_NOTIFICATIONS_5x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_ALARMS:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f07009b

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_ALARMS_NEXT_ALARM_3x1_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_SYSTEMINFO:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidgetBuilder(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->columns(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->rows(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->WIDGET_SYSTEMINFO_DO_NOT_DISTURB_1X2_TAG:Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->listPreview(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method private loadWidgetsFromSmartConnect(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;>;"
    const/4 v2, 0x0

    .line 263
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->isWatchFaceWidgetSupportedBySmartConnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "Skipped loading widgets from too old SmartConnect."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v5, "name ASC"

    .line 272
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$WidgetRegistration;->URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 276
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    const-string v1, "Found %d widgets in SmartConnect."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_2
    if-eqz v6, :cond_5

    .line 279
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    .line 281
    :try_start_1
    invoke-direct {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->readSmartConnectWidget(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v8

    .line 282
    .local v8, "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-eqz v8, :cond_3

    .line 283
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    const-string v1, "Loaded %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 288
    .end local v8    # "widget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    :catch_0
    move-exception v7

    .line 289
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 290
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    const-string v1, "Failed querying for new events."

    invoke-static {v1, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 296
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 296
    :cond_4
    throw v1

    :cond_5
    if-eqz v6, :cond_0

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private declared-synchronized readSmartConnectWidget(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    const-string v10, "width"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 338
    .local v9, "width":I
    const-string v10, "height"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 339
    .local v4, "height":I
    const-string v10, "key"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "key":Ljava/lang/String;
    const-string v10, "name"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "name":Ljava/lang/String;
    const-string v10, "apiRegistrationId"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 343
    .local v0, "apiRegistrationId":I
    const-string v10, "previewImageUri"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "previewImageUri":Ljava/lang/String;
    const-string v10, "category"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 346
    .local v2, "categoryIndex":I
    const/4 v1, 0x0

    .line 347
    .local v1, "category":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_0

    .line 348
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 351
    :cond_0
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mResDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    const/4 v11, 0x1

    new-array v11, v11, [[B

    const/4 v12, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update([[B)V

    .line 353
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mResDigester:Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->digest()[B

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->hashCode([B)I

    move-result v8

    .line 355
    .local v8, "tag":I
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v10, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionByApiRegistrationId(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v3

    .line 356
    .local v3, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_1

    .line 357
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    iget-object v11, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->name(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->key(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->packageName(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->width(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->height(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->tag(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->extensionCid(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->preview(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->category(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget$Builder;->build()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 365
    :goto_0
    monitor-exit p0

    return-object v10

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 337
    .end local v0    # "apiRegistrationId":I
    .end local v1    # "category":I
    .end local v2    # "categoryIndex":I
    .end local v3    # "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v4    # "height":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "previewImageUri":Ljava/lang/String;
    .end local v8    # "tag":I
    .end local v9    # "width":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method


# virtual methods
.method public addWidgetChangeListener(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;

    .prologue
    .line 375
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_0
    return-void
.end method

.method public disableContentObservers()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;

    .line 403
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "Unregistered widget content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 406
    :cond_0
    return-void
.end method

.method public enableContentObservers()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;

    .line 389
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$WidgetRegistration;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetObserver:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "Registered widget content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 397
    :cond_0
    return-void
.end method

.method public declared-synchronized getClockWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedClockWidgets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->loadAllWidgets()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedClockWidgets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNonClockWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedNonClockWidgets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->loadAllWidgets()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedNonClockWidgets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 2
    .param p1, "widget"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidget(Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getWidget(Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # I

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getClockWidgets()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->findWidget(Ljava/util/List;Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v0

    .line 237
    .local v0, "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-nez v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getNonClockWidgets()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->findWidget(Ljava/util/List;Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 241
    .end local v0    # "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeWidgetChangeListener(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;

    .prologue
    .line 381
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mWidgetChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 370
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedClockWidgets:Ljava/util/ArrayList;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->mCachedNonClockWidgets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

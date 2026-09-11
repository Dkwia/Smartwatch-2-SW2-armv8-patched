.class public Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$SmartConnectContentObserver;,
        Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;,
        Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;,
        Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;,
        Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    }
.end annotation


# static fields
.field private static final COUNT_LIMIT:I = 0x1e

.field private static final LAST_SYNCED_EVENT_ID_KEY:Ljava/lang/String; = "last_synced_event_id_key"

.field private static final MESSAGE_ALIAS:Ljava/lang/String; = "MessageAlias"

.field private static final SQLITE_MAX_VARIABLE_NUMBER:I = 0x3e7

.field private static final STARTUP_COUNT_LIMIT:I = 0x5


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEventDeleteContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

.field private mEventInsertContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

.field private final mEventLastPublishedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEventUpdateContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

.field private final mEventsChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtensionIdHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSyncedEventId:Ljava/lang/Long;

.field private final mStartupSyncRunner:Ljava/lang/Runnable;

.field private mSyncDbEventsHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventsChangeListeners:Ljava/util/List;

    .line 74
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mExtensionIdHash:Ljava/util/Hashtable;

    .line 79
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventLastPublishedComparator:Ljava/util/Comparator;

    .line 616
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mStartupSyncRunner:Ljava/lang/Runnable;

    .line 93
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 98
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "last_synced_event_id_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mLastSyncedEventId:Ljava/lang/Long;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->onEventInserted(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->onEventUpdated()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->onEventDeleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->doClear()V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method private compareAndUpdateEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)Z
    .locals 6
    .param p1, "syncDbEvent"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p2, "smartConnectEvent"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "updated":Z
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setTitle(Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x1

    .line 573
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setMessage(Ljava/lang/String;)V

    .line 575
    const/4 v0, 0x1

    .line 578
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 579
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setProfileImageUri(Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x1

    .line 583
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 584
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setEventImageUri(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    .line 588
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 589
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setDisplayName(Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x1

    .line 593
    :cond_4
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 594
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setContactsReference(Ljava/lang/String;)V

    .line 595
    const/4 v0, 0x1

    .line 598
    :cond_5
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 599
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setPublishedTime(J)V

    .line 600
    const/4 v0, 0x1

    .line 603
    :cond_6
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v2

    if-eq v1, v2, :cond_7

    .line 604
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setRead(Z)V

    .line 605
    const/4 v0, 0x1

    .line 608
    :cond_7
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v2

    if-eq v1, v2, :cond_8

    .line 609
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setPersonal(Z)V

    .line 610
    const/4 v0, 0x1

    .line 613
    :cond_8
    return v0
.end method

.method private doClear()V
    .locals 2

    .prologue
    .line 712
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->setLastSyncedEventId(J)V

    .line 713
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 716
    :cond_0
    return-void
.end method

.method private getAllEventColumnsProjection()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 446
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sourceId"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "substr(%s, 0, %d) as %s"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "message"

    aput-object v4, v3, v5

    const/16 v4, 0x2328

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "MessageAlias"

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const-string v2, "publishedTime"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "readStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imageUri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "profile_image_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contacts_reference"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "personal"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getExtensionIdFromSource(J)J
    .locals 17
    .param p1, "sourceId"    # J

    .prologue
    .line 492
    const-wide/16 v12, -0x1

    .line 495
    .local v12, "extensionId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mExtensionIdHash:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 496
    .local v11, "hashExtensionId":Ljava/lang/Long;
    if-eqz v11, :cond_1

    .line 497
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 554
    :cond_0
    :goto_0
    return-wide v12

    .line 500
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionFromSource(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v10

    .line 501
    .local v10, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v10, :cond_3

    .line 502
    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 550
    :cond_2
    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_0

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mExtensionIdHash:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 506
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Source;->URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "packageName"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 510
    .local v8, "c":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 512
    .local v14, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 514
    :try_start_1
    const-string v2, "packageName"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 522
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 523
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Extension;->URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "packageName=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 533
    if-eqz v8, :cond_6

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-eqz v2, :cond_6

    .line 535
    :try_start_3
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    .line 543
    :cond_6
    :goto_3
    if-eqz v8, :cond_2

    .line 544
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 516
    :catch_0
    move-exception v9

    .line 517
    .local v9, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 518
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Failed querying for package name."

    invoke-static {v2, v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 522
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    .line 523
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 522
    :cond_7
    throw v2

    .line 537
    :catch_1
    move-exception v9

    .line 538
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 539
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Failed querying for extension ID."

    invoke-static {v2, v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 543
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_8

    .line 544
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_8
    throw v2
.end method

.method private loadEventsFromSmartConnect(Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->getAllEventColumnsProjection()[Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "projection":[Ljava/lang/String;
    const-string v5, "publishedTime DESC"

    .line 318
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Event;->URI:Landroid/net/Uri;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 322
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    :try_start_1
    invoke-direct {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->readSmartConnectEvent(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-result-object v8

    .line 325
    .local v8, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    .end local v8    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :catch_0
    move-exception v7

    .line 327
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 328
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed querying for new events."

    invoke-static {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 333
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_1
    throw v0

    :cond_2
    if-eqz v6, :cond_3

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 337
    :cond_3
    return-void
.end method

.method private onEventDeleted()V
    .locals 25

    .prologue
    .line 375
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v22, "smartConnectEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "sourceId"

    aput-object v3, v4, v2

    .line 381
    .local v4, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sonyericsson/extras/liveware/aef/notification/Notification$Event;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 383
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 384
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    :try_start_1
    new-instance v12, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    const-wide/16 v2, -0x1

    invoke-direct {v12, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;-><init>(J)V

    .line 387
    .local v12, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setSmartConnectEventId(J)V

    .line 388
    const-string v2, "sourceId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setSourceId(J)V

    .line 389
    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 390
    .end local v12    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :catch_0
    move-exception v10

    .line 391
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 392
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Failed querying for new events."

    invoke-static {v2, v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 397
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_1

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_1
    throw v2

    :cond_2
    if-eqz v8, :cond_3

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v9, "deletedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    new-instance v19, Ljava/util/Hashtable;

    invoke-direct/range {v19 .. v19}, Ljava/util/Hashtable;-><init>()V

    .line 406
    .local v19, "keptSyncDbEventsHash":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 407
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 408
    .local v24, "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 409
    .local v18, "keptEvents":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 410
    .local v23, "syncDbEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    const/4 v14, 0x0

    .line 412
    .local v14, "found":Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 413
    .local v21, "smartConnectEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v2

    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    .line 415
    const/4 v14, 0x1

    .line 416
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v21    # "smartConnectEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :cond_7
    if-nez v14, :cond_5

    .line 422
    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 426
    .end local v14    # "found":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v23    # "syncDbEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 427
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 428
    .local v13, "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 432
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;>;"
    .end local v13    # "eventsList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v18    # "keptEvents":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v24    # "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    .line 434
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events to delete in sync DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 437
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventsChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;

    .line 438
    .local v20, "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;->onEventsDeleted(Ljava/util/List;)V

    goto :goto_3

    .line 440
    .end local v20    # "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    :cond_b
    return-void
.end method

.method private onEventInserted(Z)V
    .locals 32
    .param p1, "startup"    # Z

    .prologue
    .line 179
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v25, "insertedEvents":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    const/16 v28, 0x0

    .line 181
    .local v28, "selection":Ljava/lang/String;
    const/16 v29, 0x0

    .line 186
    .local v29, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 188
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v27, "sb":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v10, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "event_id"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 195
    .local v11, "c2":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 196
    const-string v4, "_id NOT IN ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/16 v5, 0x3e7

    if-ge v4, v5, :cond_0

    .line 200
    const-string v4, "event_id"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 202
    .local v21, "id":I
    const-string v4, "?,"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    .end local v21    # "id":I
    :cond_0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v4, ")"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 210
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "selectionArgs":[Ljava/lang/String;
    check-cast v29, [Ljava/lang/String;

    .line 211
    .restart local v29    # "selectionArgs":[Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 221
    .end local v10    # "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "c2":Landroid/database/Cursor;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->loadEventsFromSmartConnect(Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 223
    const-wide/16 v18, -0x1

    .line 224
    .local v18, "highestDbId":J
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 225
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 228
    .local v13, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionId()J

    move-result-wide v16

    .line 229
    .local v16, "extensionId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 230
    .local v14, "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    if-eqz v14, :cond_4

    .line 232
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_3
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v4

    cmp-long v4, v4, v18

    if-lez v4, :cond_2

    .line 242
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v18

    goto :goto_2

    .line 215
    .end local v13    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "extensionId":J
    .end local v18    # "highestDbId":J
    :cond_3
    const-string v28, "_id > ?"

    .line 216
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v29, v0

    .end local v29    # "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mLastSyncedEventId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v29, v4

    .restart local v29    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 235
    .restart local v13    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .restart local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "extensionId":J
    .restart local v18    # "highestDbId":J
    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .restart local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 250
    .end local v13    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v14    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v16    # "extensionId":J
    :cond_5
    if-eqz p1, :cond_9

    const/16 v24, 0x5

    .line 251
    .local v24, "insertEventLimit":I
    :goto_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Syncing up to %d events for each extension"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/List;

    .line 254
    .local v31, "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventLastPublishedComparator:Ljava/util/Comparator;

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v30

    .line 258
    .local v30, "size":I
    const/16 v4, 0x1e

    move/from16 v0, v30

    if-le v0, v4, :cond_b

    .line 259
    new-instance v12, Ljava/util/ArrayList;

    const/16 v4, 0x1e

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-interface {v0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 260
    .local v12, "deletedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Deleting %d events because of newer found"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventsChangeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;

    .line 264
    .local v26, "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;->onEventsDeleted(Ljava/util/List;)V

    goto :goto_6

    .line 250
    .end local v12    # "deletedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v24    # "insertEventLimit":I
    .end local v26    # "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    .end local v30    # "size":I
    .end local v31    # "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_9
    const/16 v24, 0x1e

    goto/16 :goto_4

    .line 268
    .end local v15    # "i$":Ljava/util/Iterator;
    .restart local v12    # "deletedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v24    # "insertEventLimit":I
    .restart local v30    # "size":I
    .restart local v31    # "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    :cond_a
    const/16 v4, 0x1e

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-interface {v0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 271
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 275
    .end local v12    # "deletedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v30

    .line 280
    move/from16 v0, v30

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 281
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v24

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v22, "ignoredEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "Ignoring %d events because of insertEventLimit (%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_c
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v23, "ignoredNotSentEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 288
    .restart local v13    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    .line 289
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 292
    .end local v13    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :cond_e
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 295
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 300
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "ignoredEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v23    # "ignoredNotSentEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v24    # "insertEventLimit":I
    .end local v30    # "size":I
    .end local v31    # "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    :cond_f
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " events to insert in sync DB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 303
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventsChangeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;

    .line 304
    .restart local v26    # "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-interface {v0, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;->onEventsInserted(Ljava/util/List;Z)V

    goto :goto_8

    .line 308
    .end local v26    # "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mLastSyncedEventId:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-lez v4, :cond_12

    .line 309
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->setLastSyncedEventId(J)V

    .line 311
    :cond_12
    return-void
.end method

.method private onEventUpdated()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 341
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v6, "smartConnectEvents":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-direct {p0, v6, v10, v10}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->loadEventsFromSmartConnect(Ljava/util/HashSet;Ljava/lang/String;[Ljava/lang/String;)V

    .line 347
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 348
    .local v9, "updatedEvents":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 349
    .local v5, "smartConnectEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionId()J

    move-result-wide v0

    .line 350
    .local v0, "extensionId":J
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 351
    .local v8, "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    if-eqz v8, :cond_0

    .line 353
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 354
    .local v7, "syncDbEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 355
    invoke-direct {p0, v7, v5}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->compareAndUpdateEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 356
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    .end local v0    # "extensionId":J
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "smartConnectEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v7    # "syncDbEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v8    # "syncDbEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " events to update in sync DB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 367
    :cond_3
    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventsChangeListeners:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;

    .line 368
    .local v4, "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v10}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;->onEventsUpdated(Ljava/util/List;)V

    goto :goto_1

    .line 370
    .end local v4    # "listener":Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;
    :cond_4
    return-void
.end method

.method private readSmartConnectEvent(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .locals 24
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 471
    const-wide/16 v4, -0x1

    .line 472
    .local v4, "id":J
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 473
    .local v10, "smartConnectEventId":J
    const-string v2, "sourceId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 474
    .local v8, "sourceId":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->getExtensionIdFromSource(J)J

    move-result-wide v6

    .line 475
    .local v6, "extensionId":J
    const/4 v12, -0x1

    .line 476
    .local v12, "cid":I
    const/4 v13, -0x1

    .line 477
    .local v13, "extensionCid":I
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 478
    .local v14, "title":Ljava/lang/String;
    const-string v2, "MessageAlias"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 479
    .local v15, "message":Ljava/lang/String;
    const-string v2, "publishedTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 480
    .local v16, "publishedTime":J
    const-string v2, "readStatus"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 481
    .local v18, "readStatus":I
    const-string v2, "imageUri"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 482
    .local v19, "imageUriString":Ljava/lang/String;
    const-string v2, "profile_image_uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 483
    .local v20, "profileImageUriString":Ljava/lang/String;
    const-string v2, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 484
    .local v21, "displayName":Ljava/lang/String;
    const-string v2, "contacts_reference"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 485
    .local v22, "contactsReference":Ljava/lang/String;
    const-string v2, "personal"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 486
    .local v23, "personal":I
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    invoke-direct/range {v3 .. v23}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;-><init>(JJJJIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method

.method private declared-synchronized setLastSyncedEventId(J)V
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mLastSyncedEventId:Ljava/lang/Long;

    .line 685
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 686
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 687
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_synced_event_id_key"

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mLastSyncedEventId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    .line 684
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addEventsChangeListener(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventsChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method

.method public disableEventObservers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventInsertContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventInsertContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventInsertContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

    .line 149
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unregistered Event insert content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventUpdateContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventUpdateContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventUpdateContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

    .line 155
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unregistered Event update content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventDeleteContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventDeleteContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventDeleteContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

    .line 161
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Unregistered Event delete content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 163
    :cond_2
    return-void
.end method

.method public enableEventOberservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 123
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventInsertContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventInsertContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

    .line 125
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->ADDED_EVENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventInsertContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventInsertContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Registered Event insert content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventUpdateContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventUpdateContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

    .line 131
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->UPDATED_EVENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventUpdateContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventUpdateContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Registered Event update content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventDeleteContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventDeleteContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

    .line 137
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/service/HostAppService$NotificationInternal;->DELETED_EVENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mEventDeleteContentObserver:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventDeleteContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Registered Event delete content observer"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 140
    :cond_2
    return-void
.end method

.method public getEventFromCid(I)Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .locals 6
    .param p1, "eventCid"    # I

    .prologue
    .line 726
    new-instance v2, Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-direct {v2, v5}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 728
    .local v2, "hashtableCopy":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;>;"
    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 729
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 730
    .local v0, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 735
    .end local v0    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventsFromExtensionId(J)Ljava/util/List;
    .locals 3
    .param p1, "extensionId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 747
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    if-nez v0, :cond_1

    .line 749
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventManager: No event list found for extensionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Has hostapp finished setting up?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 753
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public reset(Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;)V
    .locals 0
    .param p1, "syncManager"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->clear()V

    .line 693
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->updateEventsHashtable(Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;)V

    .line 694
    return-void
.end method

.method public setEventRead(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Z)V
    .locals 2
    .param p1, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p2, "isRead"    # Z

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 774
    return-void
.end method

.method public startupSync()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mStartupSyncRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public updateEventsHashtable(Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;)V
    .locals 1
    .param p1, "syncManager"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getAllEvents()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;->mSyncDbEventsHash:Ljava/util/Hashtable;

    .line 110
    return-void
.end method

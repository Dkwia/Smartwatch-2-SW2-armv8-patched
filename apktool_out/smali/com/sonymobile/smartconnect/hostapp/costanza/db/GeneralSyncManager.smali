.class public Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;
.source "GeneralSyncManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$ExtensionsChangeListener;
.implements Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager$NotificationSourcesChangeListener;
.implements Lcom/sonymobile/smartconnect/hostapp/notification/EventManager$EventsChangeListener;


# static fields
.field private static final ANDROID_TO_COSTANZA_BITMAP_TEXT_RTL_COMPENSATION:I = 0x2

.field private static final ANDROID_TO_COSTANZA_BITMAP_TEXT_WIDTH_COMPENSATION:I = 0x3

.field private static final ANDROID_TO_COSTANZA_TEXT_WIDTH_COMPENSATION:I = 0x5

.field private static final BITMAP_RENDERING:I = 0x1

.field private static final CAPABILITY_ERROR:I = -0x1

.field private static final CHARS_PER_LINE:I = 0xc

.field private static final CHARS_PER_LINE_DISPLAYNAME:I = 0x9

.field private static final CHARS_PER_LINE_DISPLAYNAME_WHITE:I = 0x14

.field private static final CHARS_PER_LINE_TITLE:I = 0x10

.field private static final EXTENSION_AND_EVENT_RES_PROVIDER_NAME_PREFIX:Ljava/lang/String; = "ext_events_"

.field private static final IMAGE_PADDING:I = 0x3

.field private static final NOTIFICATION_MESSAGE_MAX_LENGTH:I = 0xa0

.field public static final NOTIFICATION_OVERVIEW_MAX_CHARS:I = 0x2328

.field private static final PIXELS_PER_LINE_POPUP:I = 0xc8

.field private static final RICH_NOTIFICATION_BITMAP_LENGTH:I = 0xc4


# instance fields
.field private bitmapRendering:Z

.field private displayNameRTL:Z

.field private final mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

.field private final mExtensionIconSize:I

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationContactIconSize:I

.field private final mNotificationMessageTextSize:I

.field private final mNotificationMessageTextSizeLarge:I

.field private final mNotificationMessageTextSizeNormal:I

.field private final mNotificationOverviewHeight:I

.field private final mNotificationRichNotificationIconSize:I

.field private final mNotificationStatusBarIconSize:I

.field private final mNotificationTextBackgroundColor:I

.field private final mNotificationWidgetIconSize:I

.field private final mOfflineMenuCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnlineMenuCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

.field private final mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

.field private final mSmileySize:I

.field private titleRTL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Landroid/os/Handler;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "communicationManager"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p3, "cidProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .param p4, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .param p5, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "resProviderCache"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
    .param p8, "resourceDeleter"    # Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOnlineMenuCache:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOfflineMenuCache:Ljava/util/HashMap;

    .line 132
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    .line 133
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->displayNameRTL:Z

    .line 134
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->titleRTL:Z

    .line 145
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    .line 149
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    .line 152
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationRichNotificationIconSize:I

    .line 154
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationContactIconSize:I

    .line 156
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationStatusBarIconSize:I

    .line 158
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationWidgetIconSize:I

    .line 160
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationOverviewHeight:I

    .line 162
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationMessageTextSize:I

    .line 164
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationMessageTextSizeNormal:I

    .line 166
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationMessageTextSizeLarge:I

    .line 168
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    .line 170
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationTextBackgroundColor:I

    .line 173
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 174
    iput-object p8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    .line 175
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 176
    return-void
.end method

.method private addExtensionRootReference(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;I)V
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "extensionCid"    # I

    .prologue
    .line 1872
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->cidRefTracker()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCidProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->HOST_APP_EXTENSION_ROOT:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-interface {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getReserved(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(II)V

    .line 1874
    return-void
.end method

.method private addNewLineBeforeHyperlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 519
    const/4 v2, 0x0

    .line 520
    .local v2, "startPos":I
    const-string v0, "http"

    .line 521
    .local v0, "hyperlink":Ljava/lang/String;
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 522
    .local v1, "hyperlinkStart":I
    move v2, v1

    .line 524
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 525
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 532
    :cond_0
    return-object p1
.end method

.method private addResourceLayoutData(Ljava/util/List;II)V
    .locals 1
    .param p2, "key"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, "dataMap":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;>;"
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;-><init>()V

    .line 957
    .local v0, "data":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;
    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;->setKey(I)V

    .line 958
    invoke-virtual {v0, p3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;->setValue(I)V

    .line 959
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    return-void
.end method

.method private addSubCidsToList([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "subCids"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    .local p2, "referencedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 1534
    move-object v0, p1

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1535
    .local v3, "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->getResourceCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1538
    .end local v0    # "arr$":[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    :cond_0
    return-void
.end method

.method private clearSourceFromCaches(Ljava/lang/Long;)V
    .locals 2
    .param p1, "sourceId"    # Ljava/lang/Long;

    .prologue
    .line 2077
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing source from cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOnlineMenuCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOfflineMenuCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    return-void
.end method

.method private createEventMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;
    .locals 33
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "syncEvent"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p3, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p4, "eventCid"    # I
    .param p5, "messageId"    # I

    .prologue
    .line 1277
    if-nez p3, :cond_1

    .line 1278
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "createEventMessage: event is null"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1279
    :cond_0
    const/16 v16, 0x0

    .line 1459
    :goto_0
    return-object v16

    .line 1283
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getSource(J)Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    move-result-object v28

    .line 1284
    .local v28, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    if-nez v28, :cond_3

    .line 1285
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "No source found for source ID %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 1288
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1289
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Source ID: %d disabled, ignoring event"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1290
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 1294
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v18

    .line 1295
    .local v18, "extensionManager":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionFromSource(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v17

    .line 1296
    .local v17, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v17, :cond_7

    .line 1297
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extension not found for source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1298
    :cond_6
    const/16 v16, 0x0

    goto :goto_0

    .line 1300
    :cond_7
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extension from sourceid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  was : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1305
    :cond_8
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Sending event, cid: 0x%08x, messageId: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    .local v14, "dataMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBiggestExtensionIconUri()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationRichNotificationIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationRichNotificationIconSize:I

    sget-object v9, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v26

    .line 1315
    .local v26, "richIconCid":I
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationStatusBarIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationStatusBarIconSize:I

    sget-object v9, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v29

    .line 1317
    .local v29, "statusBarIconCid":I
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationWidgetIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationWidgetIconSize:I

    sget-object v9, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v31

    .line 1319
    .local v31, "widgetColorIconCid":I
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationWidgetIconSize:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationWidgetIconSize:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertThreeBitImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;II)I

    move-result v32

    .line 1322
    .local v32, "widgetGrayscaleIconCid":I
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1323
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1324
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1325
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1328
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v20

    .line 1330
    .local v20, "message":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isBitmapRendering(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isBitmapRendering(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayNameWithContactFallback(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isBitmapRendering(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_a
    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    .line 1334
    if-eqz v20, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa0

    if-le v4, v5, :cond_b

    .line 1335
    const/4 v4, 0x0

    const/16 v5, 0xa0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1340
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-eqz v4, :cond_13

    .line 1341
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1343
    .local v6, "title":Ljava/lang/String;
    if-nez v6, :cond_12

    .line 1344
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1345
    const/16 v4, 0x9

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1346
    const/16 v4, 0xa

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1367
    .end local v6    # "title":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-eqz v4, :cond_c

    .line 1368
    const/high16 v4, -0x1000000

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertMessageImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZ)I

    move-result v21

    .line 1369
    .local v21, "messageCid":I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1370
    const/high16 v4, -0x1000000

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertMessageImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZ)I

    move-result v21

    .line 1371
    const/16 v4, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1372
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertMessageImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZ)I

    move-result v21

    .line 1373
    const/16 v4, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1375
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    .line 1376
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isRTL(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->titleRTL:Z

    .line 1378
    .end local v21    # "messageCid":I
    :cond_c
    const/16 v10, 0xc4

    const/16 v11, 0x64

    const/4 v12, -0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, v20

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertRichNotification(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;III)I

    move-result v27

    .line 1379
    .local v27, "richNotificationCid":I
    const/16 v4, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1383
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-eqz v4, :cond_14

    .line 1385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayNameWithContactFallback(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 1386
    .local v9, "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isRTL(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->displayNameRTL:Z

    .line 1388
    const/high16 v10, -0x1000000

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertDisplayNameImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I

    move-result v15

    .line 1389
    .local v15, "displayNameCid":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v15}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1390
    const/high16 v10, -0x1000000

    const/4 v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertDisplayNameImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I

    move-result v15

    .line 1391
    const/16 v4, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v15}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1393
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertDisplayNameDrawerImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZ)I

    move-result v15

    .line 1394
    const/16 v4, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v15}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1396
    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertDisplayNameImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I

    move-result v15

    .line 1397
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v15}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1404
    .end local v9    # "displayName":Ljava/lang/String;
    :goto_3
    const/16 v25, 0x0

    .line 1405
    .local v25, "renderingParameters":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-eqz v4, :cond_e

    .line 1406
    or-int/lit8 v25, v25, 0x1

    .line 1407
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->displayNameRTL:Z

    if-eqz v4, :cond_d

    .line 1408
    or-int/lit8 v25, v25, 0x2

    .line 1410
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->titleRTL:Z

    if-eqz v4, :cond_e

    .line 1411
    or-int/lit8 v25, v25, 0x4

    .line 1415
    :cond_e
    const/16 v4, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertProfileImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V

    .line 1422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertEventImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V

    .line 1425
    new-instance v16, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;

    move-object/from16 v0, v16

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;-><init>(II)V

    .line 1426
    .local v16, "eventMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setLocalization(I)V

    .line 1427
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setRead(Z)V

    .line 1428
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setPersonal(Z)V

    .line 1429
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setTimeStamp(J)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionCid()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setNotificationExtensionCid(I)V

    .line 1431
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setFields([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;)V

    .line 1433
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getOnlineSourceMenu(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-result-object v23

    .line 1434
    .local v23, "onlineMenu":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    if-eqz v23, :cond_f

    .line 1435
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->getCid()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setOnlineMenuCid(I)V

    .line 1436
    invoke-virtual/range {v23 .. v23}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->getMenuSubCids()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setOnlineMenuScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V

    .line 1438
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getOfflineSourceMenu(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-result-object v22

    .line 1439
    .local v22, "offlineMenu":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    if-eqz v22, :cond_10

    .line 1440
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->getCid()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setOfflineMenuCid(I)V

    .line 1441
    invoke-virtual/range {v22 .. v22}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->getMenuSubCids()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setOfflineMenuScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V

    .line 1445
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertOverviewEventScreen(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->setSubScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V

    .line 1447
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .local v24, "referencedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->getNotificationExtensionCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->getOfflineMenuCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->getOnlineMenuCid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

    .line 1452
    .local v13, "data":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;
    invoke-virtual {v13}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1330
    .end local v13    # "data":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;
    .end local v15    # "displayNameCid":I
    .end local v16    # "eventMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "offlineMenu":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .end local v23    # "onlineMenu":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .end local v24    # "referencedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "renderingParameters":I
    .end local v27    # "richNotificationCid":I
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1349
    .restart local v6    # "title":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isRTL(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->titleRTL:Z

    .line 1351
    const/high16 v7, -0x1000000

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTitleImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I

    move-result v30

    .line 1352
    .local v30, "titleCid":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1353
    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTitleImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I

    move-result v30

    .line 1354
    const/16 v4, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1355
    const/high16 v7, -0x1000000

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTitleImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I

    move-result v30

    .line 1356
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    goto/16 :goto_2

    .line 1360
    .end local v6    # "title":Ljava/lang/String;
    .end local v30    # "titleCid":I
    :cond_13
    invoke-virtual/range {p3 .. p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;)I

    move-result v30

    .line 1361
    .restart local v30    # "titleCid":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 1363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;)I

    move-result v21

    .line 1364
    .restart local v21    # "messageCid":I
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v14, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    goto/16 :goto_2

    .line 1400
    .end local v21    # "messageCid":I
    .end local v30    # "titleCid":I
    .restart local v27    # "richNotificationCid":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayNameWithContactFallback(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;)I

    move-result v15

    .line 1401
    .restart local v15    # "displayNameCid":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v15}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    goto/16 :goto_3

    .line 1454
    .restart local v16    # "eventMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v22    # "offlineMenu":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .restart local v23    # "onlineMenu":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .restart local v24    # "referencedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v25    # "renderingParameters":I
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->getOnlineMenuScreens()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addSubCidsToList([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;Ljava/util/ArrayList;)V

    .line 1455
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->getOfflineMenuScreens()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addSubCidsToList([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;Ljava/util/ArrayList;)V

    .line 1456
    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->getSubScreens()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addSubCidsToList([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;Ljava/util/ArrayList;)V

    .line 1457
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->cidRefTracker()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    move-result-object v4

    move/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(ILjava/util/List;)V

    goto/16 :goto_0
.end method

.method private createExtensionMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    .locals 17
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p3, "extensionCid"    # I
    .param p4, "messageId"    # I

    .prologue
    .line 1085
    if-nez p2, :cond_2

    .line 1086
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "createExtensionMessage: extension is null"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1087
    :cond_0
    const/4 v11, 0x0

    .line 1135
    :cond_1
    :goto_0
    return-object v11

    .line 1090
    :cond_2
    new-instance v11, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v11, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;-><init>(II)V

    .line 1091
    .local v11, "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1092
    .local v10, "extensionDisplayName":Ljava/lang/String;
    const-string v2, ".child"

    invoke-virtual {v10, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1093
    const/4 v2, 0x0

    const-string v3, ".child"

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1096
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;)I

    move-result v14

    .line 1097
    .local v14, "nameCid":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setNameCid(I)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v9, 0x1

    .line 1100
    .local v9, "desaturate":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v12

    .line 1102
    .local v12, "iconCid":I
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    if-eqz v9, :cond_7

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->DESATURATION:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    :goto_2
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v13

    .line 1104
    .local v13, "iconOfflineCid":I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_4

    const/4 v2, -0x1

    if-ne v13, v2, :cond_5

    .line 1105
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v12

    .line 1107
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionIconSize:I

    if-eqz v9, :cond_8

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->DESATURATION:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    :goto_3
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v13

    .line 1110
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setExtensionIconCid(I)V

    .line 1111
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->setExtensionIconOfflineCid(I)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v16

    .line 1115
    .local v16, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-virtual {v11, v14}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setNameCid(I)V

    .line 1116
    invoke-virtual {v11, v12}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setIconCid(I)V

    .line 1117
    invoke-virtual {v11, v13}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setIconOfflineCid(I)V

    .line 1119
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getExtensionPriority(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    move-result-object v15

    .line 1120
    .local v15, "priority":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    invoke-virtual {v11, v15}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setPriority(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;)V

    .line 1121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getCapabilities(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setCapabilities(I)V

    .line 1122
    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->getCapabilities()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 1123
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1098
    .end local v9    # "desaturate":Z
    .end local v12    # "iconCid":I
    .end local v13    # "iconOfflineCid":I
    .end local v15    # "priority":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    .end local v16    # "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1102
    .restart local v9    # "desaturate":Z
    .restart local v12    # "iconCid":I
    :cond_7
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    goto :goto_2

    .line 1107
    .restart local v13    # "iconOfflineCid":I
    :cond_8
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    goto :goto_3

    .line 1125
    .restart local v15    # "priority":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    .restart local v16    # "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getSupportedDrawingSpecs(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setSupportedDrawingSpecs(I)V

    .line 1127
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->setExtensionColor(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;Ljava/util/List;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setShowOnHomeScreen(Z)V

    .line 1129
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getRelativeCid()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setRelativeCid(I)V

    .line 1131
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Created message for extension: %s with %d sources, color: 0x%08x"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v11}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private deleteEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V
    .locals 9
    .param p1, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 963
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v1

    .line 965
    .local v1, "eventCid":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 966
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    const-string v3, "Skipped deleting event with missing CID, syncDB id: %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 974
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "cid=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 975
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionCid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->delete(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private deleteExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 9
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1841
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v2

    .line 1843
    .local v2, "extensionCid":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 1844
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1845
    const-string v4, "Skipped deleting extension with missing CID, %s"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1862
    :cond_0
    :goto_0
    return-void

    .line 1850
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1851
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1852
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "cid=?"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1853
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;-><init>(I)V

    .line 1857
    .local v0, "actionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    invoke-virtual {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setAction(I)V

    .line 1858
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setValue(I)V

    .line 1859
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v4, v8

    aput-object v0, v4, v7

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 1861
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mResourceDeleter:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;

    invoke-virtual {v4, v5, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->delete(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceDeleter;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private deleteNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V
    .locals 7
    .param p1, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    .line 2057
    if-nez p1, :cond_0

    .line 2074
    :goto_0
    return-void

    .line 2066
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v0

    .line 2068
    .local v0, "cid":I
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;->URI:Landroid/net/Uri;

    const-string v3, "cid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2073
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->clearSourceFromCaches(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private generateAndSendResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;)V
    .locals 4
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "menuControl"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    .prologue
    .line 2438
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2439
    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2440
    .local v2, "subScreens":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2441
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2, p1, v1, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;->generateResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2443
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2444
    return-void
.end method

.method private generateMenuItemsFromSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .locals 11
    .param p1, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    const/4 v10, 0x3

    .line 2447
    const/4 v0, 0x3

    .line 2448
    .local v0, "MAX_MENU_ITEMS":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 2450
    .local v5, "menuItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_2

    .line 2451
    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v3

    .line 2452
    .local v3, "itemText":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v2

    .line 2453
    .local v2, "iconUri":Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$Factory;->create(ILjava/lang/String;Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    move-result-object v4

    .line 2454
    .local v4, "menuItem":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    if-eqz v4, :cond_0

    .line 2455
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2457
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2458
    const-string v6, "Checked source action %d. text=%s, icon=%s."

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2450
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2462
    .end local v2    # "iconUri":Ljava/lang/String;
    .end local v3    # "itemText":Ljava/lang/String;
    .end local v4    # "menuItem":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    return-object v6
.end method

.method private getCapabilities(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)I
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 1812
    const/4 v0, 0x0

    .line 1814
    .local v0, "capabilities":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v1

    if-lez v1, :cond_1

    .line 1815
    or-int/lit8 v0, v0, 0x1

    .line 1826
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsActiveLowPowerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v1, v0

    .line 1830
    :goto_1
    return v1

    .line 1816
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v1

    if-lez v1, :cond_3

    .line 1818
    :cond_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1820
    :cond_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1821
    const-string v1, "Invalid extension registered, capabilities error"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1823
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getEvent(J)Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .locals 15
    .param p1, "smartConnectEventId"    # J

    .prologue
    .line 2129
    const/4 v8, 0x0

    .line 2131
    .local v8, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    const-string v3, "event_id=?"

    .line 2132
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2134
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2136
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2138
    invoke-direct {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->readEvent(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2160
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 2161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2165
    :cond_1
    return-object v8

    .line 2142
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mPendingOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2143
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 2144
    .local v13, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentProviderOperation;

    .line 2145
    .local v12, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v14

    .line 2147
    .local v14, "values":Landroid/content/ContentValues;
    if-eqz v14, :cond_4

    .line 2148
    const-string v0, "event_id"

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 2149
    .local v9, "eventId":Ljava/lang/Long;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_4

    .line 2151
    invoke-direct {p0, v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->readEvent(Landroid/content/ContentValues;)Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 2152
    goto :goto_0

    .line 2160
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    .end local v9    # "eventId":Ljava/lang/Long;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "operation":Landroid/content/ContentProviderOperation;
    .end local v13    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v14    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2160
    :cond_5
    throw v0
.end method

.method private getExtensionAndEventResProviderName(I)Ljava/lang/String;
    .locals 4
    .param p1, "extensionCid"    # I

    .prologue
    .line 984
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionByCid(I)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 985
    .local v0, "ext":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    const-string v1, ""

    .line 986
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 989
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ext_events_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getExtensionCidBySourceId(J)I
    .locals 9
    .param p1, "sourceId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 2287
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {v4, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getSource(J)Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    move-result-object v2

    .line 2288
    .local v2, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    if-nez v2, :cond_1

    .line 2289
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "No source found for source ID %d."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2306
    :cond_0
    :goto_0
    return v3

    .line 2293
    :cond_1
    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2294
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Source ID: %d disabled, ignoring event"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2299
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v1

    .line 2300
    .local v1, "extensionManager":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionFromSource(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 2301
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-nez v0, :cond_3

    .line 2302
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Extension not found for source: %s."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2306
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v3

    goto :goto_0
.end method

.method private getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 788
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v1

    return-object v1
.end method

.method private getExtensionPriority(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    .locals 3
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 1549
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.extras.liveware.extension.call"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1551
    .local v0, "isCallExtension":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1552
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_INCOMING_CALL:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 1554
    :goto_1
    return-object v1

    .line 1549
    .end local v0    # "isCallExtension":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1554
    .restart local v0    # "isCallExtension":Z
    :cond_1
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_NONE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    goto :goto_1
.end method

.method private getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .locals 2
    .param p1, "extensionCid"    # I

    .prologue
    .line 980
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mResProviderCache:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getExtensionAndEventResProviderName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->getSynchronized(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v0

    return-object v0
.end method

.method private getSourceMenu(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .locals 10
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    .param p3, "offline"    # Z

    .prologue
    .line 2409
    if-eqz p3, :cond_1

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOfflineMenuCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-object v2, v6

    .line 2412
    .local v2, "menuControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    :goto_0
    if-nez v2, :cond_0

    .line 2413
    invoke-direct {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->generateMenuItemsFromSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    move-result-object v4

    .line 2415
    .local v4, "menuItems":[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    array-length v6, v4

    if-lez v6, :cond_3

    .line 2416
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2417
    .local v1, "inflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;

    invoke-direct {v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;-><init>()V

    .line 2418
    .local v3, "menuFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v1, v4, p3}, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;->create(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Z)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    move-result-object v5

    .line 2419
    .local v5, "menuView":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;

    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Landroid/content/Context;)V

    .line 2420
    .local v0, "controlFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v6

    invoke-virtual {v0, v5, p3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;->createMenuControl(Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;ZI)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-result-object v2

    .line 2421
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->generateAndSendResources(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;)V

    .line 2423
    if-eqz p3, :cond_2

    .line 2424
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOfflineMenuCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "controlFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .end local v1    # "inflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .end local v3    # "menuFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;
    .end local v4    # "menuItems":[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .end local v5    # "menuView":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    :cond_0
    :goto_1
    move-object v6, v2

    .line 2433
    :goto_2
    return-object v6

    .line 2409
    .end local v2    # "menuControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOnlineMenuCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-object v2, v6

    goto :goto_0

    .line 2426
    .restart local v0    # "controlFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .restart local v1    # "inflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .restart local v2    # "menuControl":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .restart local v3    # "menuFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;
    .restart local v4    # "menuItems":[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .restart local v5    # "menuView":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOnlineMenuCache:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2429
    .end local v0    # "controlFactory":Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ControlFactory;
    .end local v1    # "inflater":Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .end local v3    # "menuFactory":Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;
    .end local v5    # "menuView":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getSupportedDrawingSpecs(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)I
    .locals 2
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 1799
    const/4 v0, 0x1

    .line 1800
    .local v0, "drawingSpecs":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsClockWidgets()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->hasNotificationsSources()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1802
    :cond_0
    or-int/lit16 v0, v0, 0xf8

    .line 1804
    :cond_1
    return v0
.end method

.method private getTextSizeFromDisplayMetrics()F
    .locals 4

    .prologue
    .line 2666
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2667
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2669
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2670
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 2697
    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    return v2

    .line 2672
    :sswitch_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2673
    const-string v2, "getTextSizeFromDisplayMetrics():  DENSITY_LOW"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 2675
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 2677
    :sswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2678
    const-string v2, "getTextSizeFromDisplayMetrics():  DENSITY_MEDIUM"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 2680
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 2682
    :sswitch_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2683
    const-string v2, "getTextSizeFromDisplayMetrics():  DENSITY_HIGH"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 2685
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 2687
    :sswitch_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2688
    const-string v2, "getTextSizeFromDisplayMetrics():  DENSITY_XHIGH"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 2690
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    .line 2692
    :sswitch_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2693
    const-string v2, "getTextSizeFromDisplayMetrics():  DENSITY_XXHIGH"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 2695
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto/16 :goto_0

    .line 2670
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method private getTextWidth(Landroid/widget/TextView;Ljava/lang/String;Z)I
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "isMessageRTL"    # Z

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 801
    .local v0, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 802
    .local v1, "textWidth":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 803
    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-nez v2, :cond_1

    .line 804
    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v1, v2

    .line 811
    :cond_0
    :goto_0
    float-to-int v2, v1

    return v2

    .line 805
    :cond_1
    if-eqz p3, :cond_2

    .line 806
    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    goto :goto_0

    .line 808
    :cond_2
    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method private getWatchTextSize(I)I
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 822
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationMessageTextSizeNormal:I

    if-ne p1, v1, :cond_0

    .line 823
    const/16 v0, 0x12

    .line 829
    .local v0, "watchTextSize":I
    :goto_0
    return v0

    .line 824
    .end local v0    # "watchTextSize":I
    :cond_0
    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationMessageTextSizeLarge:I

    if-ne p1, v1, :cond_1

    .line 825
    const/16 v0, 0x18

    .restart local v0    # "watchTextSize":I
    goto :goto_0

    .line 827
    .end local v0    # "watchTextSize":I
    :cond_1
    move v0, p1

    .restart local v0    # "watchTextSize":I
    goto :goto_0
.end method

.method private insertDisplayNameDrawerImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZ)I
    .locals 11
    .param p1, "resourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "bold"    # Z

    .prologue
    const/16 v3, 0x70

    .line 2556
    const/16 v4, 0x19

    const/16 v5, 0x15

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    return v0
.end method

.method private insertDisplayNameImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I
    .locals 11
    .param p1, "resourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "bold"    # Z
    .param p5, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    .line 2543
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2544
    const/16 v3, 0x98

    const/16 v4, 0x19

    const/16 v5, 0xf

    const/4 v8, 0x3

    const/16 v9, 0x14

    const/16 v10, 0x98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    .line 2550
    :goto_0
    return v0

    .line 2546
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ContactReader;->readContactPhoto(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2548
    :cond_1
    const/16 v3, 0x78

    const/16 v4, 0x19

    const/16 v5, 0x15

    const/4 v8, 0x0

    const/16 v9, 0x9

    const/16 v10, 0x78

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    goto :goto_0

    .line 2550
    :cond_2
    const/16 v3, 0x9e

    const/16 v4, 0x19

    const/16 v5, 0x15

    const/4 v8, 0x0

    const/16 v9, 0x9

    const/16 v10, 0x9e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    goto :goto_0
.end method

.method private insertEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;)Z
    .locals 13
    .param p1, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2239
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v4

    .line 2240
    .local v4, "eventCid":I
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v5

    .line 2242
    .local v5, "messageId":I
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getExtensionCidBySourceId(J)I

    move-result v8

    .line 2243
    .local v8, "extensionCid":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    .line 2244
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extension CID not found for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    :cond_0
    move v0, v11

    .line 2281
    :goto_0
    return v0

    .line 2247
    :cond_1
    invoke-virtual {p1, v8}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setExtensionCid(I)V

    .line 2248
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inserting event for extensions with CID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 2251
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->createEventMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;

    move-result-object v7

    .line 2254
    .local v7, "eventMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;
    if-eqz v7, :cond_3

    .line 2256
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2258
    .local v9, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 2259
    .local v6, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2260
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "cid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2261
    const-string v0, "event_id"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2262
    const-string v0, "extension_id"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2263
    const-string v0, "sourceId"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2264
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string v0, "message"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const-string v0, "publishedTime"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2267
    const-string v0, "readStatus"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2268
    const-string v0, "imageUri"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const-string v0, "profile_image_uri"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v0, "display_name"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const-string v0, "contacts_reference"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const-string v0, "personal"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2273
    const-string v0, "extension_cid"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionCid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2274
    invoke-virtual {v6, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2276
    invoke-virtual {p0, v5, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addOperations(ILjava/util/ArrayList;)V

    .line 2277
    new-array v0, v12, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v7, v0, v11

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    move v0, v12

    .line 2279
    goto/16 :goto_0

    .end local v6    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v9    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_3
    move v0, v11

    .line 2281
    goto/16 :goto_0
.end method

.method private insertEventImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V
    .locals 20
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p3, "syncEvent"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p4, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2311
    .local p2, "dataMap":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v11

    .line 2312
    .local v11, "imageUri":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 2315
    :try_start_0
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2316
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 2318
    .local v14, "is":Ljava/io/InputStream;
    if-nez v14, :cond_1

    .line 2319
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No image found at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 2367
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 2323
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2324
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 2326
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    .line 2327
    .local v19, "width":I
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2328
    .local v10, "height":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    add-int/lit8 v13, v3, -0x6

    .line 2329
    .local v13, "imgViewWidth":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationOverviewHeight:I

    add-int/lit8 v12, v3, -0x6

    .line 2331
    .local v12, "imgViewHeight":I
    move/from16 v0, v19

    if-gt v0, v13, :cond_2

    if-le v10, v12, :cond_3

    .line 2332
    :cond_2
    move/from16 v0, v19

    int-to-float v3, v0

    int-to-float v4, v10

    div-float v17, v3, v4

    .line 2333
    .local v17, "ratio":F
    move/from16 v0, v19

    if-lt v10, v0, :cond_5

    .line 2334
    int-to-float v3, v12

    mul-float v3, v3, v17

    float-to-int v0, v3

    move/from16 v19, v0

    .line 2335
    move v10, v12

    .line 2346
    .end local v17    # "ratio":F
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaled event image size, w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 2348
    :cond_4
    new-instance v15, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v15}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 2349
    .local v15, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setUri(Landroid/net/Uri;)V

    .line 2350
    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move/from16 v0, v19

    invoke-virtual {v15, v0, v10, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 2351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;)I

    move-result v6

    .line 2354
    .local v6, "imageCid":I
    invoke-virtual/range {p4 .. p4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    sub-int v3, v3, v19

    div-int/lit8 v7, v3, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationOverviewHeight:I

    sub-int/2addr v3, v10

    div-int/lit8 v8, v3, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertShifter(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;IIII)I

    move-result v18

    .line 2355
    .local v18, "shifterCid":I
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setImageCid(I)V

    .line 2356
    const/4 v3, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 2357
    .end local v6    # "imageCid":I
    .end local v10    # "height":I
    .end local v12    # "imgViewHeight":I
    .end local v13    # "imgViewWidth":I
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "shifterCid":I
    .end local v19    # "width":I
    :catch_0
    move-exception v9

    .line 2358
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 2359
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 2337
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "height":I
    .restart local v12    # "imgViewHeight":I
    .restart local v13    # "imgViewWidth":I
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v17    # "ratio":F
    .restart local v19    # "width":I
    :cond_5
    move/from16 v19, v13

    .line 2338
    int-to-float v3, v13

    div-float v3, v3, v17

    float-to-int v10, v3

    .line 2339
    if-le v10, v12, :cond_3

    .line 2340
    int-to-float v3, v12

    mul-float v3, v3, v17

    float-to-int v0, v3

    move/from16 v19, v0

    .line 2341
    move v10, v12

    goto/16 :goto_1

    .line 2360
    .end local v10    # "height":I
    .end local v12    # "imgViewHeight":I
    .end local v13    # "imgViewWidth":I
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "ratio":F
    .end local v19    # "width":I
    :catch_1
    move-exception v9

    .line 2361
    .local v9, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 2362
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 2363
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 2364
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/Throwable;)Z

    goto/16 :goto_0
.end method

.method private insertExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;I)V
    .locals 17
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "extensionCid"    # I

    .prologue
    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v9

    .line 1002
    .local v9, "registrationMessageId":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v4

    .line 1012
    .local v4, "actionMessageId":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    .line 1016
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v10

    .line 1017
    .local v10, "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addExtensionRootReference(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;I)V

    .line 1019
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v10, v1, v2, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->createExtensionMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;

    move-result-object v6

    .line 1021
    .local v6, "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    if-nez v6, :cond_1

    .line 1022
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1023
    const-string v13, "Extension message was null, returning"

    invoke-static {v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 1080
    .end local v6    # "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    .end local v10    # "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    :cond_0
    :goto_0
    return-void

    .line 1028
    .restart local v6    # "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    .restart local v10    # "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v11

    .line 1029
    .local v11, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1030
    const-string v13, "Inserting extension/source"

    invoke-static {v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1032
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncInsertedNotificationSources(Ljava/util/List;)V

    .line 1035
    sget-object v13, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 1037
    .local v5, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "cid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    const-string v13, "extensionId"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1040
    const-string v13, "apiRegistrationId"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getApiRegistrationId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    const-string v13, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v13, "configurationActivity"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v13, "configurationText"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v13, "iconLargeUri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v13, "extensionIconUri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v13, "extension48PxIconUri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v13, "extensionIconUriBlackWhite"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUriBlackWhite()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v13, "extension_key"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v13, "notificationApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1053
    const-string v13, "packageName"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v13, "launchMode"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionLaunchMode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    const-string v13, "hostAppPackageName"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v13, "widgetApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1058
    const-string v13, "controlApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    const-string v13, "sensorApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getSensorApiVersion()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1060
    const-string v13, "controlBackIntercept"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsBackKey()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1061
    const-string v14, "lowPowerSupport"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsActiveLowPowerMode()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1063
    invoke-virtual {v5, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addOperations(ILjava/util/ArrayList;)V

    .line 1066
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;

    invoke-direct {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;-><init>(I)V

    .line 1067
    .local v3, "actionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setAction(I)V

    .line 1068
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setValue(I)V

    .line 1069
    const/4 v13, 0x2

    new-array v13, v13, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 1071
    const-string v13, "Installed extension, %s."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v8, "referencedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->getIconCid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->getIconOfflineCid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->getNameCid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->cidRefTracker()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(ILjava/util/List;)V

    goto/16 :goto_0

    .line 1061
    .end local v3    # "actionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    .end local v8    # "referencedCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;)I
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "layoutData"    # Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    .prologue
    .line 2487
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2488
    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {p1, v1, p2, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v0

    .line 2489
    .local v0, "imageCid":I
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2490
    return v0
.end method

.method private insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I
    .locals 9
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "imageConversion"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;
    .param p6, "useEmptyOnError"    # Z

    .prologue
    .line 2505
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2506
    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v8

    .line 2508
    .local v8, "imageCid":I
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2509
    return v8
.end method

.method private insertMessageImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZ)I
    .locals 11
    .param p1, "resourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "bold"    # Z

    .prologue
    .line 2560
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2561
    const/16 v3, 0xa0

    const/16 v4, 0x14

    const/16 v5, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0xa0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    .line 2563
    :goto_0
    return v0

    :cond_0
    const/16 v3, 0xa8

    const/16 v4, 0x14

    const/16 v5, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0xa8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    goto :goto_0
.end method

.method private insertNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;I)V
    .locals 11
    .param p1, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    .param p2, "sourceCid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 1885
    if-nez p1, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1891
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "source_id"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1892
    const-string v4, "cid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1893
    const-string v4, "action_1"

    invoke-virtual {p1, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    const-string v4, "action_2"

    invoke-virtual {p1, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    const-string v4, "action_3"

    invoke-virtual {p1, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v4, "enabled"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1897
    const-string v4, "extension_specific_id"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getExtensionSpecificSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    const-string v4, "iconUri1"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    const-string v4, "iconUri2"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    const-string v4, "iconUriBlackWhite"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIconBlackWhite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    const-string v4, "name"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    const-string v4, "packageName"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const-string v4, "textToSpeech"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getTextToSpeechText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v4, "updateTime"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getUpdateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1907
    const-string v4, "color"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1910
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;->URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1913
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionFromSource(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 1914
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v0, :cond_0

    .line 1915
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Updating extension \'%s\' after inserting source with name: %s, color: 0x%08x"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1921
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v5

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v6

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->createExtensionMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;

    move-result-object v1

    .line 1924
    .local v1, "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;-><init>(I)V

    .line 1925
    .local v2, "updateMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    invoke-virtual {v2, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setAction(I)V

    .line 1926
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setValue(I)V

    .line 1928
    new-array v4, v8, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v1, v4, v9

    aput-object v2, v4, v10

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto/16 :goto_0
.end method

.method private insertOverviewEventScreen(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .locals 4
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    .line 496
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getImageCid()I

    move-result v0

    .line 498
    .local v0, "imageCid":I
    if-nez v1, :cond_1

    if-gtz v0, :cond_1

    .line 499
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "insertOverviewEventScreen: Ignoring empty message"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 500
    :cond_0
    const/4 v3, 0x0

    .line 515
    :goto_0
    return-object v3

    .line 503
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v2, "subCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_2

    .line 508
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertOverviewEventScreenImage(ILjava/util/ArrayList;)V

    .line 511
    :cond_2
    if-eqz v1, :cond_3

    .line 512
    invoke-direct {p0, p1, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertOverviewEventScreenMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 515
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    goto :goto_0
.end method

.method private insertOverviewEventScreenImage(ILjava/util/ArrayList;)V
    .locals 7
    .param p1, "imageCid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "subCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 834
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationOverviewHeight:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 837
    .local v0, "screenBox":Landroid/graphics/Rect;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewCid()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;-><init>(II)V

    .line 838
    .local v1, "screenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    new-array v3, v6, [I

    aput p1, v3, v5

    invoke-virtual {v1, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->setCids([I)V

    .line 841
    new-array v3, v6, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v1, v3, v5

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 843
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-direct {v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;-><init>()V

    .line 844
    .local v2, "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->getCid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setResourceCid(I)V

    .line 845
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxLeft(I)V

    .line 846
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxTop(I)V

    .line 847
    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxRight(I)V

    .line 848
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxBottom(I)V

    .line 849
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    return-void
.end method

.method private insertOverviewEventScreenMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 73
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p3, "subCids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v40

    .line 541
    .local v40, "boxMargin":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isRTL(Ljava/lang/String;)Z

    move-result v12

    .line 542
    .local v12, "isMessageRTL":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-eqz v4, :cond_7

    const/16 v53, 0x4

    .line 545
    .local v53, "marginOffest":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/view/LayoutInflater;

    .line 546
    .local v47, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030023

    const/4 v5, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v71

    check-cast v71, Landroid/widget/TextView;

    .line 548
    .local v71, "tv":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2328

    if-le v4, v5, :cond_0

    .line 549
    const/4 v4, 0x0

    const/16 v5, 0x2328

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 552
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addNewLineBeforeHyperlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->embedSmileys(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v65

    .line 557
    .local v65, "spannable":Landroid/text/Spannable;
    if-eqz v65, :cond_8

    .line 558
    move-object/from16 v0, v71

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    mul-int v5, v53, v40

    sub-int/2addr v4, v5

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v72

    .line 567
    .local v72, "widthMS":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaHeight:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    .line 569
    .local v44, "heightMS":I
    move-object/from16 v0, v71

    move/from16 v1, v72

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 570
    invoke-virtual/range {v71 .. v71}, Landroid/widget/TextView;->getLineCount()I

    move-result v50

    .line 571
    .local v50, "lineCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationMessageTextSize:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getWatchTextSize(I)I

    move-result v19

    .line 572
    .local v19, "textSize":I
    invoke-virtual/range {v71 .. v71}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 573
    .local v17, "lineHeight":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncManager: Text: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 574
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncManager: Number of lines required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 575
    :cond_2
    invoke-virtual/range {v71 .. v71}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v67

    .line 576
    .local v67, "text":Ljava/lang/CharSequence;
    invoke-interface/range {v67 .. v67}, Ljava/lang/CharSequence;->length()I

    move-result v70

    .line 578
    .local v70, "textLength":I
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_2
    move/from16 v0, v45

    move/from16 v1, v50

    if-ge v0, v1, :cond_1e

    .line 582
    invoke-virtual/range {v71 .. v71}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v52

    .line 583
    .local v52, "lineStart":I
    invoke-virtual/range {v71 .. v71}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v51

    .line 585
    .local v51, "lineEnd":I
    move/from16 v0, v70

    move/from16 v1, v52

    if-lt v0, v1, :cond_3

    move/from16 v0, v70

    move/from16 v1, v51

    if-lt v0, v1, :cond_3

    move/from16 v0, v52

    move/from16 v1, v51

    if-ge v0, v1, :cond_3

    if-ltz v52, :cond_3

    if-gez v51, :cond_9

    .line 587
    :cond_3
    const-string v6, ""

    .line 592
    .local v6, "line":Ljava/lang/String;
    :goto_3
    new-instance v58, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewCid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v5

    move-object/from16 v0, v58

    invoke-direct {v0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;-><init>(II)V

    .line 595
    .local v58, "screenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    new-instance v64, Ljava/util/ArrayList;

    invoke-direct/range {v64 .. v64}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v64, "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    if-eqz v65, :cond_4

    .line 597
    invoke-static {v6}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->getSmileyImages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v64

    .line 601
    :cond_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v64 .. v64}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " smileys in \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 602
    :cond_5
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 606
    new-instance v57, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v57

    move/from16 v1, v17

    invoke-direct {v0, v4, v5, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 607
    .local v57, "screenBox":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Box for item #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v57 .. v57}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 610
    :cond_6
    new-instance v18, Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    sub-int v5, v5, v40

    add-int/lit8 v7, v17, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v40

    invoke-direct {v0, v1, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 611
    .local v18, "box":Landroid/graphics/Rect;
    const/16 v54, -0x1

    .line 613
    .local v54, "messageCid":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-eqz v4, :cond_a

    .line 614
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    add-int/lit8 v8, v17, 0x2

    add-int/lit8 v9, v19, -0x2

    const/high16 v10, -0x1000000

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImageCanvas(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZZ)I

    move-result v54

    .line 621
    :goto_4
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v54, v4, v5

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->setCids([I)V

    .line 769
    .end local v18    # "box":Landroid/graphics/Rect;
    .end local v54    # "messageCid":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->cidRefTracker()Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    move-result-object v4

    invoke-virtual/range {v58 .. v58}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->getCid()I

    move-result v5

    invoke-virtual/range {v58 .. v58}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->getCids()[I

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/smartconnect/hostapp/util/ArrayUtils;->toIntegerArray([I)[Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->put(I[Ljava/lang/Integer;)V

    .line 773
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v5, 0x0

    aput-object v58, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 775
    new-instance v66, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    invoke-direct/range {v66 .. v66}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;-><init>()V

    .line 776
    .local v66, "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    invoke-virtual/range {v58 .. v58}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->getCid()I

    move-result v4

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setResourceCid(I)V

    .line 777
    move-object/from16 v0, v57

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxLeft(I)V

    .line 778
    move-object/from16 v0, v57

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxTop(I)V

    .line 779
    move-object/from16 v0, v57

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxRight(I)V

    .line 780
    move-object/from16 v0, v57

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;->setScreenBoxBottom(I)V

    .line 781
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_2

    .line 542
    .end local v6    # "line":Ljava/lang/String;
    .end local v17    # "lineHeight":I
    .end local v19    # "textSize":I
    .end local v44    # "heightMS":I
    .end local v45    # "i":I
    .end local v47    # "inflater":Landroid/view/LayoutInflater;
    .end local v50    # "lineCount":I
    .end local v51    # "lineEnd":I
    .end local v52    # "lineStart":I
    .end local v53    # "marginOffest":I
    .end local v57    # "screenBox":Landroid/graphics/Rect;
    .end local v58    # "screenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    .end local v64    # "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    .end local v65    # "spannable":Landroid/text/Spannable;
    .end local v66    # "subCid":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .end local v67    # "text":Ljava/lang/CharSequence;
    .end local v70    # "textLength":I
    .end local v71    # "tv":Landroid/widget/TextView;
    .end local v72    # "widthMS":I
    :cond_7
    const/16 v53, 0x2

    goto/16 :goto_0

    .line 560
    .restart local v47    # "inflater":Landroid/view/LayoutInflater;
    .restart local v53    # "marginOffest":I
    .restart local v65    # "spannable":Landroid/text/Spannable;
    .restart local v71    # "tv":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, v71

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 589
    .restart local v17    # "lineHeight":I
    .restart local v19    # "textSize":I
    .restart local v44    # "heightMS":I
    .restart local v45    # "i":I
    .restart local v50    # "lineCount":I
    .restart local v51    # "lineEnd":I
    .restart local v52    # "lineStart":I
    .restart local v67    # "text":Ljava/lang/CharSequence;
    .restart local v70    # "textLength":I
    .restart local v72    # "widthMS":I
    :cond_9
    move-object/from16 v0, v67

    move/from16 v1, v52

    move/from16 v2, v51

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "line":Ljava/lang/String;
    goto/16 :goto_3

    .line 617
    .restart local v18    # "box":Landroid/graphics/Rect;
    .restart local v54    # "messageCid":I
    .restart local v57    # "screenBox":Landroid/graphics/Rect;
    .restart local v58    # "screenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    .restart local v64    # "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v16, v0

    const/16 v20, 0x3

    const/high16 v21, -0x1000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationTextBackgroundColor:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v6

    invoke-direct/range {v13 .. v23}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I

    move-result v54

    goto/16 :goto_4

    .line 624
    .end local v18    # "box":Landroid/graphics/Rect;
    .end local v54    # "messageCid":I
    .end local v57    # "screenBox":Landroid/graphics/Rect;
    :cond_b
    new-instance v57, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, v57

    invoke-direct {v0, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 625
    .restart local v57    # "screenBox":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Box for item #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v57 .. v57}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 630
    :cond_c
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v43, "cidsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v55, 0x0

    .line 636
    .local v55, "nextCharacterPos":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-nez v4, :cond_13

    .line 637
    const/16 v49, 0x0

    .line 645
    .local v49, "lastXPos":I
    :goto_6
    invoke-interface/range {v64 .. v64}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .local v46, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;

    .line 647
    .local v60, "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    move-object/from16 v0, v60

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->resourceId:I

    move/from16 v63, v0

    .line 648
    .local v63, "smileyResId":I
    move-object/from16 v0, v60

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->position:I

    move/from16 v56, v0

    .line 649
    .local v56, "nextSmileyPos":I
    move-object/from16 v0, v60

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->characterLength:I

    move/from16 v62, v0

    .line 652
    .local v62, "smileyLength":I
    move/from16 v0, v56

    move/from16 v1, v55

    if-eq v0, v1, :cond_f

    .line 654
    move/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 655
    .local v22, "textPart":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getTextWidth(Landroid/widget/TextView;Ljava/lang/String;Z)I

    move-result v23

    .line 657
    .local v23, "textPartWidth":I
    if-eqz v23, :cond_f

    .line 660
    if-nez v49, :cond_15

    move/from16 v68, v40

    .line 661
    .local v68, "textBoxMargin":I
    :goto_8
    new-instance v25, Landroid/graphics/Rect;

    const/4 v4, 0x0

    add-int v5, v68, v23

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v68

    invoke-direct {v0, v1, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 663
    .local v25, "textBox":Landroid/graphics/Rect;
    const/16 v69, -0x1

    .line 664
    .local v69, "textCid":I
    if-eqz v12, :cond_e

    .line 665
    sub-int v49, v49, v23

    .line 667
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-nez v4, :cond_16

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v24, v0

    const/16 v27, 0x53

    const/high16 v28, -0x1000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationTextBackgroundColor:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move/from16 v26, v19

    invoke-direct/range {v20 .. v30}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I

    move-result v69

    .line 679
    :goto_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v69

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertShifter(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;III)I

    move-result v59

    .line 680
    .local v59, "shifterCid":I
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    if-nez v12, :cond_17

    .line 684
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    add-int v49, v49, v4

    .line 688
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v0, v49

    if-lt v0, v4, :cond_f

    .line 689
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertOverviewEventScreen: lastXPos is outside screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 695
    .end local v22    # "textPart":Ljava/lang/String;
    .end local v23    # "textPartWidth":I
    .end local v25    # "textBox":Landroid/graphics/Rect;
    .end local v59    # "shifterCid":I
    .end local v68    # "textBoxMargin":I
    .end local v69    # "textCid":I
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 697
    .local v28, "smileyUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v30, v0

    sget-object v31, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    const/16 v32, 0x1

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    invoke-direct/range {v26 .. v32}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;Z)I

    move-result v61

    .line 700
    .local v61, "smileyCid":I
    if-nez v49, :cond_10

    .line 701
    if-nez v12, :cond_10

    .line 702
    add-int v49, v49, v40

    .line 705
    :cond_10
    if-eqz v12, :cond_11

    .line 706
    const/16 v4, 0xd6

    move/from16 v0, v49

    if-ne v0, v4, :cond_18

    .line 707
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    sub-int v4, v4, v40

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    sub-int v49, v4, v5

    .line 716
    :cond_11
    :goto_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v61

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertShifter(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;III)I

    move-result v59

    .line 717
    .restart local v59    # "shifterCid":I
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    add-int v55, v56, v62

    .line 723
    if-nez v12, :cond_12

    .line 724
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    add-int v49, v49, v4

    .line 726
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v0, v49

    if-lt v0, v4, :cond_d

    .line 727
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertOverviewEventScreen: lastXPos is outside screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    goto/16 :goto_7

    .line 638
    .end local v28    # "smileyUri":Ljava/lang/String;
    .end local v46    # "i$":Ljava/util/Iterator;
    .end local v49    # "lastXPos":I
    .end local v56    # "nextSmileyPos":I
    .end local v59    # "shifterCid":I
    .end local v60    # "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    .end local v61    # "smileyCid":I
    .end local v62    # "smileyLength":I
    .end local v63    # "smileyResId":I
    :cond_13
    if-eqz v12, :cond_14

    .line 639
    const/16 v49, 0xd6

    .restart local v49    # "lastXPos":I
    goto/16 :goto_6

    .line 641
    .end local v49    # "lastXPos":I
    :cond_14
    add-int/lit8 v49, v40, -0x1

    .restart local v49    # "lastXPos":I
    goto/16 :goto_6

    .line 660
    .restart local v22    # "textPart":Ljava/lang/String;
    .restart local v23    # "textPartWidth":I
    .restart local v46    # "i$":Ljava/util/Iterator;
    .restart local v56    # "nextSmileyPos":I
    .restart local v60    # "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    .restart local v62    # "smileyLength":I
    .restart local v63    # "smileyResId":I
    :cond_15
    const/16 v68, 0x0

    goto/16 :goto_8

    .line 673
    .restart local v25    # "textBox":Landroid/graphics/Rect;
    .restart local v68    # "textBoxMargin":I
    .restart local v69    # "textCid":I
    :cond_16
    add-int/lit8 v30, v17, 0x2

    add-int/lit8 v31, v19, -0x2

    const/high16 v32, -0x1000000

    const/16 v33, 0x1

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    move-object/from16 v28, v22

    move/from16 v29, v23

    move/from16 v34, v12

    invoke-direct/range {v26 .. v34}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImageCanvas(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZZ)I

    move-result v69

    goto/16 :goto_9

    .line 686
    .restart local v59    # "shifterCid":I
    :cond_17
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    sub-int v49, v49, v4

    goto/16 :goto_a

    .line 709
    .end local v22    # "textPart":Ljava/lang/String;
    .end local v23    # "textPartWidth":I
    .end local v25    # "textBox":Landroid/graphics/Rect;
    .end local v59    # "shifterCid":I
    .end local v68    # "textBoxMargin":I
    .end local v69    # "textCid":I
    .restart local v28    # "smileyUri":Ljava/lang/String;
    .restart local v61    # "smileyCid":I
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    sub-int v49, v49, v4

    goto :goto_b

    .line 732
    .end local v28    # "smileyUri":Ljava/lang/String;
    .end local v56    # "nextSmileyPos":I
    .end local v60    # "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    .end local v61    # "smileyCid":I
    .end local v62    # "smileyLength":I
    .end local v63    # "smileyResId":I
    :cond_19
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v55

    if-ge v0, v4, :cond_1b

    .line 734
    move/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 735
    .restart local v22    # "textPart":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getTextWidth(Landroid/widget/TextView;Ljava/lang/String;Z)I

    move-result v23

    .line 737
    .restart local v23    # "textPartWidth":I
    if-eqz v23, :cond_1b

    .line 739
    new-instance v25, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v7, v23, -0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 740
    .restart local v25    # "textBox":Landroid/graphics/Rect;
    const/16 v69, -0x1

    .line 741
    .restart local v69    # "textCid":I
    if-eqz v12, :cond_1a

    .line 742
    sub-int v49, v49, v23

    .line 744
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->bitmapRendering:Z

    if-nez v4, :cond_1c

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v33, v0

    const/16 v36, 0x53

    const/high16 v37, -0x1000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationTextBackgroundColor:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, v22

    move/from16 v32, v23

    move-object/from16 v34, v25

    move/from16 v35, v19

    invoke-direct/range {v29 .. v39}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I

    move-result v69

    .line 754
    :goto_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v69

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertShifter(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;III)I

    move-result v59

    .line 755
    .restart local v59    # "shifterCid":I
    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    .end local v22    # "textPart":Ljava/lang/String;
    .end local v23    # "textPartWidth":I
    .end local v25    # "textBox":Landroid/graphics/Rect;
    .end local v59    # "shifterCid":I
    .end local v69    # "textCid":I
    :cond_1b
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v42, v0

    .line 761
    .local v42, "cidsArray":[I
    const/16 v48, 0x0

    .line 762
    .local v48, "j":I
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :goto_d
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v41

    .line 763
    .local v41, "cid":I
    aput v41, v42, v48

    .line 764
    add-int/lit8 v48, v48, 0x1

    .line 765
    goto :goto_d

    .line 749
    .end local v41    # "cid":I
    .end local v42    # "cidsArray":[I
    .end local v48    # "j":I
    .restart local v22    # "textPart":Ljava/lang/String;
    .restart local v23    # "textPartWidth":I
    .restart local v25    # "textBox":Landroid/graphics/Rect;
    .restart local v69    # "textCid":I
    :cond_1c
    add-int/lit8 v33, v17, 0x2

    add-int/lit8 v34, v19, -0x2

    const/high16 v35, -0x1000000

    const/16 v36, 0x1

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, v22

    move/from16 v32, v23

    move/from16 v37, v12

    invoke-direct/range {v29 .. v37}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImageCanvas(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZZ)I

    move-result v69

    goto :goto_c

    .line 766
    .end local v22    # "textPart":Ljava/lang/String;
    .end local v23    # "textPartWidth":I
    .end local v25    # "textBox":Landroid/graphics/Rect;
    .end local v69    # "textCid":I
    .restart local v42    # "cidsArray":[I
    .restart local v48    # "j":I
    :cond_1d
    move-object/from16 v0, v58

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;->setCids([I)V

    goto/16 :goto_5

    .line 784
    .end local v6    # "line":Ljava/lang/String;
    .end local v42    # "cidsArray":[I
    .end local v43    # "cidsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v46    # "i$":Ljava/util/Iterator;
    .end local v48    # "j":I
    .end local v49    # "lastXPos":I
    .end local v51    # "lineEnd":I
    .end local v52    # "lineStart":I
    .end local v55    # "nextCharacterPos":I
    .end local v57    # "screenBox":Landroid/graphics/Rect;
    .end local v58    # "screenMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceScreen;
    .end local v64    # "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    :cond_1e
    return-void
.end method

.method private insertProfileImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/util/List;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V
    .locals 6
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p3, "syncEvent"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p4, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;",
            ">;",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "dataMap":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;>;"
    const/4 v5, 0x5

    .line 2371
    invoke-virtual {p4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2372
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 2373
    .local v1, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {p4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setUri(Landroid/net/Uri;)V

    .line 2374
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationContactIconSize:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationContactIconSize:I

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 2376
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setProfileImageCid(I)V

    .line 2377
    invoke-virtual {p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageCid()I

    move-result v2

    invoke-direct {p0, p2, v5, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    .line 2390
    .end local v1    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    :cond_0
    :goto_0
    return-void

    .line 2378
    :cond_1
    invoke-virtual {p4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2379
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ContactReader;->readContactPhoto(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2381
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2382
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 2383
    .restart local v1    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setData(Landroid/graphics/Bitmap;)V

    .line 2384
    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationContactIconSize:I

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mNotificationContactIconSize:I

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 2386
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setProfileImageCid(I)V

    .line 2387
    invoke-virtual {p3}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageCid()I

    move-result v2

    invoke-direct {p0, p2, v5, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addResourceLayoutData(Ljava/util/List;II)V

    goto :goto_0
.end method

.method private insertRichNotification(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;III)I
    .locals 48
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "color"    # I

    .prologue
    .line 2703
    if-nez p2, :cond_0

    .line 2704
    const/16 v35, -0x1

    .line 2913
    :goto_0
    return v35

    .line 2707
    :cond_0
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 2708
    .local v21, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getTextSizeFromDisplayMetrics()F

    move-result v40

    .line 2709
    .local v40, "textSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2710
    .local v43, "y":I
    const/4 v5, 0x4

    .line 2711
    .local v5, "MAX_LINES":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0c0012

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 2712
    .local v7, "boxMargin":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isRTL(Ljava/lang/String;)Z

    move-result v14

    .line 2714
    .local v14, "isTextRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    sub-int v44, v44, v7

    sget-object v45, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v44

    move/from16 v1, p4

    move-object/from16 v2, v45

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2715
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2716
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v37, Landroid/text/TextPaint;

    invoke-direct/range {v37 .. v37}, Landroid/text/TextPaint;-><init>()V

    .line 2717
    .local v37, "textPaint":Landroid/text/TextPaint;
    const-string v16, ""

    .line 2719
    .local v16, "line":Ljava/lang/String;
    move-object/from16 v0, v37

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2720
    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2721
    sget-object v44, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2722
    const/16 v44, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 2724
    if-eqz v14, :cond_1

    .line 2725
    sget-object v44, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2729
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const-string v45, "layout_inflater"

    invoke-virtual/range {v44 .. v45}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 2730
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const v44, 0x7f030023

    const/16 v45, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 2732
    .local v41, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addNewLineBeforeHyperlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->embedSmileys(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v33

    .line 2736
    .local v33, "spannable":Landroid/text/Spannable;
    if-eqz v33, :cond_4

    .line 2737
    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2743
    :goto_1
    const/high16 v44, -0x80000000

    move/from16 v0, p3

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v42

    .line 2744
    .local v42, "widthMS":I
    const/high16 v44, -0x80000000

    move/from16 v0, p4

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 2746
    .local v10, "heightMS":I
    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->measure(II)V

    .line 2747
    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getLineCount()I

    move-result v44

    move/from16 v0, v44

    if-le v0, v5, :cond_5

    move/from16 v17, v5

    .line 2749
    .local v17, "lineCount":I
    :goto_2
    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 2750
    .local v9, "ctext":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v36

    .line 2751
    .local v36, "textLength":I
    const/16 v23, 0x0

    .line 2752
    .local v23, "nextLine":Z
    const/16 v25, 0x0

    .local v25, "oldLastXPos":I
    const/16 v26, 0x0

    .line 2754
    .local v26, "oldSmileyY":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_19

    .line 2757
    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v19

    .line 2758
    .local v19, "lineStart":I
    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    .line 2759
    .local v18, "lineEnd":I
    move/from16 v0, v36

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    move/from16 v0, v36

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    if-ltz v19, :cond_2

    if-gez v18, :cond_6

    .line 2761
    :cond_2
    const-string v16, ""

    .line 2766
    :goto_4
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 2767
    .local v32, "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    invoke-static/range {v16 .. v16}, Lcom/sonymobile/smartconnect/hostapp/notification/Smileyfier;->getSmileyImages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v32

    .line 2769
    const/16 v22, 0x0

    .line 2770
    .local v22, "nextCharacterPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    mul-int v31, v44, v11

    .line 2772
    .local v31, "smileyY":I
    if-eqz v14, :cond_8

    .line 2773
    if-nez v23, :cond_7

    .line 2774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    sub-int v15, v44, v7

    .line 2790
    .local v15, "lastXPos":I
    :goto_5
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_a

    .line 2791
    int-to-float v0, v15

    move/from16 v44, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v16

    move/from16 v1, v44

    move/from16 v2, v45

    move-object/from16 v3, v37

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2902
    :cond_3
    :goto_6
    if-nez v23, :cond_18

    .line 2903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2754
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2739
    .end local v9    # "ctext":Ljava/lang/CharSequence;
    .end local v10    # "heightMS":I
    .end local v11    # "i":I
    .end local v15    # "lastXPos":I
    .end local v17    # "lineCount":I
    .end local v18    # "lineEnd":I
    .end local v19    # "lineStart":I
    .end local v22    # "nextCharacterPos":I
    .end local v23    # "nextLine":Z
    .end local v25    # "oldLastXPos":I
    .end local v26    # "oldSmileyY":I
    .end local v31    # "smileyY":I
    .end local v32    # "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    .end local v36    # "textLength":I
    .end local v42    # "widthMS":I
    :cond_4
    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2747
    .restart local v10    # "heightMS":I
    .restart local v42    # "widthMS":I
    :cond_5
    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getLineCount()I

    move-result v17

    goto/16 :goto_2

    .line 2763
    .restart local v9    # "ctext":Ljava/lang/CharSequence;
    .restart local v11    # "i":I
    .restart local v17    # "lineCount":I
    .restart local v18    # "lineEnd":I
    .restart local v19    # "lineStart":I
    .restart local v23    # "nextLine":Z
    .restart local v25    # "oldLastXPos":I
    .restart local v26    # "oldSmileyY":I
    .restart local v36    # "textLength":I
    :cond_6
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    .line 2776
    .restart local v22    # "nextCharacterPos":I
    .restart local v31    # "smileyY":I
    .restart local v32    # "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    :cond_7
    const/16 v23, 0x0

    .line 2777
    move/from16 v15, v25

    .line 2778
    .restart local v15    # "lastXPos":I
    move/from16 v31, v26

    goto :goto_5

    .line 2781
    .end local v15    # "lastXPos":I
    :cond_8
    if-nez v23, :cond_9

    .line 2782
    const/4 v15, 0x0

    .restart local v15    # "lastXPos":I
    goto :goto_5

    .line 2784
    .end local v15    # "lastXPos":I
    :cond_9
    const/16 v23, 0x0

    .line 2785
    move/from16 v15, v25

    .line 2786
    .restart local v15    # "lastXPos":I
    move/from16 v31, v26

    goto :goto_5

    .line 2793
    :cond_a
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;

    .line 2794
    .local v28, "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->resourceId:I

    move/from16 v30, v0

    .line 2795
    .local v30, "smileyResId":I
    move-object/from16 v0, v28

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->position:I

    move/from16 v24, v0

    .line 2796
    .local v24, "nextSmileyPos":I
    move-object/from16 v0, v28

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;->characterLength:I

    move/from16 v29, v0

    .line 2798
    .local v29, "smileyLength":I
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 2799
    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 2800
    .local v38, "textPart":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2, v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getTextWidth(Landroid/widget/TextView;Ljava/lang/String;Z)I

    move-result v39

    .line 2802
    .local v39, "textPartWidth":I
    if-eqz v39, :cond_e

    .line 2803
    new-instance v34, Landroid/graphics/Rect;

    const/16 v44, 0x0

    const/16 v45, 0x0

    add-int/lit8 v46, v39, -0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2805
    .local v34, "textBox":Landroid/graphics/Rect;
    if-eqz v14, :cond_10

    sub-int v44, v15, v39

    if-gez v44, :cond_10

    .line 2806
    const/16 v23, 0x1

    .line 2807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    sub-int v15, v44, v7

    .line 2808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    .line 2816
    :cond_c
    :goto_9
    int-to-float v0, v15

    move/from16 v44, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v38

    move/from16 v1, v44

    move/from16 v2, v45

    move-object/from16 v3, v37

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2818
    if-nez v14, :cond_11

    .line 2819
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x1

    add-int v15, v15, v44

    .line 2820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-gt v15, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v44, v44, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_e

    .line 2821
    :cond_d
    const/16 v23, 0x1

    .line 2822
    const/4 v15, 0x0

    .line 2823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    .line 2855
    .end local v34    # "textBox":Landroid/graphics/Rect;
    .end local v38    # "textPart":Ljava/lang/String;
    .end local v39    # "textPartWidth":I
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2856
    .local v27, "s":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    .line 2857
    .local v20, "m":Landroid/graphics/Matrix;
    int-to-float v0, v15

    move/from16 v44, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v20

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2858
    const/16 v44, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object/from16 v2, v44

    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2860
    add-int v22, v24, v29

    .line 2862
    if-nez v14, :cond_b

    .line 2863
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v44, v44, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_f

    .line 2864
    const/16 v23, 0x1

    .line 2865
    const/4 v15, 0x0

    .line 2866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    .line 2869
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v15, v15, v44

    goto/16 :goto_8

    .line 2810
    .end local v20    # "m":Landroid/graphics/Matrix;
    .end local v27    # "s":Landroid/graphics/Bitmap;
    .restart local v34    # "textBox":Landroid/graphics/Rect;
    .restart local v38    # "textPart":Ljava/lang/String;
    .restart local v39    # "textPartWidth":I
    :cond_10
    if-nez v14, :cond_c

    add-int v44, v15, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_c

    .line 2811
    const/16 v23, 0x1

    .line 2812
    const/4 v15, 0x0

    .line 2813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    goto/16 :goto_9

    .line 2827
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v44, v44, v39

    sub-int v15, v15, v44

    .line 2828
    if-gez v15, :cond_e

    .line 2829
    const/16 v23, 0x1

    .line 2830
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v45, v0

    sub-int v15, v44, v45

    .line 2831
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    goto/16 :goto_a

    .line 2837
    .end local v34    # "textBox":Landroid/graphics/Rect;
    .end local v38    # "textPart":Ljava/lang/String;
    .end local v39    # "textPartWidth":I
    :cond_12
    if-eqz v14, :cond_13

    .line 2838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    sub-int v15, v15, v44

    .line 2839
    if-gez v15, :cond_e

    .line 2840
    const/16 v23, 0x1

    .line 2841
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v45, v0

    sub-int v15, v44, v45

    .line 2842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    goto/16 :goto_a

    .line 2846
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v44, v44, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_e

    .line 2847
    const/16 v23, 0x1

    .line 2848
    const/4 v15, 0x0

    .line 2849
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2850
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    goto/16 :goto_a

    .line 2876
    .end local v24    # "nextSmileyPos":I
    .end local v28    # "smiley":Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;
    .end local v29    # "smileyLength":I
    .end local v30    # "smileyResId":I
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v44

    move/from16 v0, v22

    move/from16 v1, v44

    if-ge v0, v1, :cond_3

    .line 2877
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    .line 2878
    .restart local v38    # "textPart":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2, v14}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getTextWidth(Landroid/widget/TextView;Ljava/lang/String;Z)I

    move-result v39

    .line 2880
    .restart local v39    # "textPartWidth":I
    if-eqz v39, :cond_3

    .line 2881
    if-eqz v14, :cond_16

    sub-int v44, v15, v39

    if-gez v44, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-ge v15, v0, :cond_16

    .line 2882
    const/16 v23, 0x1

    .line 2883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    sub-int v15, v44, v7

    .line 2884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    .line 2892
    :cond_15
    :goto_b
    int-to-float v0, v15

    move/from16 v44, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v38

    move/from16 v1, v44

    move/from16 v2, v45

    move-object/from16 v3, v37

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2893
    if-eqz v14, :cond_17

    if-eqz v23, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v44, v0

    move/from16 v0, v44

    if-ne v15, v0, :cond_17

    .line 2894
    sub-int v15, v15, v39

    goto/16 :goto_6

    .line 2886
    :cond_16
    if-nez v14, :cond_15

    add-int v44, v15, v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaWidth:I

    move/from16 v45, v0

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_15

    if-lez v15, :cond_15

    .line 2887
    const/16 v23, 0x1

    .line 2888
    const/4 v15, 0x0

    .line 2889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int/lit8 v45, v11, 0x2

    mul-int v44, v44, v45

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v45, v0

    div-int/lit8 v45, v45, 0x2

    sub-int v43, v44, v45

    .line 2890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mSmileySize:I

    move/from16 v44, v0

    add-int v31, v31, v44

    goto :goto_b

    .line 2895
    :cond_17
    if-nez v14, :cond_3

    if-eqz v23, :cond_3

    .line 2896
    add-int v15, v15, v39

    goto/16 :goto_6

    .line 2905
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v38    # "textPart":Ljava/lang/String;
    .end local v39    # "textPartWidth":I
    :cond_18
    move/from16 v25, v15

    .line 2906
    move/from16 v26, v31

    goto/16 :goto_7

    .line 2910
    .end local v15    # "lastXPos":I
    .end local v18    # "lineEnd":I
    .end local v19    # "lineStart":I
    .end local v22    # "nextCharacterPos":I
    .end local v31    # "smileyY":I
    .end local v32    # "smileys":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Smiley;>;"
    :cond_19
    sget-object v44, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v6, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getTextLineImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v35

    .line 2911
    .local v35, "textImageCid":I
    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    move-object/from16 v44, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v44

    check-cast v44, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto/16 :goto_0
.end method

.method private insertShifter(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;III)I
    .locals 6
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "imageCid"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 2483
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertShifter(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;IIII)I

    move-result v0

    return v0
.end method

.method private insertShifter(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;IIII)I
    .locals 7
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "eventCid"    # I
    .param p3, "imageCid"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2476
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2477
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getShifter(Ljava/util/List;IIII)I

    move-result v6

    .line 2478
    .local v6, "shifterCid":I
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2479
    return v6
.end method

.method private insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;)I
    .locals 3
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 2522
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2523
    .local v0, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getText(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 2524
    .local v1, "textCid":I
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2525
    return v1
.end method

.method private insertString(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I
    .locals 12
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "masterBox"    # Landroid/graphics/Rect;
    .param p6, "textSize"    # I
    .param p7, "gravity"    # I
    .param p8, "textColor"    # I
    .param p9, "backgroundColor"    # I
    .param p10, "useMaster"    # Z

    .prologue
    .line 2496
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 2497
    invoke-virtual/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getText(Ljava/util/List;Ljava/lang/String;IILandroid/graphics/Rect;IIIIZ)I

    move-result v11

    .line 2499
    .local v11, "textCid":I
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2500
    return v11
.end method

.method private insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I
    .locals 12
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "textSize"    # I
    .param p6, "color"    # I
    .param p7, "bold"    # Z
    .param p8, "offsetY"    # I
    .param p9, "charsPerLine"    # I
    .param p10, "rtlOffset"    # I

    .prologue
    .line 2571
    if-nez p2, :cond_0

    .line 2572
    const/4 v6, -0x1

    .line 2611
    :goto_0
    return v6

    .line 2575
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 2576
    .local v4, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    move-object v3, p2

    .line 2577
    .local v3, "mText":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2578
    .local v8, "x":I
    add-int v9, p5, p8

    .line 2580
    .local v9, "y":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    invoke-static {p3, v0, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2581
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v10, 0xa0

    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 2582
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2583
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    .line 2584
    .local v7, "textPaint":Landroid/text/TextPaint;
    move/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 2585
    move/from16 v0, p5

    int-to-float v10, v0

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2586
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2587
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 2589
    invoke-direct {p0, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isRTL(Ljava/lang/String;)Z

    move-result v5

    .line 2590
    .local v5, "rTL":Z
    if-eqz v5, :cond_1

    .line 2592
    move/from16 v8, p10

    .line 2593
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2596
    :cond_1
    if-eqz p9, :cond_2

    .line 2598
    move/from16 v0, p9

    invoke-virtual {p0, p2, v0, p3, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->cutString(Ljava/lang/String;IILandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object p2

    .line 2601
    :cond_2
    if-eqz p7, :cond_3

    .line 2603
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2606
    :cond_3
    int-to-float v10, v8

    int-to-float v11, v9

    invoke-virtual {v2, p2, v10, v11, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2608
    sget-object v10, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {p1, v4, v1, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getTextLineImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v6

    .line 2609
    .local v6, "textImageCid":I
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v4, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto :goto_0
.end method

.method private insertTextImageCanvas(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZZ)I
    .locals 11
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "textSize"    # I
    .param p6, "color"    # I
    .param p7, "smileys"    # Z
    .param p8, "isMessageRTL"    # Z

    .prologue
    .line 2618
    if-nez p2, :cond_0

    .line 2619
    const/4 v5, -0x1

    .line 2662
    :goto_0
    return v5

    .line 2622
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 2623
    .local v4, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    move-object v3, p2

    .line 2624
    .local v3, "mText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2625
    .local v7, "x":I
    move/from16 v8, p5

    .line 2627
    .local v8, "y":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2628
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v9, 0xa0

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 2629
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2630
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 2631
    .local v6, "textPaint":Landroid/text/TextPaint;
    move/from16 v0, p6

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 2632
    move/from16 v0, p5

    int-to-float v9, v0

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2633
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 2635
    if-eqz p8, :cond_2

    .line 2637
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u200f"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2638
    if-nez p7, :cond_1

    .line 2639
    const/16 v7, 0xd7

    .line 2640
    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2657
    :goto_1
    int-to-float v9, v7

    int-to-float v10, v8

    invoke-virtual {v2, v3, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2659
    sget-object v9, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Color16Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    invoke-virtual {p1, v4, v1, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getTextLineImage(Ljava/util/List;Landroid/graphics/Bitmap;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v5

    .line 2660
    .local v5, "textImageCid":I
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto :goto_0

    .line 2643
    .end local v5    # "textImageCid":I
    :cond_1
    div-int/lit8 v7, p3, 0x2

    .line 2644
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 2647
    :cond_2
    if-nez p7, :cond_3

    .line 2648
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2649
    const/4 v7, 0x6

    goto :goto_1

    .line 2651
    :cond_3
    div-int/lit8 v7, p3, 0x2

    .line 2652
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1
.end method

.method private insertThreeBitImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;II)I
    .locals 9
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "imageUri"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 2514
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2515
    .local v1, "newResources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;>;"
    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;->NONE:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;->Grayscale3Bit:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;->getImage(Ljava/util/List;Ljava/lang/String;IILcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$ImageFilter;ZLcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider$TargetColorMode;)I

    move-result v8

    .line 2517
    .local v8, "imageCid":I
    new-array v0, v6, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2518
    return v8
.end method

.method private insertTitleImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IZLcom/sonymobile/smartconnect/hostapp/notification/Event;)I
    .locals 11
    .param p1, "resourceProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "bold"    # Z
    .param p5, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    .line 2530
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2531
    const/16 v3, 0xa0

    const/16 v4, 0x14

    const/16 v5, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0xa0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    .line 2537
    :goto_0
    return v0

    .line 2533
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ContactReader;->readContactPhoto(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2535
    :cond_1
    const/16 v3, 0xa8

    const/16 v4, 0x14

    const/16 v5, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0xa8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    goto :goto_0

    .line 2537
    :cond_2
    const/16 v3, 0xd0

    const/16 v4, 0x14

    const/16 v5, 0x10

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/16 v10, 0xd0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertTextImage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Ljava/lang/String;IIIIZIII)I

    move-result v0

    goto :goto_0
.end method

.method private isBitmapRendering(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1247
    const v2, 0x7fffffff

    .line 1248
    .local v2, "min":I
    const/high16 v1, -0x80000000

    .line 1251
    .local v1, "max":I
    if-nez p1, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return v4

    .line 1254
    :cond_1
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 1256
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1258
    .local v0, "codepoint":I
    if-le v0, v1, :cond_3

    .line 1259
    move v1, v0

    .line 1263
    :cond_2
    :goto_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 1260
    :cond_3
    if-ge v0, v2, :cond_2

    .line 1261
    move v2, v0

    goto :goto_2

    .line 1266
    .end local v0    # "codepoint":I
    :cond_4
    const/high16 v5, -0x80000000

    if-ne v1, v5, :cond_5

    .line 1267
    move v1, v2

    .line 1269
    :cond_5
    const v5, 0x7fffffff

    if-ne v2, v5, :cond_6

    .line 1270
    move v2, v1

    .line 1272
    :cond_6
    invoke-direct {p0, v2, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isInUnicodeRange(II)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isInUnicodeRange(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v0, 0x1

    .line 1145
    const/16 v1, 0x20

    if-lt p1, v1, :cond_1

    const/16 v1, 0x24f

    if-gt p2, v1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v0

    .line 1147
    :cond_1
    const/16 v1, 0x370

    if-lt p1, v1, :cond_2

    const/16 v1, 0x3ff

    if-le p2, v1, :cond_0

    .line 1149
    :cond_2
    const/16 v1, 0x1f00

    if-lt p1, v1, :cond_3

    const/16 v1, 0x1fff

    if-le p2, v1, :cond_0

    .line 1151
    :cond_3
    const/16 v1, 0x3000

    if-lt p1, v1, :cond_4

    const/16 v1, 0x303f

    if-le p2, v1, :cond_0

    .line 1153
    :cond_4
    const/16 v1, 0x3040

    if-lt p1, v1, :cond_5

    const/16 v1, 0x309f

    if-le p2, v1, :cond_0

    .line 1155
    :cond_5
    const/16 v1, 0x30a0

    if-lt p1, v1, :cond_6

    const/16 v1, 0x30ff

    if-le p2, v1, :cond_0

    .line 1157
    :cond_6
    const/16 v1, 0x400

    if-lt p1, v1, :cond_7

    const/16 v1, 0x52f

    if-le p2, v1, :cond_0

    .line 1160
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRTL(Ljava/lang/String;)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1184
    const/4 v2, 0x0

    .line 1185
    .local v2, "ltr_characters":I
    const/4 v5, 0x0

    .line 1186
    .local v5, "rtl_characters":I
    const/16 v4, 0x46

    .line 1187
    .local v4, "rtl2ltr_percentage_ratio":I
    const/4 v1, 0x0

    .line 1189
    .local v1, "length":I
    if-nez p1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v6

    .line 1192
    :cond_1
    const-string v7, "..."

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x3

    .line 1201
    :goto_1
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_2
    if-ge v3, v1, :cond_7

    .line 1203
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1206
    .local v0, "codepoint":I
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isSpaceCharacter(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1207
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 1208
    goto :goto_2

    .line 1198
    .end local v0    # "codepoint":I
    .end local v3    # "offset":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 1212
    .restart local v0    # "codepoint":I
    .restart local v3    # "offset":I
    :cond_3
    const/16 v7, 0x600

    if-lt v0, v7, :cond_4

    const/16 v7, 0x6ff

    if-gt v0, v7, :cond_4

    .line 1214
    add-int/lit8 v5, v5, 0x1

    .line 1233
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_2

    .line 1218
    :cond_4
    const/16 v7, 0x591

    if-lt v0, v7, :cond_5

    const/16 v7, 0x5f4

    if-gt v0, v7, :cond_5

    .line 1220
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1224
    :cond_5
    const v7, 0x103a0

    if-lt v0, v7, :cond_6

    const v7, 0x103df

    if-gt v0, v7, :cond_6

    .line 1226
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1230
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1236
    .end local v0    # "codepoint":I
    :cond_7
    add-int v7, v5, v2

    if-eqz v7, :cond_0

    .line 1239
    mul-int/lit8 v7, v5, 0x64

    add-int v8, v5, v2

    div-int/2addr v7, v8

    if-lt v7, v4, :cond_0

    .line 1240
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private isSourceColorEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "syncSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    const/4 v1, 0x0

    .line 1774
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 1787
    :goto_0
    return v0

    .line 1779
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    .line 1780
    goto :goto_0

    .line 1783
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v0

    if-eq v2, v0, :cond_4

    move v0, v1

    .line 1784
    goto :goto_0

    .line 1787
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSpaceCharacter(I)Z
    .locals 3
    .param p1, "codepoint"    # I

    .prologue
    .line 1165
    const/16 v2, 0x14

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 1173
    .local v1, "unicodeSpaces":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 1174
    aget v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1175
    const/4 v2, 0x1

    .line 1178
    :goto_1
    return v2

    .line 1173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1165
    :array_0
    .array-data 4
        0x20
        0xa0
        0x1680
        0x180e
        0x2000
        0x2001
        0x2002
        0x2003
        0x2004
        0x2005
        0x2006
        0x2007
        0x2008
        0x2009
        0x200a
        0x200b
        0x202f
        0x205f
        0x3000
        0xfeff
    .end array-data
.end method

.method private readEvent(Landroid/content/ContentValues;)Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .locals 32
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2202
    const-string v4, "_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 2203
    .local v26, "id":Ljava/lang/Long;
    const-string v4, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    .line 2204
    .local v30, "smartConnectEventId":Ljava/lang/Long;
    const-string v4, "extension_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    .line 2205
    .local v25, "extensionId":Ljava/lang/Long;
    const-string v4, "sourceId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    .line 2206
    .local v31, "sourceId":Ljava/lang/Long;
    const-string v4, "cid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2207
    .local v2, "cid":Ljava/lang/Integer;
    const-string v4, "title"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2208
    .local v14, "title":Ljava/lang/String;
    const-string v4, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2209
    .local v15, "message":Ljava/lang/String;
    const-string v4, "publishedTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 2210
    .local v28, "publishedTime":Ljava/lang/Long;
    const-string v4, "readStatus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v29

    .line 2211
    .local v29, "readStatus":Ljava/lang/Boolean;
    const-string v4, "imageUri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2212
    .local v19, "imageUriString":Ljava/lang/String;
    const-string v4, "profile_image_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2213
    .local v20, "profileImageUriString":Ljava/lang/String;
    const-string v4, "display_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2214
    .local v21, "displayName":Ljava/lang/String;
    const-string v4, "contacts_reference"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2215
    .local v22, "contactsReference":Ljava/lang/String;
    const-string v4, "personal"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v27

    .line 2216
    .local v27, "personal":Ljava/lang/Boolean;
    const-string v4, "extension_cid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 2218
    .local v24, "extensionCid":Ljava/lang/Integer;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    if-eqz v31, :cond_2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_2
    if-eqz v30, :cond_3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_4
    if-eqz v24, :cond_5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v23, 0x1

    :goto_7
    invoke-direct/range {v3 .. v23}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;-><init>(JJJJIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2229
    .local v3, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    return-object v3

    .line 2218
    .end local v3    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_1
    const-wide/16 v6, -0x1

    goto :goto_1

    :cond_2
    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_3
    const-wide/16 v10, -0x1

    goto :goto_3

    :cond_4
    const/4 v12, -0x1

    goto :goto_4

    :cond_5
    const/4 v13, -0x1

    goto :goto_5

    :cond_6
    const/16 v18, 0x0

    goto :goto_6

    :cond_7
    const/16 v23, 0x0

    goto :goto_7
.end method

.method private readEvent(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .locals 24
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 2175
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2176
    .local v4, "id":J
    const-string v2, "event_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2177
    .local v10, "smartConnectEventId":J
    const-string v2, "extension_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2178
    .local v6, "extensionId":J
    const-string v2, "sourceId"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2179
    .local v8, "sourceId":J
    const-string v2, "cid"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2180
    .local v12, "cid":I
    const-string v2, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2181
    .local v14, "title":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2182
    .local v15, "message":Ljava/lang/String;
    const-string v2, "publishedTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2183
    .local v16, "publishedTime":J
    const-string v2, "readStatus"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 2184
    .local v18, "readStatus":I
    const-string v2, "imageUri"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2185
    .local v19, "imageUriString":Ljava/lang/String;
    const-string v2, "profile_image_uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2186
    .local v20, "profileImageUriString":Ljava/lang/String;
    const-string v2, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2187
    .local v21, "displayName":Ljava/lang/String;
    const-string v2, "contacts_reference"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2188
    .local v22, "contactsReference":Ljava/lang/String;
    const-string v2, "personal"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 2189
    .local v23, "personal":I
    const-string v2, "extension_cid"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2190
    .local v13, "extensionCid":I
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    invoke-direct/range {v3 .. v23}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;-><init>(JJJJIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2193
    .local v3, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    return-object v3
.end method

.method private setExtensionColor(Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;Ljava/util/List;)V
    .locals 5
    .param p1, "extensionMessage"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    const/4 v4, 0x0

    .line 1560
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1561
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 1562
    .local v0, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->setColor(I)V

    .line 1563
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Set extension color: 0x%08x from source: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    .end local v0    # "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    :cond_0
    return-void
.end method

.method private updateEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V
    .locals 18
    .param p1, "event"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .param p2, "syncEvent"    # Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .prologue
    .line 866
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 868
    .local v14, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionCid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v3

    .line 872
    .local v3, "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v7

    .line 873
    .local v7, "messageId":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getCid()I

    move-result v6

    .line 875
    .local v6, "syncEventCid":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getExtensionCidBySourceId(J)I

    move-result v10

    .line 876
    .local v10, "extensionCid":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_1

    .line 877
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Extension CID not found for event: %d."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v4, v5

    invoke-static {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setExtensionCid(I)V

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    .line 881
    invoke-direct/range {v2 .. v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->createEventMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;

    move-result-object v9

    .line 884
    .local v9, "eventMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;
    if-eqz v9, :cond_0

    .line 886
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 887
    const-string v2, "title"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 892
    .local v13, "syncMessage":Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa0

    if-le v2, v4, :cond_3

    .line 893
    const/4 v2, 0x0

    const/16 v4, 0xa0

    invoke-virtual {v13, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 895
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 896
    .local v11, "message":Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa0

    if-le v2, v4, :cond_4

    .line 897
    const/4 v2, 0x0

    const/16 v4, 0xa0

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 899
    :cond_4
    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 900
    const-string v2, "message"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 905
    const-string v2, "contacts_reference"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getContactsReference()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 910
    const-string v2, "display_name"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 915
    const-string v2, "imageUri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getEventImageUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 920
    const-string v2, "profile_image_uri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getProfileImageUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v4

    if-eq v2, v4, :cond_a

    .line 924
    const-string v2, "readStatus"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 926
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v4

    if-eq v2, v4, :cond_b

    .line 927
    const-string v2, "personal"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isPersonal()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 929
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v16

    cmp-long v2, v4, v16

    if-eqz v2, :cond_c

    .line 930
    const-string v2, "publishedTime"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getPublishedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 933
    :cond_c
    invoke-virtual {v14}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-nez v2, :cond_d

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find any updated data in event with id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 939
    :cond_d
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v12, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 944
    .local v8, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v8, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 945
    const-string v2, "cid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v5

    invoke-virtual {v8, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 948
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addOperations(ILjava/util/ArrayList;)V

    .line 951
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto/16 :goto_0
.end method

.method private updateExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 18
    .param p1, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .param p2, "syncExtension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 1582
    const/4 v6, 0x0

    .line 1583
    .local v6, "sendToAccessory":Z
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v8

    .line 1584
    .local v8, "syncExtensionCid":I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1585
    .local v11, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v7

    .line 1586
    .local v7, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationSources()Ljava/util/List;

    move-result-object v9

    .line 1592
    .local v9, "syncSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1593
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1594
    const-string v12, "Extension %s changed id from %d to %d."

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1597
    :cond_0
    const-string v12, "extensionId"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1600
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getApiRegistrationId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getApiRegistrationId()I

    move-result v13

    if-eq v12, v13, :cond_2

    .line 1601
    const-string v12, "apiRegistrationId"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getApiRegistrationId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1604
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1607
    const-string v12, "configurationActivity"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationActivityName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1614
    const-string v12, "configurationText"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getConfigurationText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1620
    const/4 v6, 0x1

    .line 1621
    const-string v12, "extension48PxIconUri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtension48PxIconUri()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1629
    const/4 v6, 0x1

    .line 1630
    const-string v12, "extensionIconUri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUriBlackWhite()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUriBlackWhite()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1637
    const-string v12, "extensionIconUriBlackWhite"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionIconUriBlackWhite()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1644
    const-string v12, "extension_key"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1651
    const-string v12, "iconLargeUri"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppIconUri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppPackage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 1658
    const-string v12, "hostAppPackageName"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getHostAppPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 1663
    const/4 v6, 0x1

    .line 1664
    const-string v12, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 1670
    const-string v12, "packageName"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v13

    if-eq v12, v13, :cond_d

    .line 1675
    const-string v12, "controlApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getControlApiVersion()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1679
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v13

    if-eq v12, v13, :cond_e

    .line 1680
    const-string v12, "notificationApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getNotificationApiVersion()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1684
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getSensorApiVersion()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getSensorApiVersion()I

    move-result v13

    if-eq v12, v13, :cond_f

    .line 1685
    const-string v12, "sensorApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getSensorApiVersion()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1689
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v13

    if-eq v12, v13, :cond_10

    .line 1690
    const-string v12, "widgetApiVersion"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getWidgetApiVersion()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1694
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsBackKey()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsBackKey()Z

    move-result v13

    if-eq v12, v13, :cond_11

    .line 1695
    const-string v13, "controlBackIntercept"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsBackKey()Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1699
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsActiveLowPowerMode()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsActiveLowPowerMode()Z

    move-result v13

    if-eq v12, v13, :cond_12

    .line 1700
    const/4 v6, 0x1

    .line 1701
    const-string v13, "lowPowerSupport"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->supportsActiveLowPowerMode()Z

    move-result v12

    if-eqz v12, :cond_17

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1705
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getShowOnHomeScreen()Z

    move-result v13

    if-eq v12, v13, :cond_13

    .line 1706
    const/4 v6, 0x1

    .line 1711
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isSourceColorEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 1712
    const/4 v6, 0x1

    .line 1715
    :cond_14
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v12

    if-nez v12, :cond_18

    if-nez v6, :cond_18

    .line 1717
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v12

    if-eqz v12, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find any updated data in extension with id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getId()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 1762
    :cond_15
    :goto_2
    return-void

    .line 1695
    :cond_16
    const/4 v12, 0x0

    goto :goto_0

    .line 1701
    :cond_17
    const/4 v12, 0x0

    goto :goto_1

    .line 1722
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncUpdatedNotificationSources(Ljava/util/List;Ljava/util/List;)V

    .line 1727
    if-eqz v6, :cond_1b

    .line 1729
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v4

    .line 1731
    .local v4, "messageId":I
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v12

    if-lez v12, :cond_19

    .line 1733
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v5, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v12, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1736
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1737
    const-string v12, "cid=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1740
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->addOperations(ILjava/util/ArrayList;)V

    .line 1745
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v5    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_19
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v12

    if-eqz v12, :cond_1a

    const-string v12, "Updating extension %s with %d sources"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1748
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v8, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->createExtensionMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;

    move-result-object v3

    .line 1752
    .local v3, "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v12

    invoke-direct {v10, v12}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;-><init>(I)V

    .line 1753
    .local v10, "updateMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setAction(I)V

    .line 1754
    invoke-virtual {v10, v8}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setValue(I)V

    .line 1756
    const/4 v12, 0x2

    new-array v12, v12, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto/16 :goto_2

    .line 1758
    .end local v3    # "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    .end local v4    # "messageId":I
    .end local v10    # "updateMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v13, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    const-string v14, "cid=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updateNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V
    .locals 13
    .param p1, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    .param p2, "syncSource"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1943
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 1947
    :cond_1
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getCid()I

    move-result v2

    .line 1950
    .local v2, "syncSourceCid":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1952
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p2, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1953
    const-string v5, "action_1"

    invoke-virtual {p1, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    :cond_2
    invoke-virtual {p2, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1956
    const-string v5, "action_2"

    invoke-virtual {p1, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    :cond_3
    invoke-virtual {p2, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1959
    const-string v5, "action_3"

    invoke-virtual {p1, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    :cond_4
    invoke-virtual {p2, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1963
    const-string v5, "action_icon_1"

    invoke-virtual {p1, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    :cond_5
    invoke-virtual {p2, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1966
    const-string v5, "action_icon_2"

    invoke-virtual {p1, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :cond_6
    invoke-virtual {p2, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1969
    const-string v5, "action_icon_3"

    invoke-virtual {p1, v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getActionIconUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    :cond_7
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getExtensionSpecificSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getExtensionSpecificSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1974
    const-string v5, "extension_specific_id"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getExtensionSpecificSourceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :cond_8
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1979
    const-string v5, "iconUri1"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :cond_9
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon2()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1983
    const-string v5, "iconUri2"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIcon2()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    :cond_a
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIconBlackWhite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIconBlackWhite()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1987
    const-string v5, "iconUriBlackWhite"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getIconBlackWhite()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    :cond_b
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1992
    const-string v5, "name"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    :cond_c
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1996
    const-string v5, "packageName"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    :cond_d
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getTextToSpeechText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getTextToSpeechText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 2001
    const-string v5, "textToSpeech"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getTextToSpeechText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :cond_e
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getUpdateTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getUpdateTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f

    .line 2006
    const-string v5, "updateTime"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getUpdateTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2010
    :cond_f
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v6

    if-eq v5, v6, :cond_10

    .line 2011
    const-string v5, "enabled"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->isEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2014
    :cond_10
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v6

    if-eq v5, v6, :cond_11

    .line 2015
    const-string v5, "color"

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2018
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionFromSource(J)Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    move-result-object v0

    .line 2019
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v0, :cond_11

    .line 2020
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getResProvider(I)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v6

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v7

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->createExtensionMessage(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;II)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;

    move-result-object v1

    .line 2023
    .local v1, "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;-><init>(I)V

    .line 2024
    .local v3, "updateMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    invoke-virtual {v3, v12}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setAction(I)V

    .line 2025
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;->setValue(I)V

    .line 2027
    new-array v5, v12, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v1, v5, v10

    aput-object v3, v5, v11

    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2029
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "Updating extension \'%s\' after source color changed, name: %s, color: 0x%08x"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2036
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v1    # "extensionMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
    .end local v3    # "updateMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestExtension;
    :cond_11
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-nez v5, :cond_12

    .line 2038
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No updates found in notification source with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2044
    :cond_12
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;->URI:Landroid/net/Uri;

    const-string v7, "cid=?"

    new-array v8, v11, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2049
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->getSmartConnectSourceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->clearSourceFromCaches(Ljava/lang/Long;)V

    goto/16 :goto_0
.end method


# virtual methods
.method cutString(Ljava/lang/String;IILandroid/text/TextPaint;)Ljava/lang/String;
    .locals 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "destLength"    # I
    .param p3, "w"    # I
    .param p4, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 1464
    if-nez p1, :cond_0

    .line 1465
    const-string v13, ""

    .line 1529
    :goto_0
    return-object v13

    .line 1467
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1468
    .local v7, "length":I
    const/4 v8, 0x0

    .line 1469
    .local v8, "offset":I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    .line 1470
    .local v4, "codepoints":I
    const/4 v2, 0x0

    .line 1471
    .local v2, "codepoint":I
    const/4 v3, 0x0

    .line 1472
    .local v3, "codepointCounter":I
    const/4 v9, 0x0

    .line 1473
    .local v9, "startAt":I
    const-string v10, ""

    .line 1474
    .local v10, "tmpString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1475
    .local v11, "tmpStringWidth":I
    const/4 v5, 0x0

    .line 1476
    .local v5, "dotsWidth":I
    const/4 v13, 0x2

    move/from16 v0, p2

    filled-new-array {v0, v13}, [I

    move-result-object v13

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 1477
    .local v1, "characterOffsetsWidths":[[I
    const/4 v12, 0x0

    .line 1479
    .local v12, "truncated":Z
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_1

    .line 1480
    const-string v13, ""

    goto :goto_0

    .line 1482
    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p3

    if-ge v0, v13, :cond_2

    .line 1483
    const-string v13, ""

    goto :goto_0

    .line 1485
    :cond_2
    move/from16 v9, p2

    .line 1486
    const-string v13, "..."

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v5, v13

    .line 1488
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_4

    .line 1490
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1492
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1493
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v11, v13

    .line 1495
    aget-object v13, v1, v3

    const/4 v14, 0x0

    aput v8, v13, v14

    .line 1496
    aget-object v13, v1, v3

    const/4 v14, 0x1

    aput v11, v13, v14

    .line 1498
    move/from16 v0, p3

    if-le v11, v0, :cond_3

    .line 1500
    add-int/lit8 v13, v3, -0x1

    if-ltz v13, :cond_3

    .line 1501
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_3

    .line 1503
    aget-object v13, v1, v6

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int v14, p3, v5

    if-ge v13, v14, :cond_5

    .line 1505
    aget-object v13, v1, v6

    const/4 v14, 0x0

    aget v8, v13, v14

    .line 1506
    const/4 v12, 0x1

    .line 1512
    .end local v6    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1514
    if-ne v3, v9, :cond_6

    if-ge v3, v4, :cond_6

    .line 1516
    const/4 v12, 0x1

    .line 1526
    :cond_4
    if-eqz v12, :cond_7

    .line 1527
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 1501
    .restart local v6    # "i":I
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1520
    .end local v6    # "i":I
    :cond_6
    if-eq v3, v9, :cond_4

    if-nez v12, :cond_4

    .line 1523
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v8, v13

    goto :goto_1

    .line 1529
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public getAllEvents()Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2091
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 2092
    .local v12, "hash":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2094
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2095
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2096
    invoke-direct {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->readEvent(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-result-object v8

    .line 2097
    .local v8, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getExtensionId()J

    move-result-wide v10

    .line 2098
    .local v10, "extensionId":J
    new-instance v9, Ljava/util/HashSet;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2099
    .local v9, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    if-eqz v9, :cond_1

    .line 2101
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2110
    .end local v8    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v9    # "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v10    # "extensionId":J
    :catch_0
    move-exception v7

    .line 2111
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 2112
    const-string v0, "Failed while reading cursor."

    invoke-static {v0, v7}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2114
    if-eqz v6, :cond_0

    .line 2115
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2119
    :cond_0
    return-object v12

    .line 2104
    .restart local v8    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .restart local v9    # "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .restart local v10    # "extensionId":J
    :cond_1
    :try_start_2
    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2105
    .restart local v9    # "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2106
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2114
    .end local v8    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v9    # "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v10    # "extensionId":J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2114
    :cond_2
    throw v0

    :cond_3
    if-eqz v6, :cond_0

    goto :goto_1
.end method

.method protected getOfflineSourceMenu(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .locals 1
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    .line 2403
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getSourceMenu(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-result-object v0

    return-object v0
.end method

.method protected getOnlineSourceMenu(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;
    .locals 1
    .param p1, "resProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .param p2, "source"    # Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .prologue
    .line 2398
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getSourceMenu(Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;Z)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/MenuControl;

    move-result-object v0

    return-object v0
.end method

.method public onEventsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "deletedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncDeletedEvents(Ljava/util/List;)V

    .line 241
    return-void
.end method

.method public onEventsInserted(Ljava/util/List;Z)V
    .locals 0
    .param p2, "startup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "newEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncInsertedEvents(Ljava/util/List;Z)V

    .line 231
    return-void
.end method

.method public onEventsUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "updatedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncUpdatedEvents(Ljava/util/List;)V

    .line 236
    return-void
.end method

.method public onExtensionsDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncDeletedExtensions(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method public onExtensionsInserted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "insertedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncInsertedExtensions(Ljava/util/List;)V

    .line 193
    return-void
.end method

.method public onExtensionsUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "updatedExtensionsNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "updatedExtensionsOld":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncUpdatedExtensions(Ljava/util/List;Ljava/util/List;)V

    .line 199
    return-void
.end method

.method public onNotificationSourcesDeleted(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "deletedSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncDeletedNotificationSources(Ljava/util/List;)V

    .line 226
    return-void
.end method

.method public onNotificationSourcesInserted(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "insertedSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "Inserting source"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncInsertedNotificationSources(Ljava/util/List;)V

    .line 213
    return-void
.end method

.method public onNotificationSourcesUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "updatedSourcesNew":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    .local p2, "updatedSourcesOldProperties":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->syncUpdatedNotificationSources(Ljava/util/List;Ljava/util/List;)V

    .line 220
    return-void
.end method

.method public onSyncFinished()V
    .locals 0

    .prologue
    .line 2467
    return-void
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2472
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-super {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager;->reset()V

    .line 181
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOfflineMenuCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 182
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mOnlineMenuCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 184
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Extension;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$NotificationSource;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncData$Event;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method protected varargs sendMessagesWithMsgId([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 2918
    move-object v0, p1

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2919
    .local v3, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->setMessageId(I)V

    .line 2918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2921
    .end local v3    # "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->mCostanzaMessageSender:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;

    invoke-interface {v4, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;->sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 2922
    return-void
.end method

.method public syncDeletedEvents(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "deletedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 301
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 302
    .local v3, "sources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 303
    .local v0, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getEvent(J)Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-result-object v4

    .line 304
    .local v4, "syncEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    if-nez v4, :cond_1

    .line 306
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event marked for delete not found! id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSourceId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-direct {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->deleteEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V

    goto :goto_0

    .line 316
    .end local v0    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v4    # "syncEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 317
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 318
    .local v2, "sourceId":Ljava/lang/Long;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeletedEvents sync, removing sources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 321
    :cond_3
    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->clearSourceFromCaches(Ljava/lang/Long;)V

    goto :goto_1

    .line 325
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sourceId":Ljava/lang/Long;
    .end local v3    # "sources":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    return-void
.end method

.method public syncDeletedExtensions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "deletedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 390
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->deleteExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_0

    .line 395
    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public syncDeletedNotificationSources(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "deletedSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    :cond_0
    return-void

    .line 472
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 473
    .local v1, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    if-eqz v1, :cond_2

    .line 474
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->deleteNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V

    goto :goto_0
.end method

.method public syncInsertedEvents(Ljava/util/List;Z)V
    .locals 9
    .param p2, "startup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "insertedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    const/4 v8, 0x0

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, "notificationRequestSent":Z
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 253
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 254
    .local v4, "reversedInsertedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 256
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 257
    .local v1, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewCid()I

    move-result v0

    .line 258
    .local v0, "cid":I
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->setCid(I)V

    .line 260
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;)Z

    move-result v6

    .line 262
    .local v6, "success":Z
    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->isRead()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->isConnectionReadyForSynchronization()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewMessageId()I

    move-result v7

    invoke-direct {v5, v7, v8, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;-><init>(III)V

    .line 266
    .local v5, "rn":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v5, v7, v8

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->sendMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 267
    const/4 v3, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "cid":I
    .end local v1    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "reversedInsertedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    .end local v5    # "rn":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotification;
    .end local v6    # "success":Z
    :cond_1
    return-void
.end method

.method public syncInsertedExtensions(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "insertedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 336
    const-string v4, "Syncing %d inserted extensions."

    new-array v5, v6, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 339
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    const-string v2, "Installing extension, %s."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;I)V

    goto :goto_1

    .end local v0    # "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    move v2, v3

    .line 336
    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method public syncInsertedNotificationSources(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 417
    :cond_0
    return-void

    .line 412
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 413
    .local v2, "source":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getNewCid()I

    move-result v0

    .line 414
    .local v0, "cid":I
    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;->setCid(I)V

    .line 415
    invoke-direct {p0, v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->insertNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;I)V

    goto :goto_0
.end method

.method public syncUpdatedEvents(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/notification/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "updatedEvents":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/notification/Event;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    .line 283
    .local v0, "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getSmartConnectEventId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->getEvent(J)Lcom/sonymobile/smartconnect/hostapp/notification/Event;

    move-result-object v2

    .line 284
    .local v2, "syncEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    if-nez v2, :cond_1

    .line 285
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event marked for update not found! id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/notification/Event;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->updateEvent(Lcom/sonymobile/smartconnect/hostapp/notification/Event;Lcom/sonymobile/smartconnect/hostapp/notification/Event;)V

    goto :goto_0

    .line 291
    .end local v0    # "event":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "syncEvent":Lcom/sonymobile/smartconnect/hostapp/notification/Event;
    :cond_2
    return-void
.end method

.method public syncUpdatedExtensions(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "updatedExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    .local p2, "oldExtensions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 363
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 364
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 365
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 366
    .local v3, "updated":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 367
    .local v2, "old":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    .line 368
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extension marked for update not found! index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 364
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->updateExtension(Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V

    goto :goto_1

    .line 376
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "old":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    .end local v3    # "updated":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    :cond_3
    return-void
.end method

.method public syncUpdatedNotificationSources(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "updatedSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    .local p2, "oldSources":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 455
    :cond_0
    return-void

    .line 443
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 444
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 445
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 446
    .local v3, "updated":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;

    .line 447
    .local v2, "old":Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;
    if-eqz v3, :cond_2

    if-nez v2, :cond_4

    .line 448
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification source to be updated not found! index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 444
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/GeneralSyncManager;->updateNotificationSource(Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;Lcom/sonymobile/smartconnect/hostapp/costanza/NotificationSource;)V

    goto :goto_1
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;
.super Landroid/util/LruCache;
.source "ResourceProviderCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResProviderLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBufferPool:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;I)V
    .locals 1
    .param p2, "maxResProviders"    # I

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    .line 78
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 79
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->mBufferPool:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;

    .line 80
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .locals 22
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Ljava/util/WeakHashMap;

    move-result-object v5

    monitor-enter v5

    .line 85
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Ljava/util/WeakHashMap;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Ljava/util/WeakHashMap;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    monitor-exit v5

    .line 145
    :goto_0
    return-object v3

    .line 88
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    new-instance v6, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, "cidRefTracker":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;-><init>(Ljava/lang/String;)V

    .line 94
    .local v4, "resCache":Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;->addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->addObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/PersistableObserver;)V

    .line 99
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CacheFileStorage;->loadPersistedState(Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;)Z

    .line 101
    invoke-virtual {v6, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;->removeInvalidReferences(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;)V

    .line 103
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->mBufferPool:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageBufferPool;Landroid/content/Context;)V

    .line 105
    .local v2, "textResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;
    new-instance v13, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v4, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 107
    .local v13, "controlResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
    new-instance v14, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v4, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 109
    .local v14, "shifterResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;
    new-instance v15, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v4, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 111
    .local v15, "boxResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;
    new-instance v16, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 113
    .local v16, "masterResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;
    new-instance v17, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 115
    .local v17, "listItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;
    new-instance v18, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 117
    .local v18, "menuItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;
    new-instance v19, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)V

    .line 119
    .local v19, "widgetScreenResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;
    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v8, p1

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;-><init>(Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Landroid/content/Context;)V

    .line 123
    .local v7, "clockItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;
    new-instance v21, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;Ljava/lang/String;)V

    .line 125
    .local v21, "sendStatusDelegator":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 126
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 127
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 128
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 129
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 130
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 131
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 132
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 133
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;->setResourceCreateListener(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreateListener;)V

    .line 135
    new-instance v8, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-object v9, v4

    move-object v10, v6

    move-object v11, v2

    move-object v12, v2

    move-object/from16 v20, v7

    invoke-direct/range {v8 .. v20}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ImageResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;)V

    .line 141
    .local v8, "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Ljava/util/WeakHashMap;

    move-result-object v5

    monitor-enter v5

    .line 142
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;->access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache;)Ljava/util/WeakHashMap;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v8

    .line 145
    goto/16 :goto_0

    .line 88
    .end local v2    # "textResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;
    .end local v4    # "resCache":Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .end local v6    # "cidRefTracker":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .end local v7    # "clockItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;
    .end local v8    # "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .end local v13    # "controlResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
    .end local v14    # "shifterResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;
    .end local v15    # "boxResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;
    .end local v16    # "masterResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;
    .end local v17    # "listItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;
    .end local v18    # "menuItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;
    .end local v19    # "widgetScreenResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;
    .end local v21    # "sendStatusDelegator":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 143
    .restart local v2    # "textResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/TextResourceProvider;
    .restart local v4    # "resCache":Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceCache;
    .restart local v6    # "cidRefTracker":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;
    .restart local v7    # "clockItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ClockResourceProvider;
    .restart local v8    # "resProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;
    .restart local v13    # "controlResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
    .restart local v14    # "shifterResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ShifterResourceProvider;
    .restart local v15    # "boxResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;
    .restart local v16    # "masterResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/MasterResourceProvider;
    .restart local v17    # "listItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/ListItemResourceProvider;
    .restart local v18    # "menuItemResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/MenuItemResourceProvider;
    .restart local v19    # "widgetScreenResProvider":Lcom/sonymobile/smartconnect/hostapp/costanza/res/WidgetScreenResourceProvider;
    .restart local v21    # "sendStatusDelegator":Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResourceSendStatusDelegator;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/ResourceProviderCache$ResProviderLruCache;->create(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/res/CostanzaResourceProvider;

    move-result-object v0

    return-object v0
.end method

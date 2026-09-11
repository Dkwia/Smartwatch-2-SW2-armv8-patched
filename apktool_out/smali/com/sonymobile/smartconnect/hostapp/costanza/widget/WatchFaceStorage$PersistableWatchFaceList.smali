.class Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;
.super Ljava/util/ArrayList;
.source "WatchFaceStorage.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersistableWatchFaceList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
        ">;",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider$WidgetChangeListener;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2322e0af51238bf2L


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V

    return-void
.end method

.method private declared-synchronized refreshWidgets()Z
    .locals 12

    .prologue
    .line 460
    monitor-enter p0

    const/4 v0, 0x0

    .line 461
    .local v0, "changesMade":Z
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v8

    if-nez v8, :cond_1

    .line 462
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 463
    const-string v8, "WidgetProvider does not exist, widgets not updated"

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v1, v0

    .line 490
    .end local v0    # "changesMade":Z
    .local v1, "changesMade":I
    :goto_0
    monitor-exit p0

    return v1

    .line 467
    .end local v1    # "changesMade":I
    .restart local v0    # "changesMade":Z
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 468
    .local v6, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getWidgetsPositions()Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;

    .line 470
    .local v7, "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 471
    const-string v8, "Reloading widget data: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :cond_4
    invoke-virtual {v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->getWidget()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v5

    .line 475
    .local v5, "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-eqz v5, :cond_3

    .line 476
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->access$500(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;->getTag()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WidgetProvider;->getWidget(Ljava/lang/String;I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;

    move-result-object v2

    .line 478
    .local v2, "freshWidget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    if-eqz v2, :cond_5

    .line 479
    invoke-virtual {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;->setWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 460
    .end local v2    # "freshWidget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v6    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .end local v7    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 481
    .restart local v2    # "freshWidget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .restart local v6    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .restart local v7    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 482
    const-string v8, "Removing widget: %s, not found in provider"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->removeWidget(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    const/4 v0, 0x1

    goto :goto_1

    .end local v2    # "freshWidget":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "w":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/Widget;
    .end local v6    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .end local v7    # "wp":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace$WidgetPosition;
    :cond_7
    move v1, v0

    .line 490
    .restart local v1    # "changesMade":I
    goto :goto_0
.end method


# virtual methods
.method public loadPersistedState(Ljava/io/DataInputStream;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->access$400(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->addAll(Ljava/util/Collection;)Z

    .line 423
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 424
    .local v3, "objectInStream":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 426
    .local v2, "noSavedWatchFaces":I
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 433
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 434
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/EOFException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    const-string v4, "Could not load WatchFaces file"

    invoke-static {v4, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 436
    .end local v1    # "e":Ljava/io/EOFException;
    .restart local v0    # "c":I
    :catch_1
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    const-string v4, "Could not read watchFaces from stream"

    invoke-static {v4, v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 443
    if-gtz v2, :cond_2

    .line 445
    const-string v4, "WatchFaces storage empty"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 447
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->refreshWidgets()Z

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED STATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 449
    return-void

    .line 441
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    throw v4
.end method

.method public onWidgetsChanged()V
    .locals 2

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->refreshWidgets()Z

    move-result v0

    .line 496
    .local v0, "widgetsChanged":Z
    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->commit()V

    .line 499
    :cond_0
    return-void
.end method

.method public persist(Ljava/io/DataOutputStream;)V
    .locals 13
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    .line 388
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v6, "persistableWatchFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 390
    .local v8, "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v9

    if-nez v9, :cond_0

    .line 391
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v8    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_1
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v9}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getSelectedWatchFaces()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v7

    .line 395
    .local v7, "selectedWatchFaces":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    if-eqz v7, :cond_3

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, "i":I
    move-object v0, v7

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v8, v0, v3

    .line 398
    .restart local v8    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 399
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v10, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectedWatchFaceKey(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Ljava/lang/String;I)V

    .line 397
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 403
    .end local v8    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_2
    if-ge v2, v12, :cond_3

    move v1, v2

    .line 404
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v12, :cond_3

    .line 405
    iget-object v9, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v10, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$PersistableWatchFaceList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v10, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getHostAppSelectedWatchFaceKey(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;Ljava/lang/String;I)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 412
    .end local v0    # "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .end local v1    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 413
    .local v5, "objectOutStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 414
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 415
    .restart local v8    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_4

    .line 417
    .end local v8    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_4
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 418
    return-void

    .end local v5    # "objectOutStream":Ljava/io/ObjectOutputStream;
    .restart local v0    # "arr$":[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .restart local v2    # "i":I
    .local v3, "i$":I
    .restart local v4    # "len$":I
    .restart local v8    # "watchFace":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :cond_5
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2
.end method

.method public persistableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;
.super Ljava/util/ArrayList;
.source "WallpaperStorage.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersistableWallpaperList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
        ">;",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/db/Persistable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2322e0af51238bf2L


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;


# direct methods
.method private constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$1;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)V

    return-void
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
    .line 325
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    invoke-static {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getNativeWallpapers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->addAll(Ljava/util/Collection;)Z

    .line 326
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 327
    .local v3, "objectInStream":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 329
    .local v2, "mSavedWallpapers":I
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 336
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 337
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/EOFException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    const-string v4, "Could not load Wallpaper file"

    invoke-static {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 339
    .end local v0    # "e":Ljava/io/EOFException;
    .restart local v1    # "i":I
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    const-string v4, "Could not read Wallpaper from stream"

    invoke-static {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 347
    if-gtz v2, :cond_2

    .line 348
    const-string v4, "Wallpapers storage empty"

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 350
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED STATE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 351
    return-void

    .line 344
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    throw v4
.end method

.method public persist(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "outputStream"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v2, "persistableWallpapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$PersistableWallpaperList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 311
    .local v3, "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->isNative()Z

    move-result v4

    if-nez v4, :cond_0

    .line 312
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v3    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 316
    .local v1, "objectOutStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 317
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;

    .line 318
    .restart local v3    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 320
    .end local v3    # "wallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    :cond_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 321
    return-void
.end method

.method public persistableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

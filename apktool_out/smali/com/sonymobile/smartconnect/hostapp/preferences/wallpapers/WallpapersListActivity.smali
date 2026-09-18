.class public Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
.super Landroid/app/Activity;
.source "WallpapersListActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$BasicDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$ViewHolder;,
        Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;
    }
.end annotation


# static fields
.field private static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final CUSTOM_WALLPAPAER_CROP_EDIT_REQUEST_CODE:I = 0x12c

.field private static final CUSTOM_WALLPAPER_CROP_REQUEST_CODE:I = 0xc8

.field private static final CUSTOM_WALLPAPER_REQUEST_CODE:I = 0x64

.field private static final TEMP_CROP_FILENAME:Ljava/lang/String; = "temp_file.jpg"

.field private static final WALLPAPER_NUMBER:Ljava/lang/String; = "WALLPAPER_NUMBER"

.field private static final WALLPAPER_PREFERENCES:Ljava/lang/String; = "WALLPAPER_PREFERENCES"

.field private static mOrignalImageUri:Landroid/net/Uri;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAddingWallpapersEnabled:Z

.field private mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

.field private mListView:Landroid/widget/ListView;

.field private mMultipleSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

.field mTemplateMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

.field private mWallpapersToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private tempUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 447
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mTemplateMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    .line 628
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Landroid/net/Uri;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->cropSelectedWallpaper(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mAddingWallpapersEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->switchToMultiSelectMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mMultipleSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->switchToViewMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpapers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->checkIfImageExists(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private checkIfImageExists(Landroid/net/Uri;)Z
    .locals 10
    .param p1, "mUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 420
    if-nez p1, :cond_0

    move v1, v8

    .line 437
    :goto_0
    return v1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v8

    .local v2, "projection":[Ljava/lang/String;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 426
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 429
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "filePath":Ljava/lang/String;
    if-eqz v7, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v9

    .line 433
    goto :goto_0

    .end local v7    # "filePath":Ljava/lang/String;
    :cond_1
    move v1, v8

    .line 437
    goto :goto_0
.end method

.method private cropSelectedWallpaper(Landroid/net/Uri;Z)V
    .locals 5
    .param p1, "selectedWallpaper"    # Landroid/net/Uri;
    .param p2, "recrop"    # Z

    .prologue
    const/4 v4, 0x1

    .line 322
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "temp_file.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->tempUri:Landroid/net/Uri;

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "cropIntent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 333
    const-string v2, "crop"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    const-string v2, "aspectX"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v2, "aspectY"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v2, "outputX"

    const/16 v3, 0xdc

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v2, "outputY"

    const/16 v3, 0xb0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v2, "scale"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v2, "scaleUpIfNeeded"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    const-string v2, "output"

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->tempUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 341
    const-string v2, "outputFormat"

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    if-eqz p2, :cond_1

    const/16 v2, 0x12c

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    sput-object p1, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mOrignalImageUri:Landroid/net/Uri;

    .line 344
    return-void

    .line 342
    :cond_1
    const/16 v2, 0xc8

    goto :goto_1

    .line 327
    .end local v0    # "cropIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private deleteTempCropFile()V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "temp_file.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 445
    :cond_0
    return-void
.end method

.method private getCidProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 263
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCidProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v1

    return-object v1
.end method

.method private getNonNativeWallpapers()Ljava/util/List;
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
    .line 252
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v0

    .line 253
    .local v0, "storage":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getNonNativeWallpapers()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 258
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v1

    return-object v1
.end method

.method private getWallpapers()Ljava/util/List;
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
    .line 247
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v0

    .line 248
    .local v0, "storage":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->getWallpapers()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private saveCustomWallpaper(Landroid/graphics/Bitmap;)Z
    .locals 20
    .param p1, "customWallpaper"    # Landroid/graphics/Bitmap;

    .prologue
    .line 347
    const/4 v5, 0x0

    .line 348
    .local v5, "file":Ljava/io/File;
    const/4 v14, 0x0

    .line 349
    .local v14, "stream":Ljava/io/OutputStream;
    if-nez p1, :cond_0

    .line 350
    const/16 v17, 0x0

    .line 416
    :goto_0
    return v17

    .line 352
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 353
    .local v3, "bWallpaper":Landroid/graphics/Bitmap;
    const-string v17, "WALLPAPER_PREFERENCES"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 354
    .local v11, "preferences":Landroid/content/SharedPreferences;
    const-string v17, "WALLPAPER_NUMBER"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 355
    .local v16, "wallpaperNumber":I
    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/CostanzaWallpaper;

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getCidProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getNewCid()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/CostanzaWallpaper;-><init>(I)V

    .line 357
    .local v10, "mWallpaper":Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
    sget-object v17, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mOrignalImageUri:Landroid/net/Uri;

    if-eqz v17, :cond_1

    sget-object v17, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mOrignalImageUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setOriginalImageUri(Landroid/net/Uri;)V

    .line 358
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->addWallpaper(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    .line 361
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .end local v14    # "stream":Ljava/io/OutputStream;
    .local v15, "stream":Ljava/io/OutputStream;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/OutputStream;
    .restart local v14    # "stream":Ljava/io/OutputStream;
    move-object v5, v6

    .line 370
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_2
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x3c

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 371
    if-eqz v5, :cond_3

    .line 372
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setCustomWallpaperUri(Landroid/net/Uri;)V

    .line 375
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c001b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v13, v0

    .line 385
    .local v13, "previewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c001c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 388
    .local v12, "previewHeight":I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v13, v12, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 390
    .local v7, "mThumbnail":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 392
    .local v8, "mThumbnailFile":Ljava/io/File;
    :try_start_3
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->getCid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_thumbnail.jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 393
    .end local v8    # "mThumbnailFile":Ljava/io/File;
    .local v9, "mThumbnailFile":Ljava/io/File;
    :try_start_4
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v14    # "stream":Ljava/io/OutputStream;
    .restart local v15    # "stream":Ljava/io/OutputStream;
    move-object v8, v9

    .end local v9    # "mThumbnailFile":Ljava/io/File;
    .restart local v8    # "mThumbnailFile":Ljava/io/File;
    move-object v14, v15

    .line 401
    .end local v15    # "stream":Ljava/io/OutputStream;
    .restart local v14    # "stream":Ljava/io/OutputStream;
    :cond_5
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x5a

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 402
    if-eqz v8, :cond_6

    .line 403
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setThumbnailUri(Landroid/net/Uri;)V

    .line 406
    :cond_6
    :try_start_5
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 413
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->setWallpaperSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;)V

    .line 414
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "WALLPAPER_NUMBER"

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    invoke-virtual {v10}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;->setLastEditedTime()V

    .line 416
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 363
    .end local v7    # "mThumbnail":Landroid/graphics/Bitmap;
    .end local v8    # "mThumbnailFile":Ljava/io/File;
    .end local v12    # "previewHeight":I
    .end local v13    # "previewWidth":I
    :catch_0
    move-exception v4

    .line 364
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 365
    const-string v17, "FileNotFoundException: Could not save wallpaper image to file"

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 366
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 376
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 377
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 378
    const-string v17, "Could not save custom wallpaper to file"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 394
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "mThumbnail":Landroid/graphics/Bitmap;
    .restart local v8    # "mThumbnailFile":Ljava/io/File;
    .restart local v12    # "previewHeight":I
    .restart local v13    # "previewWidth":I
    :catch_2
    move-exception v4

    .line 395
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 396
    const-string v17, "FileNotFoundException: Could not save wallpaper thumbnail to file"

    invoke-static/range {v17 .. v17}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 397
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 407
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 408
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 409
    const-string v17, "Could not save custom thumbnail wallpaper to file"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 394
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "mThumbnailFile":Ljava/io/File;
    .restart local v9    # "mThumbnailFile":Ljava/io/File;
    :catch_4
    move-exception v4

    move-object v8, v9

    .end local v9    # "mThumbnailFile":Ljava/io/File;
    .restart local v8    # "mThumbnailFile":Ljava/io/File;
    goto :goto_4

    .line 363
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "mThumbnail":Landroid/graphics/Bitmap;
    .end local v8    # "mThumbnailFile":Ljava/io/File;
    .end local v12    # "previewHeight":I
    .end local v13    # "previewWidth":I
    .restart local v6    # "file":Ljava/io/File;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_3
.end method

.method private selectWallpaperFromFile()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "customWallpaper":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const v1, 0x7f0700c9

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    return-void
.end method

.method private setAdapter()V
    .locals 6

    .prologue
    .line 203
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 204
    .local v2, "position":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 205
    .local v1, "oldCount":I
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpapers()Ljava/util/List;

    move-result-object v3

    .line 206
    .local v3, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v5

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-virtual {v5, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V

    .line 207
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-direct {v0, p0, p0, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 208
    .local v0, "adapter":Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V

    .line 209
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 211
    return-void
.end method

.method private setAdapterForDeletion()V
    .locals 4

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getNonNativeWallpapers()Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v3

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-virtual {v3, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V

    .line 216
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-direct {v0, p0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 217
    .local v0, "adapter":Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V

    .line 218
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    return-void
.end method

.method private switchToMultiSelectMode(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 270
    if-le p1, v6, :cond_0

    .line 271
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 273
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 295
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 271
    goto :goto_0

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->setAdapterForDeletion()V

    .line 280
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 283
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 285
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    const v3, 0x7f0700bb

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    .line 287
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mMultipleSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    .line 288
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mMultipleSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mTemplateMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    invoke-interface {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;->setMarkCallBackListener(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;)V

    .line 289
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mMultipleSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    .line 290
    if-eq p1, v6, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 292
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mTemplateMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;->onUpdateActionMenu()V

    goto :goto_1
.end method

.method private switchToViewMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 299
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 300
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->setAdapter()V

    .line 301
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 302
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    .line 303
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mMultipleSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    invoke-interface {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;->setMarkCallBackListener(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;)V

    .line 304
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mMultipleSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    .line 305
    return-void
.end method


# virtual methods
.method public doNegativeClick()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    .line 241
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 244
    :cond_0
    return-void
.end method

.method public doPositiveClick()V
    .locals 4

    .prologue
    .line 223
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->markWallpapersForDeletion(Ljava/util/ArrayList;)Z

    move-result v0

    .line 225
    .local v0, "deleted":Z
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0003

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->setAdapter()V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    .line 233
    .end local v0    # "deleted":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 236
    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 163
    sparse-switch p1, :sswitch_data_0

    .line 198
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->deleteTempCropFile()V

    .line 199
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->invalidateOptionsMenu()V

    .line 200
    return-void

    .line 165
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 166
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->cropSelectedWallpaper(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 170
    :sswitch_1
    if-ne p2, v2, :cond_2

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp_file.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "tempPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    .local v0, "customWallpaper":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->saveCustomWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Saving custom cropped wallpaper"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Wallpaper was not saved!"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 179
    .end local v0    # "customWallpaper":Landroid/graphics/Bitmap;
    .end local v1    # "tempPath":Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_0

    .line 180
    iput-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    goto :goto_0

    .line 184
    :sswitch_2
    if-ne p2, v2, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->markWallpapersForDeletion(Ljava/util/ArrayList;)Z

    .line 186
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->removeMarkedWallpaper()V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp_file.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1    # "tempPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .restart local v0    # "customWallpaper":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->saveCustomWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Editing wallpaper completed"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 193
    .end local v0    # "customWallpaper":Landroid/graphics/Bitmap;
    .end local v1    # "tempPath":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_0

    .line 194
    iput-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mWallpapersToDelete:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 69
    .local v1, "tabletSize":Z
    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->setRequestedOrientation(I)V

    .line 73
    :cond_0
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_no_ab

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f07004d

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_no_ab

    .line 78
    const v2, 0x7f0d0038

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    .line 79
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 125
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f100006

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    const v2, 0x7f0d0084

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 127
    .local v0, "addMenuItem":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpapers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x14

    if-ge v2, v4, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mAddingWallpapersEnabled:Z

    .line 128
    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mAddingWallpapersEnabled:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 132
    :cond_0
    return v3

    .line 127
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 129
    :cond_2
    const/16 v2, 0x4b

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 140
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mAddingWallpapersEnabled:Z

    if-eqz v2, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->selectWallpaperFromFile()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700ca

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    :sswitch_2
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->switchToMultiSelectMode(I)V

    goto :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0084 -> :sswitch_1
        0x7f0d0085 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getWallpaperStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity$WallpaperAdapter;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage;->removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/WallpaperStorage$CommitObserver;)V

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->setAdapter()V

    .line 114
    return-void
.end method

.method showConfirmDeleteDialog(I)V
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->newInstance(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;

    move-result-object v0

    .line 311
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/wallpapers/WallpapersListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 312
    return-void
.end method

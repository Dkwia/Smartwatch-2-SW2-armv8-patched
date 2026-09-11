.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
.super Landroid/app/Activity;
.source "WatchFaceListActivity.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$BasicDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$ViewHolder;,
        Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;
    }
.end annotation


# static fields
.field private static final WATCH_FACE_INFO:Ljava/lang/String; = "WATCH_FACE_INFO"

.field private static final WATCH_FACE_PREFERENCES:Ljava/lang/String; = "WATCH_FACE_PREFERENCES"

.field public static mSelectedCount:I

.field private static final sAnimationFrames:[I

.field private static time:Ljava/text/DateFormat;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mAddingWatchfacesEnabled:Z

.field private mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

.field private mFrameIndex:I

.field private mListView:Landroid/widget/ListView;

.field private mMultiSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

.field mTemplateListMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

.field private mToastWrongSelect:Landroid/widget/Toast;

.field private mWatchFacesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    .line 80
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->sAnimationFrames:[I

    .line 460
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->time:Ljava/text/DateFormat;

    return-void

    .line 80
    :array_0
    .array-data 4
        0x7f020051
        0x7f020055
        0x7f020056
        0x7f020057
        0x7f020058
        0x7f020059
        0x7f02005a
        0x7f02005b
        0x7f02005c
        0x7f020052
        0x7f020053
        0x7f020054
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mFrameIndex:I

    .line 391
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$6;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mTemplateListMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    .line 571
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mToastWrongSelect:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->switchToViewMode()V

    return-void
.end method

.method static synthetic access$102(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mToastWrongSelect:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->time:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->openWatchFaceEditor(IZ)V

    return-void
.end method

.method static synthetic access$1302(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mAddingWatchfacesEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->switchToMultiSelectMode(I)V

    return-void
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->sAnimationFrames:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mFrameIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mFrameIndex:I

    return p1
.end method

.method static synthetic access$608(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mFrameIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mWatchFacesToDelete:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mWatchFacesToDelete:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mMultiSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    return-object v0
.end method

.method private createInformationDialog()V
    .locals 5

    .prologue
    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "dialoglayout":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->prepareAnimation(Landroid/view/View;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 184
    const v2, 0x7f0700d1

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$3;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 194
    return-void
.end method

.method private getCidProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 253
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCidProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v1

    return-object v1
.end method

.method private getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 248
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v1

    return-object v1
.end method

.method private getWatchFaces()Ljava/util/List;
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
    .line 242
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v0

    .line 243
    .local v0, "storage":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getWatchFaces()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private openWatchFaceEditor(IZ)V
    .locals 2
    .param p1, "uniqueId"    # I
    .param p2, "doEdit"    # Z

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, "newWatchIntent":Landroid/content/Intent;
    const-string v1, "WATCH_FACE_UNIQUE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v1, "WATCH_FACE_EDIT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->startActivity(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method private openWatchFaceEditor(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 2
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v0, "newWatchIntent":Landroid/content/Intent;
    const-string v1, "WATCH_FACE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method private prepareAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "dialoglayout"    # Landroid/view/View;

    .prologue
    .line 197
    const v1, 0x7f0d0076

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageSwitcher;

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageSwitcher;

    .line 199
    .local v0, "imageSwitcher":Landroid/widget/ImageSwitcher;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 212
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->sAnimationFrames:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    .line 214
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$5;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Landroid/widget/ImageSwitcher;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageSwitcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    return-void
.end method

.method private setAdapter()V
    .locals 6

    .prologue
    .line 228
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 229
    .local v2, "position":I
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 230
    .local v1, "oldCount":I
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaces()Ljava/util/List;

    move-result-object v3

    .line 231
    .local v3, "watchFaces":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v5

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    invoke-virtual {v5, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;)V

    .line 232
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    invoke-direct {v0, p0, p0, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;Landroid/app/Activity;Ljava/util/List;)V

    .line 233
    .local v0, "adapter":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->addCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;)V

    .line 234
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 236
    return-void
.end method

.method private switchToMultiSelectMode(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 321
    if-le p1, v6, :cond_0

    .line 322
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 324
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 344
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 322
    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 330
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 332
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 334
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    const v3, 0x7f0700bb

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    .line 336
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mData:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallbackImpl;-><init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/preferences/menu/SelectionData;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mMultiSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    .line 337
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mMultiSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mTemplateListMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    invoke-interface {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;->setMarkCallBackListener(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;)V

    .line 338
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mMultiSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    .line 339
    if-eq p1, v6, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 341
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 342
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mTemplateListMarkableListener:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;->onUpdateActionMenu()V

    goto :goto_1
.end method

.method private switchToViewMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 348
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 349
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->setAdapter()V

    .line 350
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 351
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    .line 352
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mMultiSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    invoke-interface {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;->setMarkCallBackListener(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;)V

    .line 353
    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mMultiSelectionModeCallback:Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;

    .line 354
    return-void
.end method


# virtual methods
.method public doNegativeClick()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mWatchFacesToDelete:Ljava/util/ArrayList;

    .line 384
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 387
    :cond_0
    return-void
.end method

.method public doPositiveClick()V
    .locals 4

    .prologue
    .line 365
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mWatchFacesToDelete:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mWatchFacesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->markWatchFacesForDeletion(Ljava/util/ArrayList;)Z

    move-result v0

    .line 367
    .local v0, "deleted":Z
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0001

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mWatchFacesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->setAdapter()V

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mWatchFacesToDelete:Ljava/util/ArrayList;

    .line 375
    .end local v0    # "deleted":Z
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 379
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 100
    .local v2, "tabletSize":Z
    if-nez v2, :cond_0

    .line 102
    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->setRequestedOrientation(I)V

    .line 104
    :cond_0
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 108
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    const v3, 0x7f07008b

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 110
    const v3, 0x7f0d003c

    invoke-virtual {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    .line 111
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 156
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getSelectedWatchFaces()[Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v3

    array-length v3, v3

    sput v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    .line 158
    const-string v3, "WATCH_FACE_PREFERENCES"

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getApplicationContext()Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 161
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "WATCH_FACE_INFO"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->createInformationDialog()V

    .line 164
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 258
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 259
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f100008

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 260
    const v2, 0x7f0d0088

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 261
    .local v0, "addMenuItem":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0x13

    if-ge v2, v4, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mAddingWatchfacesEnabled:Z

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mAddingWatchfacesEnabled:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    :cond_0
    return v3

    .line 261
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 263
    :cond_2
    const/16 v2, 0x4b

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 278
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mAddingWatchfacesEnabled:Z

    if-eqz v2, :cond_0

    .line 284
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getCidProvider()Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;->getNewCid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/CostanzaWatchFace;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->openWatchFaceEditor(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070099

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 292
    :sswitch_2
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->switchToMultiSelectMode(I)V

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0088 -> :sswitch_1
        0x7f0d0089 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$WatchFaceAdapter;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->removeCommitObserver(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$CommitObserver;)V

    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->setAdapter()V

    .line 170
    return-void
.end method

.method showConfirmDeleteDialog(I)V
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0e0000

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->newInstance(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;

    move-result-object v0

    .line 360
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 361
    return-void
.end method

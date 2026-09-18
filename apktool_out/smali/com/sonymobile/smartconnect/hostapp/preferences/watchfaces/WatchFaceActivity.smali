.class public Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;
.super Landroid/app/Activity;
.source "WatchFaceActivity.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog$EditNameDialogListener;
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment$BasicDialogListener;
.implements Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView$WatchFaceChangeListener;


# static fields
.field protected static final NUMBER_OF_LEVELS:I = 0x4

.field public static final WATCH_FACE:Ljava/lang/String; = "WATCH_FACE"

.field public static final WATCH_FACE_EDIT:Ljava/lang/String; = "WATCH_FACE_EDIT"

.field private static final WATCH_FACE_NUMBER:Ljava/lang/String; = "WATCH_FACE_NUMBER"

.field private static final WATCH_FACE_PREFERENCES:Ljava/lang/String; = "WATCH_FACE_PREFERENCES"

.field public static final WATCH_FACE_UNIQUE_ID:Ljava/lang/String; = "WATCH_FACE_UNIQUE_ID"

.field private static final WATCH_FACE_VIEW_DELAY:I = 0xc8

.field private static mCurrentSelectedWatchFace:I


# instance fields
.field private doEditWatchFace:Z

.field private mDeleteText:Landroid/widget/TextView;

.field private mPickedUpWidgetHandled:Ljava/lang/Boolean;

.field private mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

.field private mTrashLayout:Landroid/view/View;

.field private final mTrashOnHoverListener:Landroid/view/View$OnDragListener;

.field mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

.field private mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

.field private mWatchImage:Landroid/widget/ImageView;

.field private preferences:Landroid/content/SharedPreferences;

.field private watchFaceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mCurrentSelectedWatchFace:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->doEditWatchFace:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 327
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    .line 375
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mTrashOnHoverListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->hideTrash()V

    return-void
.end method

.method static synthetic access$202(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mDeleteText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mTrashLayout:Landroid/view/View;

    return-object v0
.end method

.method private clearWatchFace()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->clearWatchFace()V

    .line 307
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->invalidate()V

    .line 308
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->onUpdated(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 311
    :cond_0
    return-void
.end method

.method private createNewCustomWatchFace()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070094

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->watchFaceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setName(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->addTempWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 187
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setTempWatchFaceFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 188
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WATCH_FACE_NUMBER"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->watchFaceNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->watchFaceNumber:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WATCH_FACE_UNIQUE_ID"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method private deleteUneditedWatchface()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getLastEditedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->markTempWatchFaceForUninstall()V

    .line 249
    :cond_0
    return-void
.end method

.method private dropWidget(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x0

    .line 464
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .local v2, "view":Landroid/view/View;
    move-object v1, p1

    .line 465
    check-cast v1, Landroid/view/ViewGroup;

    .line 467
    .local v1, "to":Landroid/view/ViewGroup;
    instance-of v4, v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    if-eqz v4, :cond_2

    instance-of v4, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    if-eqz v4, :cond_2

    move-object v3, v1

    .line 468
    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .local v3, "watchfaceView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;
    move-object v4, v2

    .line 469
    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;FFZ)Z

    move-result v0

    .line 470
    .local v0, "dropped":Z
    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 479
    .end local v0    # "dropped":Z
    .end local v3    # "watchfaceView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;
    :cond_0
    :goto_0
    return-void

    .line 474
    .restart local v0    # "dropped":Z
    .restart local v3    # "watchfaceView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;
    :cond_1
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 476
    .end local v0    # "dropped":Z
    .end local v3    # "watchfaceView":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;
    :cond_2
    instance-of v4, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private dropWidgetBack(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/DragEvent;

    .prologue
    .line 456
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 457
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    if-eqz v1, :cond_0

    .line 458
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    move-object v1, v0

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    invoke-virtual {v2, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->dropPickedUpWidgetBack(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Z

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :cond_0
    return-void
.end method

.method private getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 194
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v1

    return-object v1
.end method

.method private hideTrash()V
    .locals 3

    .prologue
    .line 433
    const v2, 0x7f0d0036

    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 434
    .local v1, "trashLayout":Landroid/view/View;
    const v2, 0x7f040001

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 436
    .local v0, "hyperspaceJumpAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$4;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 451
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 453
    return-void
.end method

.method private showEditNameDialog()V
    .locals 3

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 315
    .local v1, "fm":Landroid/app/FragmentManager;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->newInstance(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;

    move-result-object v0

    .line 317
    .local v0, "editNameDialog":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;
    const-string v2, "fragment_edit_name"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/EditNameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private showTrash()V
    .locals 2

    .prologue
    .line 407
    const/high16 v1, 0x7f040000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 410
    .local v0, "hyperspaceJumpAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 425
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mTrashLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 427
    return-void
.end method


# virtual methods
.method public addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Z
    .locals 1
    .param p1, "widgetView"    # Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->addWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;)Z

    move-result v0

    .line 485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public doPositiveClick()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->clearWatchFace()V

    .line 295
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->deleteUneditedWatchface()V

    .line 238
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 239
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0d0035

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 80
    .local v3, "tabletSize":Z
    if-nez v3, :cond_0

    .line 82
    invoke-virtual {p0, v8}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->setRequestedOrientation(I)V

    .line 84
    :cond_0
    const v6, 0x7f030005

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 87
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 89
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    :cond_1
    const v6, 0x7f0d0034

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    .line 93
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v6, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 95
    const v6, 0x7f0d0036

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mTrashLayout:Landroid/view/View;

    .line 96
    const v6, 0x7f0d0037

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mDeleteText:Landroid/widget/TextView;

    .line 97
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mTrashLayout:Landroid/view/View;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mTrashOnHoverListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getWatchFaceStorage()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    .line 101
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "WATCH_FACE_UNIQUE_ID"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 102
    .local v5, "watchFaceId":I
    if-eq v5, v9, :cond_2

    .line 103
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v6, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getWatchFace(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 104
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v6, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->addTempWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "WATCH_FACE_EDIT"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->doEditWatchFace:Z

    .line 107
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-nez v6, :cond_3

    .line 108
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getCurrentSelectedWatchFace()I

    move-result v6

    sput v6, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mCurrentSelectedWatchFace:I

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "WATCH_FACE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .line 110
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-eqz v6, :cond_3

    .line 111
    const-string v6, "WATCH_FACE_PREFERENCES"

    invoke-virtual {p0, v6, v10}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->preferences:Landroid/content/SharedPreferences;

    .line 113
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "WATCH_FACE_NUMBER"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->watchFaceNumber:I

    .line 115
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->createNewCustomWatchFace()V

    .line 120
    :cond_3
    const v6, 0x7f0d003b

    invoke-virtual {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchImage:Landroid/widget/ImageView;

    .line 121
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 122
    .local v4, "watchColour":I
    const v2, 0x7f02009c

    .line 123
    .local v2, "layout":I
    packed-switch v4, :pswitch_data_0

    .line 142
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 145
    .local v1, "currentFragment":Landroid/app/Fragment;
    if-nez v1, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;

    invoke-direct {v7}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/SelectFragment;-><init>()V

    invoke-virtual {v6, v11, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 152
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    new-instance v7, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;

    invoke-direct {v7, p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 165
    return-void

    .line 125
    .end local v1    # "currentFragment":Landroid/app/Fragment;
    :pswitch_0
    const v2, 0x7f02009c

    .line 126
    goto :goto_0

    .line 128
    :pswitch_1
    const v2, 0x7f0200ad

    .line 129
    goto :goto_0

    .line 131
    :pswitch_2
    const v2, 0x7f02009c

    .line 132
    goto :goto_0

    .line 134
    :pswitch_3
    const v2, 0x7f0200ae

    .line 135
    goto :goto_0

    .line 137
    :pswitch_4
    const v2, 0x7f0200af

    .line 138
    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 254
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/DragEvent;

    .prologue
    const/4 v5, 0x1

    .line 331
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->dropWidget(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 333
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    .line 372
    :cond_0
    :goto_0
    return v5

    .line 335
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 337
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 338
    const-string v3, "Exited, end hover"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 339
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->endHover()V

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 341
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .line 343
    .local v1, "view":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v3, v1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->hover(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Landroid/view/DragEvent;)V

    goto :goto_0

    .line 345
    .end local v1    # "view":Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 346
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    .line 347
    .local v2, "widgetView":Ljava/lang/Object;
    instance-of v3, v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 348
    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    if-eqz v3, :cond_4

    move-object v3, v2

    .line 350
    check-cast v3, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;

    .end local v2    # "widgetView":Ljava/lang/Object;
    invoke-virtual {v3, v2, v5}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->removeWidget(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WidgetView;Z)Z

    move-result v0

    .line 353
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 355
    const-string v3, "Started success in watchface"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 356
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    .line 357
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->showTrash()V

    goto :goto_0

    .line 364
    .end local v0    # "handled":Z
    :cond_5
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 365
    const-string v3, "Ended in watchface"

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 366
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->dropWidgetBack(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 369
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mPickedUpWidgetHandled:Ljava/lang/Boolean;

    .line 370
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->endHover()V

    goto/16 :goto_0
.end method

.method public onFinishEditDialog(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputText"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->getWatchFace()Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setName(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_no_ab

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_no_ab
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 268
    :sswitch_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->deleteUneditedWatchface()V

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->finish()V

    goto :goto_0

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->showEditNameDialog()V

    goto :goto_0

    .line 278
    :sswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->showConfirmClearDialog()V

    goto :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0086 -> :sswitch_1
        0x7f0d0087 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 199
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->onPause()V

    .line 203
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->updatePreview()V

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getLastEditedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 207
    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->doEditWatchFace:Z

    if-nez v2, :cond_3

    .line 208
    sget v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    sget v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mCurrentSelectedWatchFace:I

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getWatchFace(I)Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    move-result-object v1

    .line 211
    .local v1, "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "wf":Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    :goto_0
    sget v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->mSelectedCount:I

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getCid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setCurrentSelectedWatchFace(I)V

    .line 220
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->addWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 221
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->setWatchFaceSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 226
    :goto_1
    const v2, 0x7f070097

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 230
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 231
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentWatchFace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mCurrentSelectedWatchFace:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->editWatchFaceSelectionFromHostAppUi(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFaceView:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/view/WatchFaceView;->setWatchFace(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 172
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 173
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mWatchFace:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    const-string v1, "Can\'t start WatchFace activity without a watchface, returning"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->finish()V

    goto :goto_0
.end method

.method public onUpdated(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V
    .locals 3
    .param p1, "watchFace"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d0035

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 492
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    if-eqz v1, :cond_0

    .line 493
    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->updateWidgetValidity(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)V

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->mStorage:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->temporaryCommit()V

    .line 498
    return-void
.end method

.method showConfirmClearDialog()V
    .locals 3

    .prologue
    .line 286
    const v1, 0x7f070095

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;->newInstance(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/BasicDialogFragment;

    move-result-object v0

    .line 288
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 289
    return-void
.end method

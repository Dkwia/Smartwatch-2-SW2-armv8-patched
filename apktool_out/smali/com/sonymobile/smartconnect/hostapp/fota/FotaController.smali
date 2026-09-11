.class public Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
.super Ljava/lang/Object;
.source "FotaController.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$5;,
        Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;,
        Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;,
        Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
    }
.end annotation


# static fields
.field private static final FORCE_START_FOTA_DELAY:J = 0x2710L

.field private static final LEGACY_FOTA_RESPONSE_ERROR_VALUE:I = -0x1

.field private static final MAX_AUTOMATIC_FOTA_ATTEMPTS:I = 0x3


# instance fields
.field private mCommunicationListeningRegistered:Z

.field private final mContext:Landroid/content/Context;

.field private mDebugUseAlternativeFirmware:Z

.field private mFileDownloadListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

.field private final mFirmwareVersion:Ljava/lang/String;

.field private mFotaAttempts:I

.field private final mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private mState:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field private mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->IDLE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mState:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 93
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mCommunicationListeningRegistered:Z

    .line 119
    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mDebugUseAlternativeFirmware:Z

    .line 123
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mContext:Landroid/content/Context;

    .line 124
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->readEmbeddedFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFirmwareVersion:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mDebugUseAlternativeFirmware:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->notifyFotaDownloadProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->downloadFotaFiles(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isAutoFotaEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->performAutomaticFota()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->notifyFotaFailed()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    return-object v0
.end method

.method public static compareFirmware(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "firmwareA"    # Ljava/lang/String;
    .param p1, "firmwareB"    # Ljava/lang/String;

    .prologue
    .line 828
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 829
    :cond_0
    const/4 v11, -0x1

    .line 913
    :goto_0
    return v11

    .line 836
    :cond_1
    const-string v11, "1.0.B.0.0"

    invoke-virtual {p0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 837
    const-string p0, "1.0.B.0.3"

    .line 839
    :cond_2
    const-string v11, "1.0.B.0.0"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 840
    const-string p1, "1.0.B.0.3"

    .line 845
    :cond_3
    const-string v3, "[a-zA-Z]+"

    .line 846
    .local v3, "hardwarePattern":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {p0, v3, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 847
    const-string v11, ""

    invoke-virtual {p1, v3, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 850
    const-string v8, "[\\.]"

    .line 851
    .local v8, "numberSplitPattern":Ljava/lang/String;
    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 852
    .local v9, "numbersA":[Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 858
    .local v10, "numbersB":[Ljava/lang/String;
    array-length v11, v9

    array-length v12, v10

    if-ge v11, v12, :cond_4

    .line 859
    const/4 v11, -0x1

    goto :goto_0

    .line 860
    :cond_4
    array-length v11, v9

    array-length v12, v10

    if-le v11, v12, :cond_5

    .line 861
    const/4 v11, 0x1

    goto :goto_0

    .line 864
    :cond_5
    array-length v5, v9

    .line 867
    .local v5, "nNumbers":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_11

    .line 868
    const/high16 v6, -0x80000000

    .line 869
    .local v6, "numA":I
    const/high16 v7, -0x80000000

    .line 872
    .local v7, "numB":I
    aget-object v11, v9, v4

    if-eqz v11, :cond_7

    aget-object v11, v9, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v0, 0x1

    .line 873
    .local v0, "aHasNumber":Z
    :goto_2
    aget-object v11, v10, v4

    if-eqz v11, :cond_8

    aget-object v11, v10, v4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    const/4 v1, 0x1

    .line 876
    .local v1, "bHasNumber":Z
    :goto_3
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    .line 867
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 872
    .end local v0    # "aHasNumber":Z
    .end local v1    # "bHasNumber":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 873
    .restart local v0    # "aHasNumber":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 881
    .restart local v1    # "bHasNumber":Z
    :cond_9
    if-eqz v0, :cond_a

    .line 883
    :try_start_0
    aget-object v11, v9, v4

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 888
    :cond_a
    :goto_4
    if-eqz v1, :cond_b

    .line 890
    :try_start_1
    aget-object v11, v10, v4

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 896
    :cond_b
    :goto_5
    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    .line 897
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "Firmwares use different version format!"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 898
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 884
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    goto :goto_4

    .line 891
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 892
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_5

    .line 899
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    .line 900
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v11, "Firmwares use different version format!"

    invoke-static {v11}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 901
    :cond_e
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 905
    :cond_f
    if-ge v6, v7, :cond_10

    .line 906
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 907
    :cond_10
    if-le v6, v7, :cond_6

    .line 908
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 913
    .end local v0    # "aHasNumber":Z
    .end local v1    # "bHasNumber":Z
    .end local v6    # "numA":I
    .end local v7    # "numB":I
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private declared-synchronized downloadFotaFiles(Z)V
    .locals 5
    .param p1, "useAlternativeFirmware"    # Z

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->DOWNLOADING:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    .line 660
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FileDownloadListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFileDownloadListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    .line 662
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    const v1, 0x7f060001

    const/high16 v2, 0x7f060000

    const v3, 0x7f060003

    iget-object v4, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFileDownloadListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->syncFotaFiles(IIILcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V

    .line 664
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->notifyFotaDownloadStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private forceFotaDownloadDelayed()V
    .locals 4

    .prologue
    .line 407
    const-string v1, "Force fota delayed called"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 408
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 409
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    return-void
.end method

.method private getCommunicationManager(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 965
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 966
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
    .locals 1

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mState:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAutoFotaEnabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 606
    const/4 v1, 0x1

    .line 608
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 609
    .local v2, "flags":I
    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_0

    .line 610
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mContext:Landroid/content/Context;

    const-string v6, "DebugPreferences"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 614
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "DISABLE_AUTOMATIC_FOTA"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 618
    .local v0, "disabled":Z
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 621
    .end local v0    # "disabled":Z
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "disabled":Z
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move v1, v4

    .line 618
    goto :goto_0
.end method

.method public static isFotaPossible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "oldVersion"    # Ljava/lang/String;
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 927
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v3

    .line 937
    :cond_1
    const-string v1, "[^a-zA-Z]+"

    .line 938
    .local v1, "nonHardwarePattern":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "oldHardware":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "newHardware":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 944
    const/4 v3, 0x1

    goto :goto_0

    .line 955
    :cond_2
    const-string v4, "1.0.A.0.2"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 957
    const-string v3, "B"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method private declared-synchronized notifyFotaDownloadDone()V
    .locals 3

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;

    .line 274
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;->onDownloadDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 273
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 276
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyFotaDownloadProgress(I)V
    .locals 3
    .param p1, "promille"    # I

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;

    .line 265
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;->onDownloadProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 267
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyFotaDownloadStarted()V
    .locals 3

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;

    .line 256
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;->onDownloadStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 258
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyFotaFailed()V
    .locals 3

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;

    .line 292
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;->onFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 291
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 294
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyFotaFlashStarted()V
    .locals 3

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;

    .line 283
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;->onFlashStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 282
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 285
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private onFotaCompleteResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V
    .locals 2
    .param p1, "response"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_COMPLETE_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    if-eq v0, v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 548
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled FOTA Complete response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    goto :goto_0

    .line 514
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->requestReset()V

    .line 515
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->notifyFotaDownloadDone()V

    goto :goto_0

    .line 520
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FOTA transfer failed! Retrying from scratch next time!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->abort()V

    .line 525
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->resetFota(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;)V

    goto :goto_0

    .line 543
    :pswitch_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Unexpected VALUE_BATTERY_LEVEL_LOW FOTA Complete response!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 544
    :cond_3
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->requestReset()V

    .line 545
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->notifyFotaDownloadDone()V

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onFotaResetResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V
    .locals 2
    .param p1, "response"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;

    .prologue
    .line 558
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFotaResetResponse(). value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_RESET_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    if-eq v0, v1, :cond_2

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 563
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 596
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled FOTA Reset response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    goto :goto_0

    .line 566
    :pswitch_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->IDLE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    .line 567
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->notifyFotaFlashStarted()V

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FOTA reset failed! Retrying from scratch next time!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 576
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->abort()V

    .line 577
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->resetFota(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;)V

    goto :goto_0

    .line 592
    :pswitch_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Reset waiting for battery OK indication."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 593
    :cond_4
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_RESET_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onFotaStartResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V
    .locals 2
    .param p1, "response"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    if-eq v0, v1, :cond_1

    .line 458
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "onFotaStartResponse: We just got a ResponseFota but we are not waiting for Start response, ignoring message from accessory"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 498
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled FOTA Start response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    goto :goto_0

    .line 466
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mDebugUseAlternativeFirmware:Z

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->downloadFotaFiles(Z)V

    goto :goto_0

    .line 471
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FOTA start failed! Retrying from scratch next time!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 475
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->abort()V

    .line 476
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->resetFota(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$ResetListener;)V

    goto :goto_0

    .line 493
    :pswitch_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    const-string v0, "onFotaStartResponse: We just got a ResponseFota, battery low, will wait for battery update from watch."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 495
    :cond_3
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    goto :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performAutomaticFota()Z
    .locals 2

    .prologue
    .line 340
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaAttempts:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 341
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaAttempts:I

    .line 342
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->performFota()V

    .line 343
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readEmbeddedFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 696
    if-nez p1, :cond_1

    .line 697
    const/4 v15, 0x0

    .line 788
    :cond_0
    :goto_0
    return-object v15

    .line 700
    :cond_1
    const/4 v15, 0x0

    .line 702
    .local v15, "version":Ljava/lang/String;
    const/16 v5, 0x200

    .line 703
    .local v5, "VERSION_OFFSET":I
    const/16 v4, 0x17

    .line 705
    .local v4, "VERSION_MAX_LENGTH":I
    const/4 v12, 0x0

    .line 707
    .local v12, "fwData":[B
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f060000

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    .line 708
    .local v14, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 709
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 711
    .local v10, "dos":Ljava/io/DataOutputStream;
    const/16 v19, 0x17

    move/from16 v0, v19

    new-array v9, v0, [B

    .line 713
    .local v9, "data":[B
    const/4 v8, 0x0

    .line 718
    .local v8, "count":I
    const/16 v7, 0x200

    .line 720
    .local v7, "bytesLeftToRead":I
    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x17

    :try_start_0
    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v9, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 721
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_3

    .line 722
    sub-int/2addr v7, v8

    .line 724
    :cond_3
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    if-gtz v7, :cond_2

    .line 727
    :cond_4
    const/16 v7, 0x17

    .line 729
    :cond_5
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 730
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_6

    .line 731
    sub-int/2addr v7, v8

    .line 732
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v9, v0, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 734
    :cond_6
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_7

    if-gtz v7, :cond_5

    .line 737
    :cond_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 738
    array-length v0, v12

    move/from16 v18, v0

    .line 739
    .local v18, "versionLength":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v13, v0, :cond_9

    .line 740
    aget-byte v19, v12, v13

    if-nez v19, :cond_8

    .line 741
    move/from16 v18, v13

    .line 739
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 744
    :cond_9
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 745
    .local v17, "versionData":[B
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    new-instance v16, Ljava/lang/String;

    const-string v19, "US-ASCII"

    invoke-static/range {v19 .. v19}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    .end local v15    # "version":Ljava/lang/String;
    .local v16, "version":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 758
    :try_start_1
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 766
    :cond_a
    :goto_2
    if-eqz v6, :cond_b

    .line 768
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 776
    :cond_b
    :goto_3
    if-eqz v14, :cond_c

    .line 778
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    :cond_c
    :goto_4
    move-object/from16 v15, v16

    .line 786
    .end local v16    # "version":Ljava/lang/String;
    .restart local v15    # "version":Ljava/lang/String;
    goto/16 :goto_0

    .line 749
    .end local v13    # "i":I
    .end local v17    # "versionData":[B
    .end local v18    # "versionLength":I
    :catch_0
    move-exception v11

    .line 750
    .local v11, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 751
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 752
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to read firmware! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 756
    :cond_d
    if-eqz v10, :cond_e

    .line 758
    :try_start_5
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 766
    :cond_e
    :goto_5
    if-eqz v6, :cond_f

    .line 768
    :try_start_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 776
    :cond_f
    :goto_6
    if-eqz v14, :cond_0

    .line 778
    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 779
    :catch_1
    move-exception v11

    .line 780
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 781
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 782
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to close input stream! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 756
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    if-eqz v10, :cond_10

    .line 758
    :try_start_8
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 766
    :cond_10
    :goto_7
    if-eqz v6, :cond_11

    .line 768
    :try_start_9
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 776
    :cond_11
    :goto_8
    if-eqz v14, :cond_12

    .line 778
    :try_start_a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 756
    :cond_12
    :goto_9
    throw v19

    .line 759
    :catch_2
    move-exception v11

    .line 760
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 761
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 762
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to close output stream! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_7

    .line 769
    .end local v11    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 770
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 771
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 772
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to close output stream! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_8

    .line 779
    .end local v11    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 780
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 781
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 782
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to close input stream! "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto :goto_9

    .line 759
    :catch_5
    move-exception v11

    .line 760
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 761
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 762
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to close output stream! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 769
    :catch_6
    move-exception v11

    .line 770
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 771
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 772
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to close output stream! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_6

    .line 759
    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "version":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v16    # "version":Ljava/lang/String;
    .restart local v17    # "versionData":[B
    .restart local v18    # "versionLength":I
    :catch_7
    move-exception v11

    .line 760
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 761
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 762
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to close output stream! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 769
    .end local v11    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v11

    .line 770
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 771
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 772
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to close output stream! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 779
    .end local v11    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v11

    .line 780
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->getInstance()Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/sonymobile/smartconnect/hostapp/analytics/Analytics;->sendCaughtException(Ljava/lang/Exception;)V

    .line 781
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 782
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to close input stream! "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    goto/16 :goto_4
.end method

.method private requestReset()V
    .locals 4

    .prologue
    .line 673
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;-><init>(I)V

    .line 674
    .local v0, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setAction(I)V

    .line 675
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->getFotaFirmwareInfoCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setValue(I)V

    .line 677
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_RESET_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    .line 678
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 679
    return-void
.end method

.method private declared-synchronized setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V
    .locals 1
    .param p1, "state"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mState:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 2

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFileDownloadListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFileDownloadListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->removeSyncListener(Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;)V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFileDownloadListener:Lcom/sonymobile/smartconnect/hostapp/costanza/db/SyncManager$SyncListener;

    .line 328
    :cond_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->IDLE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFotaListener(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public debugPerformFota(Z)V
    .locals 4
    .param p1, "useAlternativeFirmware"    # Z

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    if-nez v1, :cond_1

    .line 364
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const-string v1, "performFota(): FotaController.setSyncManager() not called!"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "Peform fota: Ignored, we were already downloading"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 378
    :cond_2
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mDebugUseAlternativeFirmware:Z

    .line 379
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    .line 382
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;-><init>(I)V

    .line 383
    .local v0, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;
    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setAction(I)V

    .line 384
    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->setValue(I)V

    .line 385
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending fota action start using message id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFota;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 389
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 396
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->forceFotaDownloadDelayed()V

    goto :goto_0
.end method

.method public getEmbeddedFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isDownloading()Z
    .locals 2

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$5;->$SwitchMap$com$sonymobile$smartconnect$hostapp$fota$FotaController$FotaState:[I

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 312
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isFirmwareR1(Ljava/lang/String;)Z
    .locals 5
    .param p1, "firmware"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 798
    if-nez p1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return v2

    .line 802
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 803
    .local v0, "numberEnd":I
    if-lt v0, v1, :cond_0

    .line 809
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onConnect()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaAttempts:I

    .line 179
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "Disconnected while in fota, abort and retry later"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->abort()V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;->clearFotaFromPendingOperations()V

    .line 208
    :cond_1
    return-void
.end method

.method public onFotaBatteryLevelIndication(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;

    .prologue
    .line 628
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$5;->$SwitchMap$com$sonymobile$smartconnect$hostapp$fota$FotaController$FotaState:[I

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 646
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected battery level indication in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getState()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 630
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got start battery level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->getPercentage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 633
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->getPercentage()I

    move-result v0

    if-nez v0, :cond_0

    .line 634
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mDebugUseAlternativeFirmware:Z

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->downloadFotaFiles(Z)V

    goto :goto_0

    .line 638
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got reset battery level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->getPercentage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 641
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationBatteryLevel;->getPercentage()I

    move-result v0

    if-nez v0, :cond_0

    .line 642
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->requestReset()V

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFotaResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V
    .locals 2
    .param p1, "response"    # Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;

    .prologue
    .line 436
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 447
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled FOTA response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 438
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onFotaStartResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V

    goto :goto_0

    .line 441
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onFotaCompleteResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V

    goto :goto_0

    .line 444
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onFotaResetResponse(Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseFota;)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onNewFirmwareAccessoryConnected()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onOldFirmwareAccessoryConnected()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isAutoFotaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->performAutomaticFota()Z

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Old firmware and automatic FOTA is disabled!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public performFota()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->debugPerformFota(Z)V

    .line 353
    return-void
.end method

.method public declared-synchronized removeFotaListener(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSyncManager(Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;)V
    .locals 3
    .param p1, "syncManager"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mSyncManager:Lcom/sonymobile/smartconnect/hostapp/costanza/db/FotaSyncManager;

    .line 144
    iget-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mCommunicationListeningRegistered:Z

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getCommunicationManager(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    .line 148
    .local v0, "comMgr":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    invoke-virtual {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mCommunicationListeningRegistered:Z

    .line 153
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$5;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$CommunicationManager$ConnectionState:[I

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 171
    .end local v0    # "comMgr":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v0    # "comMgr":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onConnect()V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onNewFirmwareAccessoryConnected()V

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onOldFirmwareAccessoryConnected()V

    goto :goto_0

    .line 164
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onDisconnect()V

    goto :goto_0

    .line 167
    :pswitch_4
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->onReady()V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized tearDown()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->TERMINATED:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->setState(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;)V

    .line 138
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->mFotaListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

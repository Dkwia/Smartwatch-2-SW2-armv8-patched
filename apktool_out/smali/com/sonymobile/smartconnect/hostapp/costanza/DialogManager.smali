.class public Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;,
        Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;
    }
.end annotation


# static fields
.field private static final DIALOG_APP_UPDATE_NEEDED:I = 0x6

.field private static final DIALOG_FOTA_DOWNLOAD_DONE:I = 0x4

.field private static final DIALOG_FOTA_FAILED:I = 0x5

.field private static final DIALOG_FOTA_INTERRUPTED:I = 0x3

.field private static final DIALOG_FOTA_PROGRESS:I = 0x2

.field private static final DIALOG_FOTA_QUESTION:I = 0x1

.field private static final DIALOG_NONE:I = -0x1

.field private static final KEY_DIALOG_ID:Ljava/lang/String; = "dialogId"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

.field private mCurrentDialog:Landroid/app/DialogFragment;

.field private mCurrentDialogId:I

.field mProgressDialogFotaListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialogId:I

    .line 55
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->displayDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    return-object v0
.end method

.method private displayDialog(I)V
    .locals 4
    .param p1, "dialog"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 114
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialogId:I

    if-eq v0, v2, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartupActivity.displayDialog dismissing dialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialogId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 121
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->isDialogEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :goto_0
    return-void

    .line 125
    :cond_1
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialogId:I

    .line 127
    packed-switch p1, :pswitch_data_0

    .line 156
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const-string v0, "StartupActivity.displayDialog() called with unknown dialog!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 159
    :cond_2
    iput v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialogId:I

    .line 160
    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    goto :goto_0

    .line 129
    :pswitch_1
    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    goto :goto_0

    .line 132
    :pswitch_2
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaQuestionDialog;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    .line 133
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FotaQuestionDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_3
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaProgressDialog;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    .line 137
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FotaProgressDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_4
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaInterruptedDialog;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    .line 141
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FotaInterruptedDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_5
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaDownloadDoneDialog;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaDownloadDoneDialog;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    .line 145
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FotaDownloadDoneDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_6
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaFailedDialog;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    .line 149
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FotaFailedDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :pswitch_7
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/fota/AppUpdateNeededDialog;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    .line 153
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialog:Landroid/app/DialogFragment;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AppUpdateNeededDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    return-object v0
.end method

.method private getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    return-object v0
.end method

.method private getHostApp()Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    return-object v0
.end method

.method private isDialogEnabled(I)Z
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 280
    .line 290
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v1, "StartupActivity.onCreate() got a Bundle!"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 63
    const-string v1, "dialogId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialogId:I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string v1, "StartupActivity.onCreate() did not get a Bundle!"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;)Z

    .line 67
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    .line 68
    .local v0, "comManager":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->displayDialog(I)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_OLDER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    if-ne v1, v2, :cond_3

    .line 72
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->displayDialog(I)V

    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_NEWER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    if-ne v1, v2, :cond_0

    .line 75
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->displayDialog(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mProgressDialogFotaListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->removeFotaListener(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;)V

    .line 92
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->removeCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mProgressDialogFotaListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;

    .line 83
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mProgressDialogFotaListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$ProgressDialogFotaListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->addFotaListener(Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaListener;)V

    .line 85
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

    .line 86
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->getCommunicationManager()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCommunicationListener:Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager$CommunicationListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V

    .line 87
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const-string v0, "dialogId"

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/DialogManager;->mCurrentDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

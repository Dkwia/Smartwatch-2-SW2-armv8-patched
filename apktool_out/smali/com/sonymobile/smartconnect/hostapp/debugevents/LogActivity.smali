.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;
.super Landroid/app/Activity;
.source "LogActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;->setContentView(I)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    .line 59
    .local v0, "isHandled":Z
    :goto_0
    return v0

    .line 52
    .end local v0    # "isHandled":Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;->showDialog()V

    .line 53
    const/4 v0, 0x1

    .line 54
    .restart local v0    # "isHandled":Z
    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x7f0d0079
        :pswitch_0
    .end packed-switch
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 72
    const v1, 0x7f07001e

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->newInstance(I)Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    move-result-object v0

    .line 74
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "debug_command_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 75
    return-void
.end method

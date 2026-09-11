.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDetailsFragment;
.super Landroid/app/DialogFragment;
.source "LogDetailsFragment.java"


# static fields
.field private static final LOG_MESSAGE:Ljava/lang/String; = "logMessage"

.field private static final MAX_LINES:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)Landroid/app/DialogFragment;
    .locals 3
    .param p0, "m"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "logMessage"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDetailsFragment;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDetailsFragment;-><init>()V

    .line 37
    .local v1, "frag":Landroid/app/DialogFragment;
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDetailsFragment;->setStyle(II)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0d0067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, "tv":Landroid/widget/TextView;
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "logMessage"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    .line 54
    .local v0, "m":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->populateView(Landroid/view/View;)V

    .line 55
    return-object v2
.end method

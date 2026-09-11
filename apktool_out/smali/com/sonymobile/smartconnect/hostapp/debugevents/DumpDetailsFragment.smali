.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;
.super Landroid/app/DialogFragment;
.source "DumpDetailsFragment.java"


# static fields
.field private static final KILOBYTE:J = 0x400L

.field private static final LOG_MESSAGE:Ljava/lang/String; = "logMessage"

.field private static final MEGABYTE:J = 0x100000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private convertToReadableSize(J)Ljava/lang/String;
    .locals 9
    .param p1, "size"    # J

    .prologue
    const-wide/32 v6, 0x100000

    const-wide/16 v4, 0x400

    .line 113
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 114
    const-string v1, " bytes"

    .line 122
    .local v1, "unit":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "str":Ljava/lang/String;
    return-object v0

    .line 115
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "unit":Ljava/lang/String;
    :cond_0
    cmp-long v2, p1, v6

    if-gez v2, :cond_1

    .line 116
    const-string v1, " kb"

    .line 117
    .restart local v1    # "unit":Ljava/lang/String;
    div-long/2addr p1, v4

    goto :goto_0

    .line 119
    .end local v1    # "unit":Ljava/lang/String;
    :cond_1
    const-string v1, " Mb"

    .line 120
    .restart local v1    # "unit":Ljava/lang/String;
    div-long/2addr p1, v6

    goto :goto_0
.end method

.method public static newInstance(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)Landroid/app/DialogFragment;
    .locals 3
    .param p0, "m"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "logMessage"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;-><init>()V

    .line 50
    .local v1, "frag":Landroid/app/DialogFragment;
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->setStyle(II)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "logMessage"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    .line 65
    .local v4, "m":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    const v9, 0x7f03000b

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 68
    .local v8, "v":Landroid/view/View;
    const v9, 0x7f0d0044

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 69
    .local v5, "name":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07001b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getDumpFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v9, 0x7f0d0045

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 75
    .local v6, "size":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getDumpFile()Ljava/io/File;

    move-result-object v0

    .line 77
    .local v0, "dump":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 82
    .local v2, "length":J
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->convertToReadableSize(J)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "fileSize":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v9, 0x7f0d0046

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;

    invoke-direct {v10, p0, v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object v8

    .line 80
    .end local v1    # "fileSize":Ljava/lang/String;
    .end local v2    # "length":J
    :cond_0
    const-wide/16 v2, -0x1

    .restart local v2    # "length":J
    goto :goto_0
.end method

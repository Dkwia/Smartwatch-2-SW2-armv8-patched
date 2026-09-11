.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;
.super Landroid/app/DialogFragment;
.source "DebugCommandFragment.java"


# static fields
.field private static final DIALOG_TITLE:Ljava/lang/String; = "title"

.field private static final NUM_RECENT_DEFAULT:I = 0x5

.field public static final PREFS_NAME:Ljava/lang/String;

.field private static final prefs_num_recent:Ljava/lang/String; = "RECENT_NUM"

.field private static final prefs_recent:Ljava/lang/String; = "RECENT_"


# instance fields
.field private command:Landroid/widget/EditText;

.field private history:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->PREFS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->history:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->command:Landroid/widget/EditText;

    return-object v0
.end method

.method private getDebugEventManager()Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 108
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getDebugEventManager()Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    move-result-object v1

    return-object v1
.end method

.method static newInstance(I)Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;
    .locals 3
    .param p0, "resTitle"    # I

    .prologue
    .line 31
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;-><init>()V

    .line 32
    .local v1, "frag":Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method

.method private populateHistory()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getRecent()Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    .local v1, "recent_commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x109000a

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 85
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->history:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    return-void
.end method


# virtual methods
.method declared-synchronized addRecent(Ljava/lang/String;)V
    .locals 9
    .param p1, "newCmd"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->PREFS_NAME:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 144
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "RECENT_NUM"

    const/4 v7, 0x5

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "numRecent":I
    if-eqz p1, :cond_6

    if-lez v2, :cond_6

    .line 146
    const-string v6, "RECENT_0"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "cmd":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 151
    :cond_0
    add-int/lit8 v5, v2, -0x2

    .line 152
    .local v5, "thisEntry":I
    add-int/lit8 v3, v2, -0x1

    .line 154
    .local v3, "oldEntry":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RECENT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RECENT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    :cond_1
    :goto_0
    if-ltz v5, :cond_4

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RECENT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    const/4 v0, 0x0

    .line 165
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RECENT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    :cond_2
    if-eqz v0, :cond_3

    .line 168
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RECENT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 171
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 173
    :cond_4
    add-int/lit8 v1, v2, -0x2

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_5

    .line 174
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RECENT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 178
    :cond_5
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "RECENT_0"

    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "oldEntry":I
    .end local v5    # "thisEntry":I
    :cond_6
    monitor-exit p0

    return-void

    .line 142
    .end local v2    # "numRecent":I
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public doPositiveClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getDebugEventManager()Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;

    move-result-object v0

    .line 92
    .local v0, "debugEventManager":Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;Ljava/lang/String;)V

    .line 99
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 101
    .end local v0    # "debugEventManager":Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugEventManager;
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->dismiss()V

    .line 103
    return-void
.end method

.method public declared-synchronized getRecent()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->PREFS_NAME:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "RECENT_NUM"

    const/4 v6, 0x5

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 125
    .local v2, "numRecent":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v4, "recentCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECENT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-object v4

    .line 122
    .end local v0    # "i":I
    .end local v2    # "numRecent":I
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "recentCommands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "title":I
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "layout":Landroid/view/View;
    const v3, 0x7f0d003f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->command:Landroid/widget/EditText;

    .line 44
    const v3, 0x7f0d0040

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->history:Landroid/widget/ListView;

    .line 45
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->populateHistory()V

    .line 46
    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->history:Landroid/widget/ListView;

    new-instance v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020021

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/DebugCommandFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

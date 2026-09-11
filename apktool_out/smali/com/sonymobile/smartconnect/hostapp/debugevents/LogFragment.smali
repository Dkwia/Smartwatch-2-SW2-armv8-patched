.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;
.super Landroid/app/ListFragment;
.source "LogFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUGEVENT_LIST_LOADER:I = 0x1

.field private static final LOGFILENAME:Ljava/lang/String; = "logfile.txt"

.field private static final TCP_SERVER_FRAGMENT_TAG:Ljava/lang/String; = "tcp_server"


# instance fields
.field private mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

.field private mAutoUpdate:Landroid/view/MenuItem;

.field private mIsAutoScroll:Z

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private tcpServer:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    return-object v0
.end method

.method private askAndDeleteDumps()V
    .locals 4

    .prologue
    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "db":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$5;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$5;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$4;

    invoke-direct {v3, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$4;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 256
    return-void
.end method

.method private createShareIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "application/octet-stream"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v4, "android.intent.extra.SUBJECT"

    const-string v5, "Costanza logfile."

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v4, "android.intent.extra.TEXT"

    const-string v5, "Optional details:\n"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 73
    .local v2, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "logfile.txt"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v0, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 75
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 102
    .local v0, "fm":Landroid/app/FragmentManager;
    const-string v1, "tcp_server"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->tcpServer:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    .line 105
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->tcpServer:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    invoke-direct {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->tcpServer:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    .line 108
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->tcpServer:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 109
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->tcpServer:Lcom/sonymobile/smartconnect/hostapp/debugevents/TcpServerFragment;

    const-string v3, "tcp_server"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 112
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->setHasOptionsMenu(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 120
    iput-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    .line 121
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    .line 123
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$2;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 132
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->PROJECTION_ALL_COLS:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    const v2, 0x7f100001

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 149
    const v2, 0x7f0d007a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAutoUpdate:Landroid/view/MenuItem;

    .line 151
    const v2, 0x7f0d007c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 153
    .local v0, "actionItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    check-cast v2, Landroid/widget/ShareActionProvider;

    iput-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 155
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "share_history.xml"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->createShareIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 161
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment$3;-><init>(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;)V

    .line 170
    .local v1, "listener":Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 171
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 175
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->setAutoupdate(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 177
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->getLogMessage(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    move-result-object v3

    .line 179
    .local v3, "m":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->getType()Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;->DUMP:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage$Type;

    if-ne v4, v5, :cond_0

    .line 180
    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/DumpDetailsFragment;->newInstance(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)Landroid/app/DialogFragment;

    move-result-object v1

    .line 184
    .local v1, "fragment":Landroid/app/DialogFragment;
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 185
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v4, "details"

    invoke-virtual {v1, v2, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 187
    return-void

    .line 182
    .end local v1    # "fragment":Landroid/app/DialogFragment;
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDetailsFragment;->newInstance(Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;)Landroid/app/DialogFragment;

    move-result-object v1

    .restart local v1    # "fragment":Landroid/app/DialogFragment;
    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    invoke-virtual {v0, p2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 197
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 192
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown menu item id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->setAutoupdate(Z)V

    .line 212
    :goto_1
    return v1

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->askAndDeleteDumps()V

    .line 212
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d007a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setAutoupdate(Z)V
    .locals 2
    .param p1, "shouldAutoUpdate"    # Z

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    if-eq v0, p1, :cond_1

    .line 265
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    .line 266
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogProvider;->setCapped(Z)V

    .line 267
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAutoUpdate:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAutoUpdate:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 274
    :cond_1
    return-void

    .line 268
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateLogFile()V
    .locals 10

    .prologue
    .line 280
    iget-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    .line 281
    .local v3, "isAutoCached":Z
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    .line 282
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 283
    .local v6, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "logfile.txt"

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 285
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/PrintWriter;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    .local v7, "writer":Ljava/io/PrintWriter;
    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mAdapter:Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;

    invoke-virtual {v8}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 287
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 288
    .local v4, "isMore":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 289
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->getLogMessage(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    move-result-object v5

    .line 290
    .local v5, "m":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    invoke-virtual {v5}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 292
    goto :goto_0

    .line 293
    .end local v5    # "m":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    :cond_0
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v4    # "isMore":Z
    .end local v7    # "writer":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogFragment;->mIsAutoScroll:Z

    .line 306
    return-void

    .line 294
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 298
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error log file not written: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_1

    .line 300
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 301
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 302
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error log file not written: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_1
.end method

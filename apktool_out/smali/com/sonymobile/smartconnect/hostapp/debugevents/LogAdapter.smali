.class public Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "LogAdapter.java"


# static fields
.field private static final FROM:[Ljava/lang/String;

.field private static final TO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 21
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "message"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dumpname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->FROM:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->TO:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 40
    const v2, 0x7f03001e

    const/4 v3, 0x0

    sget-object v4, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->FROM:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->TO:[I

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 42
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 50
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f03001e

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 54
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .local v3, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 55
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 57
    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogDbHelper;->getLogMessage(Landroid/database/Cursor;)Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;

    move-result-object v2

    .line 58
    .local v2, "m":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;->populateView(Landroid/view/View;)V

    .line 59
    return-object v3

    .line 52
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "m":Lcom/sonymobile/smartconnect/hostapp/debugevents/LogMessage;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3    # "v":Landroid/view/View;
    goto :goto_0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
.super Ljava/lang/Object;
.source "HostAppAefConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Widget"
.end annotation


# instance fields
.field private final mAccessoryState:I

.field private final mCellHeight:I

.field private final mCellWidth:I

.field private mId:I

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "accessoryState"    # I
    .param p6, "type"    # Ljava/lang/String;

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mCellWidth:I

    .line 1007
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mCellHeight:I

    .line 1008
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mMaxWidth:I

    .line 1009
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mMaxHeight:I

    .line 1010
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mAccessoryState:I

    .line 1011
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mType:Ljava/lang/String;

    .line 1012
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;I)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    .param p1, "x1"    # I

    .prologue
    .line 995
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->getInsertOperation(I)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;

    .prologue
    .line 995
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mId:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    .param p1, "x1"    # I

    .prologue
    .line 995
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mId:I

    return p1
.end method

.method private getInsertContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 1028
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1029
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "cellWidth"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mCellWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v1, "cellHeight"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mCellHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    const-string v1, "maxWidth"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mMaxWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    const-string v1, "maxHeight"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mMaxHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    const-string v1, "displayMode"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mAccessoryState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string v1, "themeSupport"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1035
    const-string v1, "type"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-object v0
.end method

.method private getInsertOperation(I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "displayOperationIndex"    # I

    .prologue
    .line 1019
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Widget;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1021
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->getInsertContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1022
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "displayId"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1023
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1024
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1015
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;->mId:I

    .line 1016
    return-void
.end method

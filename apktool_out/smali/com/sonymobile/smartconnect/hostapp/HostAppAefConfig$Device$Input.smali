.class public Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
.super Ljava/lang/Object;
.source "HostAppAefConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Input"
.end annotation


# instance fields
.field private mDeviceId:I

.field private mId:I

.field private final mIsEnabled:Z

.field private final mKeypadId:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "deviceId"    # I
    .param p3, "keyPadId"    # I
    .param p4, "isEnabled"    # Z

    .prologue
    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mId:I

    .line 1220
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mDeviceId:I

    .line 1221
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mKeypadId:I

    .line 1222
    iput-boolean p4, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mIsEnabled:Z

    .line 1223
    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;I)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->getInsertOperation(I)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private getInsertContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 1255
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1256
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "keyPadId"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mKeypadId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mIsEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1258
    return-object v0
.end method

.method private getInsertOperation(I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "deviceIndex"    # I

    .prologue
    .line 1246
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Input;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1248
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->getInsertContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1249
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "deviceId"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1250
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1251
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getDeviceId()I
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mDeviceId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mId:I

    return v0
.end method

.method public getKeypadId()I
    .locals 1

    .prologue
    .line 1242
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mKeypadId:I

    return v0
.end method

.method setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 1234
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mDeviceId:I

    .line 1235
    return-void
.end method

.method setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1226
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->mId:I

    .line 1227
    return-void
.end method

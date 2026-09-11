.class public Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
.super Ljava/lang/Object;
.source "HostAppAefConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Led"
.end annotation


# instance fields
.field private final mColors:I

.field private mDeviceId:I

.field private mId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "deviceId"    # I
    .param p3, "colors"    # I

    .prologue
    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mId:I

    .line 1171
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mDeviceId:I

    .line 1172
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mColors:I

    .line 1173
    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;I)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    .param p1, "x1"    # I

    .prologue
    .line 1164
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->getInsertOperation(I)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private getInsertContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 1206
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1207
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "colors"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mColors:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    return-object v0
.end method

.method private getInsertOperation(I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "deviceIndex"    # I

    .prologue
    .line 1197
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Led;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1199
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->getInsertContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1200
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "deviceId"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1201
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1202
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getColors()I
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mColors:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mDeviceId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mId:I

    return v0
.end method

.method setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 1180
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mDeviceId:I

    .line 1181
    return-void
.end method

.method setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1176
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->mId:I

    .line 1177
    return-void
.end method

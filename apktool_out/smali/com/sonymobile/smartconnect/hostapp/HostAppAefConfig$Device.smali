.class public Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
.super Ljava/lang/Object;
.source "HostAppAefConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;,
        Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;,
        Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;,
        Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    }
.end annotation


# instance fields
.field private final mDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mFirmwareVersion:I

.field private mHostAppId:I

.field private mId:I

.field private final mInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutSupport:I

.field private final mLeds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;",
            ">;"
        }
    .end annotation
.end field

.field private final mMarketingName:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSensors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubType:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mVendor:Ljava/lang/String;

.field private final mVibrator:Z

.field private final mWidgetImageHeight:I

.field private final mWidgetImageWidth:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZI)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "hostAppId"    # I
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "subType"    # Ljava/lang/String;
    .param p6, "marketingName"    # Ljava/lang/String;
    .param p7, "vendor"    # Ljava/lang/String;
    .param p8, "firmwareVersion"    # I
    .param p9, "widgetImageHeight"    # I
    .param p10, "widgetImageWidth"    # I
    .param p11, "vibrator"    # Z
    .param p12, "layoutSupport"    # I

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mDisplays:Ljava/util/ArrayList;

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mLeds:Ljava/util/ArrayList;

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mInputs:Ljava/util/ArrayList;

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mSensors:Ljava/util/ArrayList;

    .line 814
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    .line 815
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mHostAppId:I

    .line 816
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mModel:Ljava/lang/String;

    .line 817
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mType:Ljava/lang/String;

    .line 818
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mSubType:Ljava/lang/String;

    .line 819
    iput-object p6, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mMarketingName:Ljava/lang/String;

    .line 820
    iput-object p7, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mVendor:Ljava/lang/String;

    .line 821
    iput p8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mFirmwareVersion:I

    .line 822
    iput p9, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mWidgetImageHeight:I

    .line 823
    iput p10, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mWidgetImageWidth:I

    .line 824
    iput-boolean p11, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mVibrator:Z

    .line 825
    iput p12, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mLayoutSupport:I

    .line 826
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;I)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
    .param p1, "x1"    # I

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getInsertOperation(I)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private getInsertContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 971
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 972
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "model"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v1, "type"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v1, "subType"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mSubType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v1, "marketingName"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mMarketingName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v1, "vendor"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v1, "firmwareVersion"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mFirmwareVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    const-string v1, "widgetImageHeight"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mWidgetImageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    const-string v1, "widgetImageWidtht"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mWidgetImageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 980
    const-string v1, "vibrator"

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mVibrator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 981
    const-string v1, "layoutSupport"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mLayoutSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    return-object v0
.end method

.method private getInsertOperation(I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "hostAppIndex"    # I

    .prologue
    .line 962
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Device;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 964
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->getInsertContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 965
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "hostAppId"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 966
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 967
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addDisplay(IIIIIZZZIZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    .locals 13
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "colors"    # I
    .param p4, "refreshRate"    # I
    .param p5, "latency"    # I
    .param p6, "tapTouch"    # Z
    .param p7, "motionTouch"    # Z
    .param p8, "isEmulated"    # Z
    .param p9, "menuItems"    # I
    .param p10, "supportsLowPower"    # Z

    .prologue
    .line 895
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;-><init>(IIIIIIIZZZIZ)V

    .line 897
    .local v0, "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    return-object v0
.end method

.method public addInput(IZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    .locals 3
    .param p1, "keyPadId"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 927
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;-><init>(IIIZ)V

    .line 928
    .local v0, "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    return-object v0
.end method

.method public addInput(Ljava/lang/String;Z)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    .locals 4
    .param p1, "keyPad"    # Ljava/lang/String;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 916
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->access$700()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 917
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key pad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 918
    :cond_1
    const/4 v0, 0x0

    .line 923
    :goto_0
    return-object v0

    .line 920
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->access$700()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 921
    .local v1, "keyPadId":I
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    invoke-direct {v0, v2, v3, v1, p2}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;-><init>(IIIZ)V

    .line 922
    .local v0, "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addLed(I)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    .locals 3
    .param p1, "colors"    # I

    .prologue
    .line 906
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    invoke-direct {v0, v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;-><init>(III)V

    .line 907
    .local v0, "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mLeds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    return-object v0
.end method

.method public addSensor(IDIDLjava/lang/String;IZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    .locals 12
    .param p1, "sensorTypeId"    # I
    .param p2, "resolution"    # D
    .param p4, "minimumDelay"    # I
    .param p5, "maximumRange"    # D
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "sensorId"    # I
    .param p9, "sensorInterrupt"    # Z

    .prologue
    .line 951
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    move v3, p1

    move-wide v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;-><init>(IIIDIDLjava/lang/String;IZ)V

    .line 953
    .local v0, "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    return-object v0
.end method

.method public addSensor(Ljava/lang/String;DIDLjava/lang/String;IZ)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    .locals 12
    .param p1, "sensorType"    # Ljava/lang/String;
    .param p2, "resolution"    # D
    .param p4, "minimumDelay"    # I
    .param p5, "maximumRange"    # D
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "sensorId"    # I
    .param p9, "sensorInterrupt"    # Z

    .prologue
    .line 938
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->access$800()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 939
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;)Z

    .line 940
    :cond_1
    const/4 v0, 0x0

    .line 946
    :goto_0
    return-object v0

    .line 942
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig;->access$800()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 943
    .local v3, "sensorTypeId":I
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    move-wide v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;-><init>(IIIDIDLjava/lang/String;IZ)V

    .line 945
    .local v0, "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDisplays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;",
            ">;"
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFirmwareVersion()I
    .locals 1

    .prologue
    .line 873
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mFirmwareVersion:I

    return v0
.end method

.method public getHostAppId()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mHostAppId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    return v0
.end method

.method public getInputs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mInputs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayoutSupport()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mLayoutSupport:I

    return v0
.end method

.method public getLeds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;",
            ">;"
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mLeds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mMarketingName:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSensors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mSensors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetImageHeight()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mWidgetImageHeight:I

    return v0
.end method

.method public getWidgetImageWidth()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mWidgetImageWidth:I

    return v0
.end method

.method public hasVibraror()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mVibrator:Z

    return v0
.end method

.method setHostAppId(I)V
    .locals 0
    .param p1, "hostAppId"    # I

    .prologue
    .line 845
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mHostAppId:I

    .line 846
    return-void
.end method

.method setId(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 829
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    .line 830
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;

    .line 831
    .local v0, "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    invoke-virtual {v0, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->setDeviceId(I)V

    goto :goto_0

    .line 833
    .end local v0    # "display":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mLeds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;

    .line 834
    .local v3, "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    invoke-virtual {v3, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;->setDeviceId(I)V

    goto :goto_1

    .line 836
    .end local v3    # "led":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Led;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;

    .line 837
    .local v4, "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    invoke-virtual {v4, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;->setDeviceId(I)V

    goto :goto_2

    .line 839
    .end local v4    # "sensor":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Sensor;
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;

    .line 840
    .local v2, "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;->mId:I

    invoke-virtual {v2, v5}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;->setDeviceId(I)V

    goto :goto_3

    .line 842
    .end local v2    # "input":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Input;
    :cond_3
    return-void
.end method

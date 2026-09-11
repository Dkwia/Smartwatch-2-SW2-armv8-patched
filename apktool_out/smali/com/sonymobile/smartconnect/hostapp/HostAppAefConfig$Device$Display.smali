.class public Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
.super Ljava/lang/Object;
.source "HostAppAefConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Display"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    }
.end annotation


# static fields
.field private static final THEME_SUPPORT:Ljava/lang/String; = "themeSupport"


# instance fields
.field private final mColors:I

.field private mDeviceId:I

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private mId:I

.field private final mIsEmulated:Z

.field private final mLatency:I

.field private final mMenuItems:I

.field private final mMotionTouch:Z

.field private final mRefreshRate:I

.field private final mSupportsLowPower:Z

.field private final mTapTouch:Z

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIIIIIZZZIZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "deviceId"    # I
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "colors"    # I
    .param p6, "refreshRate"    # I
    .param p7, "latency"    # I
    .param p8, "tapTouch"    # Z
    .param p9, "motionTouch"    # Z
    .param p10, "isEmulated"    # Z
    .param p11, "menuItems"    # I
    .param p12, "supportsLowPower"    # Z

    .prologue
    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mWidgets:Ljava/util/ArrayList;

    .line 1057
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mId:I

    .line 1058
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDeviceId:I

    .line 1059
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDisplayWidth:I

    .line 1060
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDisplayHeight:I

    .line 1061
    iput p5, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mColors:I

    .line 1062
    iput p6, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mRefreshRate:I

    .line 1063
    iput p7, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mLatency:I

    .line 1064
    iput-boolean p8, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mTapTouch:Z

    .line 1065
    iput-boolean p9, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mMotionTouch:Z

    .line 1066
    iput-boolean p10, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mIsEmulated:Z

    .line 1067
    iput p11, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mMenuItems:I

    .line 1068
    iput-boolean p12, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mSupportsLowPower:Z

    .line 1069
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;I)Landroid/content/ContentProviderOperation;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;
    .param p1, "x1"    # I

    .prologue
    .line 985
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->getInsertOperation(I)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method private getInsertContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 1141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1142
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "colors"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mColors:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    const-string v1, "width"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDisplayWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    const-string v1, "height"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDisplayHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    const-string v1, "refreshRate"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mRefreshRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    const-string v1, "latency"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mLatency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1147
    const-string v1, "tapTouch"

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mTapTouch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1148
    const-string v1, "motionTouch"

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mMotionTouch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1149
    const-string v1, "isEmulated"

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mIsEmulated:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1150
    const-string v1, "menuItems"

    iget v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mMenuItems:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1151
    const-string v1, "supportsLowPowerMode"

    iget-boolean v2, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mSupportsLowPower:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1152
    return-object v0
.end method

.method private getInsertOperation(I)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "deviceOperationIndex"    # I

    .prologue
    .line 1132
    sget-object v2, Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Display;->URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1134
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->getInsertContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 1135
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "deviceId"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1136
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addWidget(IIIIILjava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    .locals 7
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "accessoryState"    # I
    .param p6, "type"    # Ljava/lang/String;

    .prologue
    .line 1157
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;-><init>(IIIIILjava/lang/String;)V

    .line 1159
    .local v0, "widget":Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    return-object v0
.end method

.method public getColors()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mColors:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDeviceId:I

    return v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDisplayWidth:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mId:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mLatency:I

    return v0
.end method

.method public getMenuItems()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mMenuItems:I

    return v0
.end method

.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mRefreshRate:I

    return v0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display$Widget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMotionTouch()Z
    .locals 1

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mMotionTouch:Z

    return v0
.end method

.method public hasTapTouch()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mTapTouch:Z

    return v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mIsEmulated:Z

    return v0
.end method

.method setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 1080
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mDeviceId:I

    .line 1081
    return-void
.end method

.method setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1076
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mId:I

    .line 1077
    return-void
.end method

.method public supportsLowPower()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/HostAppAefConfig$Device$Display;->mSupportsLowPower:Z

    return v0
.end method

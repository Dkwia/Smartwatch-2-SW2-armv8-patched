.class public Lcom/sonyericsson/extras/liveware/aef/registration/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorTypeValue;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPadType;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$LayoutSupport;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$LaunchMode;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$WidgetRegistrationColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$WidgetRegistration;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$WidgetColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Widget;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$VersionColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Version;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPadColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$KeyPad;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorTypeColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorType;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$InputColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Input;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$LedColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Led;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$TapColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Tap;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$SensorColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Sensor;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$DisplayColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Display;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$DeviceColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Device;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$HostAppColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$HostApp;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Capabilities;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$ApiRegistrationColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$ApiRegistration;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$ExtensionColumns;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Extension;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$AccessoryConnectionStatus;,
        Lcom/sonyericsson/extras/liveware/aef/registration/Registration$Intents;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.extras.liveware.aef.registration"

.field protected static final BASE_URI:Landroid/net/Uri;

.field public static final EXTENSION_PERMISSION:Ljava/lang/String; = "com.sonyericsson.extras.liveware.aef.EXTENSION_PERMISSION"

.field public static final HOSTAPP_PERMISSION:Ljava/lang/String; = "com.sonyericsson.extras.liveware.aef.HOSTAPP_PERMISSION"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    const-string v0, "content://com.sonyericsson.extras.liveware.aef.registration"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/extras/liveware/aef/registration/Registration;->BASE_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

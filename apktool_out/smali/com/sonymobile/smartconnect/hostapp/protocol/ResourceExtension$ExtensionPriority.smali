.class public final enum Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
.super Ljava/lang/Enum;
.source "ResourceExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtensionPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

.field public static final enum APPLICATION_ALERT_PRIORITY_ALARM:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

.field public static final enum APPLICATION_ALERT_PRIORITY_BATTERY_WARNING:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

.field public static final enum APPLICATION_ALERT_PRIORITY_HIGHEST:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

.field public static final enum APPLICATION_ALERT_PRIORITY_INCOMING_CALL:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

.field public static final enum APPLICATION_ALERT_PRIORITY_NONE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

.field public static final enum APPLICATION_ALERT_PRIORITY_NOTIFICATION_MSG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

.field public static final enum APPLICATION_ALERT_PRIORITY_TIMER:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    const-string v1, "APPLICATION_ALERT_PRIORITY_HIGHEST"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_HIGHEST:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 48
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    const-string v1, "APPLICATION_ALERT_PRIORITY_INCOMING_CALL"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_INCOMING_CALL:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 49
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    const-string v1, "APPLICATION_ALERT_PRIORITY_BATTERY_WARNING"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_BATTERY_WARNING:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 50
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    const-string v1, "APPLICATION_ALERT_PRIORITY_ALARM"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_ALARM:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 51
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    const-string v1, "APPLICATION_ALERT_PRIORITY_TIMER"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_TIMER:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 52
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    const-string v1, "APPLICATION_ALERT_PRIORITY_NOTIFICATION_MSG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_NOTIFICATION_MSG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 53
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    const-string v1, "APPLICATION_ALERT_PRIORITY_NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_NONE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_HIGHEST:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_INCOMING_CALL:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_BATTERY_WARNING:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_ALARM:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_TIMER:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_NOTIFICATION_MSG:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->APPLICATION_ALERT_PRIORITY_NONE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceExtension$ExtensionPriority;

    return-object v0
.end method

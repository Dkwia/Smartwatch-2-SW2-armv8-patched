.class public final enum Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;
.super Ljava/lang/Enum;
.source "WakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerUser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum CLEANUP:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum INCOMING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum INCOMING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum NONE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum OUTGOING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum OUTGOING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum POKE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum RENDERER:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

.field public static final enum SMART_CONNECT_CHANGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;


# instance fields
.field public final isOn:Z

.field public final tag:Ljava/lang/String;

.field public wakeLockStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 31
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "NONE"

    const-string v2, "None"

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->NONE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 32
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "CLEANUP"

    const-string v2, "Cleanup"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CLEANUP:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 33
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "POKE"

    const-string v2, "Poke"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->POKE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 34
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "SMART_CONNECT_CHANGE"

    const-string v2, "SmartConnect change"

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->SMART_CONNECT_CHANGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 35
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "CONTROL_INTENT"

    const-string v2, "Control intent"

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 36
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "INCOMING_INTENT"

    const/4 v2, 0x5

    const-string v3, "Incoming intent"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 37
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "OUTGOING_INTENT"

    const/4 v2, 0x6

    const-string v3, "Outgoing intent"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 38
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "INCOMING_MESSAGE"

    const/4 v2, 0x7

    const-string v3, "Incoming message"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 39
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "OUTGOING_MESSAGE"

    const/16 v2, 0x8

    const-string v3, "Outoing message"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 40
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    const-string v1, "RENDERER"

    const/16 v2, 0x9

    const-string v3, "Renderer"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->RENDERER:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->NONE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CLEANUP:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->POKE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->SMART_CONNECT_CHANGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->CONTROL_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_INTENT:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->INCOMING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->OUTGOING_MESSAGE:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->RENDERER:Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p3, "on"    # Z
    .param p4, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-boolean p3, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->isOn:Z

    .line 44
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->tag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/util/WakeLockManager$PowerUser;

    return-object v0
.end method

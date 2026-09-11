.class final enum Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
.super Ljava/lang/Enum;
.source "FotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FotaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum DOWNLOADING:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum IDLE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum TERMINATED:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum WAITING_FOR_COMPLETE_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum WAITING_FOR_RESET_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum WAITING_FOR_RESET_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum WAITING_FOR_START_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

.field public static final enum WAITING_FOR_START_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->IDLE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 71
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "WAITING_FOR_START_RESPONSE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 74
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "WAITING_FOR_START_BATTERY_LEVEL"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 76
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->DOWNLOADING:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 78
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "WAITING_FOR_COMPLETE_RESPONSE"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_COMPLETE_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 80
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "WAITING_FOR_RESET_RESPONSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_RESET_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 83
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "WAITING_FOR_RESET_BATTERY_LEVEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_RESET_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 85
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    const-string v1, "TERMINATED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->TERMINATED:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->IDLE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_START_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->DOWNLOADING:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_COMPLETE_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_RESET_RESPONSE:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->WAITING_FOR_RESET_BATTERY_LEVEL:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->TERMINATED:Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/fota/FotaController$FotaState;

    return-object v0
.end method

.class public final enum Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;
.super Ljava/lang/Enum;
.source "CidProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReservedCid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

.field public static final enum DISPLAY_DATA_EMPTY_BOX:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

.field public static final enum DISPLAY_DATA_IMAGE:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

.field public static final enum DISPLAY_DATA_MASTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

.field public static final enum DISPLAY_DATA_SHIFTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

.field public static final enum HOST_APP_EXTENSION_ROOT:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    const-string v1, "HOST_APP_EXTENSION_ROOT"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->HOST_APP_EXTENSION_ROOT:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    .line 17
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    const-string v1, "DISPLAY_DATA_MASTER"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_MASTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    .line 18
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    const-string v1, "DISPLAY_DATA_SHIFTER"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_SHIFTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    .line 19
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    const-string v1, "DISPLAY_DATA_IMAGE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_IMAGE:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    .line 20
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    const-string v1, "DISPLAY_DATA_EMPTY_BOX"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_EMPTY_BOX:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->HOST_APP_EXTENSION_ROOT:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_MASTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_SHIFTER:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_IMAGE:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->DISPLAY_DATA_EMPTY_BOX:Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider$ReservedCid;

    return-object v0
.end method

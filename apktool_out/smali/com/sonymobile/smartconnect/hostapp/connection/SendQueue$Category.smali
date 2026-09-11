.class public final enum Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
.super Ljava/lang/Enum;
.source "SendQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

.field public static final enum FOTA:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

.field public static final enum FOTA_PROGRESS:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

.field public static final enum NORMAL:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

.field public static final enum PRIORITIZED:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    const-string v1, "FOTA"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->FOTA:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    const-string v1, "FOTA_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->FOTA_PROGRESS:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    const-string v1, "PRIORITIZED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->PRIORITIZED:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->NORMAL:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->FOTA:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->FOTA_PROGRESS:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->PRIORITIZED:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->NORMAL:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    return-object v0
.end method

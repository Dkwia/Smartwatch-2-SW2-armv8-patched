.class public final enum Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;
.super Ljava/lang/Enum;
.source "ResourceClockItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

.field public static final enum Center:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

.field public static final enum Invalid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

.field public static final enum Left:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

.field public static final enum Right:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Invalid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    const-string v1, "Left"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Left:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    const-string v1, "Center"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Center:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    const-string v1, "Right"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Right:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Invalid:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Left:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Center:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->Right:Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceClockItem$HorizontalAlignment;

    return-object v0
.end method

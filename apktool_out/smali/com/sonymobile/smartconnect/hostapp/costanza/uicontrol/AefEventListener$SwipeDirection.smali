.class public final enum Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;
.super Ljava/lang/Enum;
.source "AefEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

.field public static final enum Down:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

.field public static final enum Left:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

.field public static final enum Right:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

.field public static final enum Up:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    const-string v1, "Up"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Up:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    const-string v1, "Down"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Down:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    const-string v1, "Left"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Left:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    const-string v1, "Right"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Right:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Up:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Down:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Left:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->Right:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$SwipeDirection;

    return-object v0
.end method

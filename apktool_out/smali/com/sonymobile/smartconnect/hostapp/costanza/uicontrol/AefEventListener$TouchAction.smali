.class public final enum Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
.super Ljava/lang/Enum;
.source "AefEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

.field public static final enum ListItemAlignment:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

.field public static final enum LongPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

.field public static final enum MultiPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

.field public static final enum None:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

.field public static final enum Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

.field public static final enum Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    const-string v1, "Press"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    const-string v1, "LongPress"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->LongPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    const-string v1, "Release"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    const-string v1, "ListItemAlignment"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->ListItemAlignment:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    const-string v1, "MultiPress"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->MultiPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    const-string v1, "None"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->None:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Press:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->LongPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->Release:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->ListItemAlignment:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->MultiPress:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->None:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/AefEventListener$TouchAction;

    return-object v0
.end method

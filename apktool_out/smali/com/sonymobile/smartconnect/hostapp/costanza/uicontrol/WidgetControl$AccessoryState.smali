.class public final enum Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
.super Ljava/lang/Enum;
.source "WidgetControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessoryState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field public static final enum DefaultOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field public static final enum DefaultOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field public static final enum LowPowerOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field public static final enum LowPowerOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

.field public static final enum NightLightOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    const-string v1, "DefaultOnline"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    const-string v1, "DefaultOffline"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    const-string v1, "NightLightOnline"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->NightLightOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    const-string v1, "LowPowerOnline"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    const-string v1, "LowPowerOffline"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->DefaultOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->NightLightOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOnline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->LowPowerOffline:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/WidgetControl$AccessoryState;

    return-object v0
.end method

.class public final enum Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
.super Ljava/lang/Enum;
.source "CommunicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

.field public static final enum CONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

.field public static final enum CONNECTED_TO_NEWER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

.field public static final enum CONNECTED_TO_OLDER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

.field public static final enum READY:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->DISCONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .line 171
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .line 173
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->READY:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .line 175
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    const-string v1, "CONNECTED_TO_OLDER_FIRMWARE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_OLDER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .line 177
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    const-string v1, "CONNECTED_TO_NEWER_FIRMWARE"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_NEWER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->DISCONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->READY:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_OLDER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_NEWER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    return-object v0
.end method

.class final enum Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;
.super Ljava/lang/Enum;
.source "ExtensionServiceTunnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BindState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

.field public static final enum CONNECTED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

.field public static final enum CONNECTING:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

.field public static final enum STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    .line 29
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTING:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    .line 30
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->STOPPED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTING:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->CONNECTED:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionServiceTunnel$BindState;

    return-object v0
.end method

.class public final enum Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;
.super Ljava/lang/Enum;
.source "ResponseDeleteResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeleteStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

.field public static final enum FAILURE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

.field public static final enum SUCCESS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->FAILURE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->SUCCESS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->FAILURE:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->SUCCESS:Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/ResponseDeleteResources$DeleteStatus;

    return-object v0
.end method

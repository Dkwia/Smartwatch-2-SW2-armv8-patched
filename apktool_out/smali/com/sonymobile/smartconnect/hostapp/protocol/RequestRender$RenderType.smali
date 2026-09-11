.class public final enum Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;
.super Ljava/lang/Enum;
.source "RequestRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

.field public static final enum Control:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

.field public static final enum Widget:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    const-string v1, "Control"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->Control:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    const-string v1, "Widget"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->Widget:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->Control:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->Widget:Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/RequestRender$RenderType;

    return-object v0
.end method

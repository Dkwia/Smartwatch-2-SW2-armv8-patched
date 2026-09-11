.class public final enum Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;
.super Ljava/lang/Enum;
.source "LayoutData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

.field public static final enum COMPRESSED_DATA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

.field public static final enum FILE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

.field public static final enum RAW:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

.field public static final enum RESOURCE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

.field public static final enum URI:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    const-string v1, "RESOURCE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->RESOURCE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 428
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    const-string v1, "URI"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->URI:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 433
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->FILE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 435
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    const-string v1, "COMPRESSED_DATA"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->COMPRESSED_DATA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 437
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->RAW:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    .line 424
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->RESOURCE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->URI:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->FILE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->COMPRESSED_DATA:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->RAW:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

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
    .line 424
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 424
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$DataSourceType;

    return-object v0
.end method

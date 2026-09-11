.class public final enum Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;
.super Ljava/lang/Enum;
.source "LayoutData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

.field public static final enum DOWNSCALE_KEEPING_ASPECT_RATIO:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

.field public static final enum DOWN_SAMPLE_AND_CROP:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

.field public static final enum ONLY_DOWN_SAMPLE_LOADING:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

.field public static final enum SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    const-string v1, "ONLY_DOWN_SAMPLE_LOADING"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->ONLY_DOWN_SAMPLE_LOADING:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .line 271
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    const-string v1, "DOWNSCALE_KEEPING_ASPECT_RATIO"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWNSCALE_KEEPING_ASPECT_RATIO:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .line 272
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    const-string v1, "SCALE_TO_EXACT_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .line 273
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    const-string v1, "DOWN_SAMPLE_AND_CROP"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWN_SAMPLE_AND_CROP:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    .line 269
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->ONLY_DOWN_SAMPLE_LOADING:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWNSCALE_KEEPING_ASPECT_RATIO:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->SCALE_TO_EXACT_SIZE:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWN_SAMPLE_AND_CROP:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

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
    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    return-object v0
.end method

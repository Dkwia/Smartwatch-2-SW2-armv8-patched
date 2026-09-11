.class final enum Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;
.super Ljava/lang/Enum;
.source "TimeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StyledAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

.field public static final enum gravity:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

.field public static final enum timeOffset:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    const-string v1, "gravity"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->gravity:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    .line 29
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    const-string v1, "timeOffset"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->timeOffset:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->gravity:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->timeOffset:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeLayout$StyledAttribute;

    return-object v0
.end method

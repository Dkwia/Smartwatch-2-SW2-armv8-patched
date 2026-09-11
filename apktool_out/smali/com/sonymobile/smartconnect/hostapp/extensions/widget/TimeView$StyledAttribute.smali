.class final enum Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;
.super Ljava/lang/Enum;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StyledAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

.field public static final enum fontPath:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

.field public static final enum template:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

.field public static final enum textArray:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

.field public static final enum textSize:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

.field public static final enum timeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    const-string v1, "fontPath"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->fontPath:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    .line 98
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    const-string v1, "template"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->template:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    .line 99
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    const-string v1, "textArray"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->textArray:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    .line 100
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    const-string v1, "textSize"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->textSize:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    .line 101
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    const-string v1, "timeType"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->timeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->fontPath:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->template:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->textArray:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->textSize:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->timeType:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$StyledAttribute;

    return-object v0
.end method

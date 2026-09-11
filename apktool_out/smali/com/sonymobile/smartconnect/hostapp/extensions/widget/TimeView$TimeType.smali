.class public final enum Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;
.super Ljava/lang/Enum;
.source "TimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum AmPm:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum Constant:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfMonth:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfMonthDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfMonthDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfWeek:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfYear:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfYearDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfYearDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum DaysOfYearDigit3:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum Hours:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum HoursDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum HoursDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum HoursFine:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum Minutes:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum MinutesDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum MinutesDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum Months:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum MonthsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum MonthsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum Seconds:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum SecondsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum SecondsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum YearsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum YearsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum YearsDigit3:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

.field public static final enum YearsDigit4:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "Constant"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Constant:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 54
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "Seconds"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Seconds:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 55
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "SecondsDigit2"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->SecondsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 56
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "SecondsDigit1"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->SecondsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 57
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "Minutes"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Minutes:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 58
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "MinutesDigit2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MinutesDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 59
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "MinutesDigit1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MinutesDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 60
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "Hours"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Hours:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 61
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "HoursDigit2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->HoursDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 62
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "HoursDigit1"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->HoursDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 63
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfWeek"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfWeek:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 64
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfMonth"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfMonth:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 65
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfMonthDigit2"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfMonthDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 66
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfMonthDigit1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfMonthDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 67
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfYear"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYear:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 68
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfYearDigit3"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYearDigit3:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 69
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfYearDigit2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYearDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 70
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "DaysOfYearDigit1"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYearDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 71
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "Months"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Months:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 72
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "MonthsDigit2"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MonthsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 73
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "MonthsDigit1"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MonthsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 74
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "YearsDigit4"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit4:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 75
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "YearsDigit3"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit3:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 76
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "YearsDigit2"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 77
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "YearsDigit1"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 78
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "AmPm"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->AmPm:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 79
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    const-string v1, "HoursFine"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->HoursFine:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    .line 52
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Constant:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Seconds:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->SecondsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->SecondsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Minutes:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MinutesDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MinutesDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Hours:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->HoursDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->HoursDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfWeek:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfMonth:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfMonthDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfMonthDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYear:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYearDigit3:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYearDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->DaysOfYearDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->Months:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MonthsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->MonthsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit4:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit3:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit2:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->YearsDigit1:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->AmPm:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->HoursFine:Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/extensions/widget/TimeView$TimeType;

    return-object v0
.end method

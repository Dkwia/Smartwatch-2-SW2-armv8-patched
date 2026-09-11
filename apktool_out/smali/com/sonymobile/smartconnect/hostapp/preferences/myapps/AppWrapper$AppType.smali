.class public final enum Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;
.super Ljava/lang/Enum;
.source "AppWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

.field public static final enum EXTENSION:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

.field public static final enum NATIVE:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    const-string v1, "EXTENSION"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->EXTENSION:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->NATIVE:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->EXTENSION:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->NATIVE:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->$VALUES:[Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    invoke-virtual {v0}, [Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper$AppType;

    return-object v0
.end method

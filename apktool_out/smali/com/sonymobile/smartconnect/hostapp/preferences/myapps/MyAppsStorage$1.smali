.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$1;
.super Ljava/lang/Object;
.source "MyAppsStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;->sortAZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;
    .param p2, "rhs"    # Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsStorage$1;->compare(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/AppWrapper;)I

    move-result v0

    return v0
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;
.super Ljava/lang/Object;
.source "SpinnerNavItem.java"


# instance fields
.field private icon:I

.field private id:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "icon"    # I
    .param p3, "id"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->title:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->icon:I

    .line 17
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->id:I

    .line 18
    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->icon:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/SpinnerNavItem;->title:Ljava/lang/String;

    return-object v0
.end method

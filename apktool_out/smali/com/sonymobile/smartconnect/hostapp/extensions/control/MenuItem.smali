.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$1;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$Factory;
    }
.end annotation


# instance fields
.field private mImageUri:Landroid/net/Uri;

.field private final mItemId:I

.field private mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "itemId"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mItemId:I

    .line 18
    return-void
.end method

.method synthetic constructor <init>(ILcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mImageUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mItemId:I

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isText()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string v0, "%s [id=0x%08x, text=%s, icon=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mItemId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mText:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->mImageUri:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

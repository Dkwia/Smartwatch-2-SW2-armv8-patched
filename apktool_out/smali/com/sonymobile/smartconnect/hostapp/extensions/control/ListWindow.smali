.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
.super Ljava/lang/Object;
.source "ListWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow$EmptyWindow;
    }
.end annotation


# static fields
.field public static final EmptyWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;


# instance fields
.field public mMaxItemPosition:I

.field public mMinItemPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow$EmptyWindow;

    invoke-direct {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow$EmptyWindow;-><init>()V

    sput-object v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->EmptyWindow:Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "minActiveItemPosition"    # I
    .param p2, "maxActiveItemPosition"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    .line 29
    iput p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    .line 30
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 38
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow$EmptyWindow;

    if-eqz v4, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v3

    .line 43
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;

    move-object v2, v0

    .line 44
    .local v2, "w":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    iget v4, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    if-ne v4, v5, :cond_0

    iget v4, v2, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 46
    .end local v2    # "w":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hashCode not implemented for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMaxItemPosition:I

    iget v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ListWindow;->mMinItemPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

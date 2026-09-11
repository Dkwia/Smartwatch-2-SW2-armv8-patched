.class Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;
.super Ljava/lang/Object;
.source "WatchFaceStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;->getAllWatchFaces()Ljava/util/List;
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
        "Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I
    .locals 4
    .param p1, "lhs"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;
    .param p2, "rhs"    # Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const/4 v0, -0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->isNative()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getLastEditedTime()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;->getLastEditedTime()J

    move-result-wide v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 267
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 256
    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFaceStorage$1;->compare(Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;Lcom/sonymobile/smartconnect/hostapp/costanza/widget/WatchFace;)I

    move-result v0

    return v0
.end method

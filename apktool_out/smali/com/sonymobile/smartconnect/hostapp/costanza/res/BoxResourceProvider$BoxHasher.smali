.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.source "BoxResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoxHasher"
.end annotation


# instance fields
.field private final mFillColor:I

.field private final mOutlineColor:I

.field private final mScreenBox:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;Landroid/graphics/Rect;II)V
    .locals 0
    .param p2, "screenBox"    # Landroid/graphics/Rect;
    .param p3, "outlineColor"    # I
    .param p4, "fillColor"    # I

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider;

    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;->mScreenBox:Landroid/graphics/Rect;

    .line 30
    iput p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;->mOutlineColor:I

    .line 31
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;->mFillColor:I

    .line 32
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 3
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;->mScreenBox:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update([[B)V

    .line 37
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;->mOutlineColor:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 38
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BoxResourceProvider$BoxHasher;->mFillColor:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 39
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuResourceHasher"
.end annotation


# instance fields
.field private final mCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOffline:Z

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;Ljava/util/List;Z)V
    .locals 1
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p4, "isOfflineMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    .line 270
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;I)V

    .line 271
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;->mCids:Ljava/util/List;

    .line 272
    iput-boolean p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;->mOffline:Z

    .line 273
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;->feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 278
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;->mCids:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Ljava/util/List;)V

    .line 279
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$MenuResourceHasher;->mOffline:Z

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(Z)V

    .line 280
    return-void
.end method

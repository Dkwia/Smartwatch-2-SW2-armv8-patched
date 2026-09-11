.class Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceHasher;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;
.source "ControlResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListResourceHasher"
.end annotation


# instance fields
.field private final mMaxItems:I

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;II)V
    .locals 0
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "xmlLayoutId"    # I
    .param p4, "maxItems"    # I

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceHasher;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider;Landroid/graphics/Rect;I)V

    .line 126
    iput p4, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceHasher;->mMaxItems:I

    .line 129
    return-void
.end method


# virtual methods
.method protected feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
    .locals 1
    .param p1, "digester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ControlResourceHasher;->feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 136
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/res/ControlResourceProvider$ListResourceHasher;->mMaxItems:I

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update(I)V

    .line 137
    return-void
.end method

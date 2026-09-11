.class public abstract Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;
.super Ljava/lang/Object;
.source "BaseResourceProvider.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceHasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseResourceHasher"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V
.end method

.method public hash(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)[B
    .locals 3
    .param p1, "resourceDigester"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->update([[B)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$BaseResourceHasher;->feedDigester(Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;)V

    .line 45
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/ResourceDigester;->digest()[B

    move-result-object v0

    return-object v0
.end method

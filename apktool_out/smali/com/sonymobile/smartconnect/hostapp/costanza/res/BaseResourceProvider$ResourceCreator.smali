.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider$ResourceCreator;
.super Ljava/lang/Object;
.source "BaseResourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/res/BaseResourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceCreator"
.end annotation


# virtual methods
.method public abstract createResource(ILcom/sonymobile/smartconnect/hostapp/costanza/res/CidReferenceTracker;)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.end method

.method public abstract getCid(Lcom/sonymobile/smartconnect/hostapp/costanza/db/CidProvider;)I
.end method

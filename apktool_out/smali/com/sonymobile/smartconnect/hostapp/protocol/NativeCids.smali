.class public Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;
.super Ljava/lang/Object;
.source "NativeCids.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;
    }
.end annotation


# static fields
.field private static sNativeCids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 69
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->sNativeCids:Ljava/util/HashMap;

    .line 72
    const-string v7, "protocol"

    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->getNativeCids()[I

    move-result-object v3

    .line 76
    .local v3, "cids":[I
    const/4 v1, 0x0

    .line 77
    .local v1, "cidIndex":I
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;->values()[Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v2, v1

    .end local v1    # "cidIndex":I
    .local v2, "cidIndex":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v5, v0, v4

    .line 78
    .local v5, "key":Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;
    sget-object v7, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->sNativeCids:Ljava/util/HashMap;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "cidIndex":I
    .restart local v1    # "cidIndex":I
    aget v8, v3, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "cidIndex":I
    .restart local v2    # "cidIndex":I
    goto :goto_0

    .line 80
    .end local v5    # "key":Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static get(Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;)I
    .locals 1
    .param p0, "key"    # Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids$CidKey;

    .prologue
    .line 83
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/protocol/NativeCids;->sNativeCids:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static native getNativeCids()[I
.end method

.class public Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/CostanzaWallpaper;
.super Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;
.source "CostanzaWallpaper.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/Wallpaper;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/wallpaper/CostanzaWallpaper;->setCid(I)V

    .line 14
    return-void
.end method

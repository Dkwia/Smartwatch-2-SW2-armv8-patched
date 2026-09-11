.class public Lcom/sonymobile/gahelper/GaHelper;
.super Ljava/lang/Object;
.source "GaHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/gahelper/GaHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static readAndSetGaEnabled(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, "defaultValueEnabled":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "somc.google_analytics_enabled"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    move v1, v2

    .line 54
    .local v1, "gaEnabled":Z
    :goto_0
    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v4

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->setAppOptOut(Z)V

    .line 55
    return-void

    .end local v1    # "gaEnabled":Z
    :cond_0
    move v1, v3

    .line 45
    goto :goto_0

    .restart local v1    # "gaEnabled":Z
    :cond_1
    move v2, v3

    .line 54
    goto :goto_1
.end method

.class public Lcom/sonymobile/gahelper/GaHelperSubscriber;
.super Landroid/database/ContentObserver;
.source "GaHelperSubscriber.java"


# static fields
.field private static final GA_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscribing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "somc.google_analytics_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->GA_URI:Landroid/net/Uri;

    .line 29
    const-class v0, Lcom/sonymobile/gahelper/GaHelperSubscriber;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mSubscribing:Z

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mSubscribing:Z

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public subscribeGaSettingChanges()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gahelper/GaHelper;->readAndSetGaEnabled(Landroid/content/Context;)V

    .line 83
    iget-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mSubscribing:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/gahelper/GaHelperSubscriber;->GA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mSubscribing:Z

    .line 87
    :cond_0
    return-void
.end method

.method public unsubscribeGaSettingChanges()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mSubscribing:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gahelper/GaHelperSubscriber;->mSubscribing:Z

    .line 102
    :cond_0
    return-void
.end method

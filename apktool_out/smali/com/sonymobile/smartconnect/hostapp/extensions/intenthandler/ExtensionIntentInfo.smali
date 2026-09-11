.class public Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;
.super Ljava/lang/Object;
.source "ExtensionIntentInfo.java"


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mData:[B

.field mDataUri:Ljava/lang/String;

.field mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

.field mInstanceId:I

.field mIntentAction:Ljava/lang/String;

.field mInterruptMode:I

.field mLedColor:I

.field mLedId:I

.field mLocalServerSocketName:Ljava/lang/String;

.field mOffDuration:I

.field mOnDuration:I

.field mPackageName:Ljava/lang/String;

.field mRepeats:I

.field mRequestedRate:I

.field mScreenState:I

.field mSensorId:I

.field mXOffsetPos:I

.field mXmlLayoutId:I

.field mXmlLayoutReference:I

.field mYOffsetPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    .line 36
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mIntentAction:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mPackageName:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mDataUri:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mData:[B

    .line 40
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mXmlLayoutId:I

    .line 41
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mXOffsetPos:I

    .line 42
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mYOffsetPos:I

    .line 43
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mLedId:I

    .line 44
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mLedColor:I

    .line 45
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mOnDuration:I

    .line 46
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mOffDuration:I

    .line 47
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mRepeats:I

    .line 48
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mScreenState:I

    .line 49
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mSensorId:I

    .line 50
    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mLocalServerSocketName:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mRequestedRate:I

    .line 52
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mInterruptMode:I

    .line 53
    return-void
.end method

.method public handleIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mHandler:Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;

    invoke-interface {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentHandler;->handleIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;)V

    .line 59
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/intenthandler/ExtensionIntentInfo;->mIntentAction:Ljava/lang/String;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

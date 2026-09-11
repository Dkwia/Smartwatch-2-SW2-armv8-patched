.class public Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;
.super Ljava/lang/Object;
.source "IndicationNotificationAllReadListener.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$1;,
        Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

.field private final mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extensionManager"    # Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .param p3, "eventManager"    # Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    .line 31
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->mEventManager:Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getMessageTypeToListenFor()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x8d

    return v0
.end method

.method public onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 41
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead;

    .line 44
    .local v0, "allReadMessage":Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationNotificationAllRead;->getExtensionCid()I

    move-result v1

    .line 49
    .local v1, "extensionCid":I
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;->mExtensionManager:Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$MyExtensionListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener;Lcom/sonymobile/smartconnect/hostapp/extensions/IndicationNotificationAllReadListener$1;)V

    invoke-virtual {v2, v1, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getExtensionByCid(ILcom/sonymobile/smartconnect/hostapp/extensions/ExtensionListener;)V

    .line 50
    return-void
.end method

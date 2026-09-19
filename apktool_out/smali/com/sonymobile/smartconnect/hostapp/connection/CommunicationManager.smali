.class public Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;
.source "CommunicationManager.java"

# interfaces
.implements Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;
.implements Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$2;,
        Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;,
        Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;,
        Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;,
        Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;,
        Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;,
        Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    }
.end annotation


# static fields
.field private static final APPROX_MAX_MESSAGE_SIZE:I = 0x400

.field public static final INTENT_ACTION_APP_MANAGER_RESULT:Ljava/lang/String; = "com.sonymobile.smartconnect.smartwatch2.action.service.INTENT_ACTION_APP_MANAGER_RESULT"

.field private static final OUTPUT_BUFFER_SIZE:I = 0x20000

.field private static final RECEIVE_COSTANZA_MESSAGE:I = 0x1

.field private static final SEND_COSTANZA_MESSAGE:I = 0x0

.field private static final SIZE_LENGTH:I = 0x4

.field private static final SYNCED_DEVICE_ADDRESS_KEY:Ljava/lang/String; = "synced_device"


# instance fields
.field private final ctxt:Landroid/content/Context;

.field private final fotaProgressQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

.field private final fotaQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

.field private final mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

.field private final mCostanzaMessageListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

.field private final mFotaResponseListener:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;

.field private mInputStream:Ljava/io/InputStream;

.field private final mMessageReceiverHandlerThread:Landroid/os/HandlerThread;

.field private final mMessageSenderHandlerThread:Landroid/os/HandlerThread;

.field private final mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

.field private final mOurFirmwareVersion:Ljava/lang/String;

.field private final mOurProtoVersion:I

.field mOutBuffer:[B

.field private final mReadBuf:[B

.field mReadOffset:I

.field private final mReceiveMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;

.field private mRemainingListMessages:I

.field private final mResourceTracker:Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

.field private final mSendMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;

.field private final mSendPriority:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

.field private mSyncedDeviceAddress:Ljava/lang/String;

.field private mTheirFirmwareVersion:Ljava/lang/String;

.field private mTheirProtoVersion:I

.field private final mTimeAndLocaleSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

.field private final normalQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

.field private final prioQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "embeddedfirmwareVersion"    # Ljava/lang/String;
    .param p3, "fotaResponseListener"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;
    .param p4, "msgIdProvider"    # Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;
    .param p5, "factoryResetter"    # Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    .prologue
    const/4 v3, 0x5

    .line 212
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;-><init>()V

    .line 151
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCostanzaMessageListeners:Ljava/util/Hashtable;

    .line 158
    const v1, 0x100067

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mOurProtoVersion:I

    .line 159
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTheirProtoVersion:I

    .line 179
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->DISCONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mState:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .line 187
    const/high16 v1, 0x20000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mOutBuffer:[B

    .line 189
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->NORMAL:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->normalQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    .line 190
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->PRIORITIZED:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->prioQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    .line 191
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->FOTA:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    .line 192
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->FOTA_PROGRESS:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    invoke-direct {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaProgressQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    .line 194
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 199
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendPriority:Ljava/util/Stack;

    .line 699
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadBuf:[B

    .line 701
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    .line 213
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->ctxt:Landroid/content/Context;

    .line 215
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MessageSender"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageSenderHandlerThread:Landroid/os/HandlerThread;

    .line 216
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageSenderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 217
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageSenderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageSenderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;

    .line 220
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MessageReceiver"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageReceiverHandlerThread:Landroid/os/HandlerThread;

    .line 221
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageReceiverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 222
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageReceiverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMessageReceiverHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReceiveMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;

    .line 225
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mOurFirmwareVersion:Ljava/lang/String;

    .line 226
    iput-object p3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mFotaResponseListener:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;

    .line 228
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->ctxt:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 229
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "synced_device"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSyncedDeviceAddress:Ljava/lang/String;

    .line 230
    iput-object p4, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    .line 232
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    invoke-direct {v1, p4, p0}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;-><init>(Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTimeAndLocaleSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    .line 233
    iput-object p5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    .line 234
    new-instance v1, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    invoke-direct {v1, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender;)V

    iput-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mResourceTracker:Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mInputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTheirFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTheirFirmwareVersion:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->ctxt:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->saveWatchFirmwareVersion(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mOurFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->setConnectionState(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->clearResetFlag()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->requestNotificationList()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mFotaResponseListener:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$FotaResponseListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSyncedDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSyncedDeviceAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getFotaController(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->performHandshake()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->ctxt:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mResourceTracker:Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getEventManager(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2206(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mRemainingListMessages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mRemainingListMessages:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaProgressQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->write(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->prioQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->normalQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->notifyListeners(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    .prologue
    .line 82
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTheirProtoVersion:I

    return v0
.end method

.method static synthetic access$902(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTheirProtoVersion:I

    return p1
.end method

.method private bytesToInt([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "size"    # I

    .prologue
    .line 766
    const/4 v2, 0x0

    .line 767
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 768
    aget-byte v3, p1, v1

    if-gez v3, :cond_0

    aget-byte v3, p1, v1

    add-int/lit16 v0, v3, 0x100

    .line 769
    .local v0, "b":I
    :goto_1
    mul-int/lit8 v3, v1, 0x8

    shl-int v3, v0, v3

    add-int/2addr v2, v3

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "b":I
    :cond_0
    aget-byte v0, p1, v1

    goto :goto_1

    .line 771
    :cond_1
    return v2
.end method

.method private clearResetFlag()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;->clearResetFlag()V

    .line 1291
    return-void
.end method

.method private getCurrentQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendPriority:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;->NORMAL:Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;

    .line 506
    .local v0, "prio":Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;
    :goto_0
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$CostanzaMessageSender$SendPriority:[I

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 514
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->normalQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    :goto_1
    return-object v1

    .line 504
    .end local v0    # "prio":Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendPriority:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;

    move-object v0, v1

    goto :goto_0

    .line 508
    .restart local v0    # "prio":Lcom/sonymobile/smartconnect/hostapp/connection/CostanzaMessageSender$SendPriority;
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    goto :goto_1

    .line 510
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->prioQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    goto :goto_1

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEventManager(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 573
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getEventManager()Lcom/sonymobile/smartconnect/hostapp/notification/EventManager;

    move-result-object v1

    return-object v1
.end method

.method private getExtensionManager(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 578
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getExtensionManager()Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v1

    return-object v1
.end method

.method private getFotaController(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;

    .line 583
    .local v0, "hostApp":Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/CostanzaHostApplication;->getFotaController()Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v1

    return-object v1
.end method

.method private getListeners(I)Ljava/util/List;
    .locals 2
    .param p1, "msgType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 984
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCostanzaMessageListeners:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized getQueue(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .param p1, "category"    # Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;",
            ")",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$SendQueue$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 482
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->normalQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 478
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaProgressQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->prioQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyListeners(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 7
    .param p1, "cmsg"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 952
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 953
    const-string v3, "Received msg: %s."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->getType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getListeners(I)Ljava/util/List;

    move-result-object v2

    .line 958
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;>;"
    if-eqz v2, :cond_1

    .line 959
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;

    .line 960
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;
    invoke-interface {v1, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;->onMessage(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto :goto_0

    .line 963
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;
    :cond_1
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "No listener registered for received message, type: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    :cond_2
    return-void
.end method

.method private declared-synchronized notifyNewFirmwareAccessoryConnected()V
    .locals 3

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .line 415
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;->onNewFirmwareAccessoryConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 414
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 417
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyOldFirmwareAccessoryConnected()V
    .locals 3

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .line 405
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;->onOldFirmwareAccessoryConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 404
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 407
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyOnConnect()V
    .locals 3

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .line 395
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;->onConnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 394
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 397
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyOnDisconnect()V
    .locals 3

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .line 435
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;->onDisconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 434
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 437
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyOnReady()V
    .locals 3

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mResourceTracker:Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->resendTrackedMessages()V

    .line 425
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .line 426
    .local v1, "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;->onReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 423
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 428
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private performHandshake()V
    .locals 4

    .prologue
    .line 594
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVersion;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v3}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestVersion;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 595
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTimeAndLocaleSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->sendTimeAndTimeZone()V

    .line 596
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTimeAndLocaleSender:Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/service/TimeAndLocaleSender;->sendLocale()V

    .line 597
    return-void
.end method

.method private requestNotificationList()V
    .locals 7

    .prologue
    .line 601
    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->ctxt:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getExtensionManager(Landroid/content/Context;)Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;

    move-result-object v1

    .line 602
    .local v1, "extensionManager":Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/ExtensionManager;->getNotificationExtensions()Ljava/util/ArrayList;

    move-result-object v4

    .line 603
    .local v4, "notificationExtensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mRemainingListMessages:I

    .line 606
    iget v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mRemainingListMessages:I

    if-nez v5, :cond_1

    .line 607
    sget-object v5, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->READY:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-direct {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->setConnectionState(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V

    .line 616
    :cond_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 611
    .local v0, "extension":Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;
    new-instance v3, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotificationList;

    iget-object v5, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v5}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotificationList;-><init>(I)V

    .line 612
    .local v3, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotificationList;
    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getCid()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestNotificationList;->setExtensionCid(I)V

    .line 613
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0, v5}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    goto :goto_0
.end method

.method private send(Ljava/lang/Iterable;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "messages":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;>;"
    .local p2, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .line 454
    .local v1, "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->getMessageId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 455
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v2}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->setMessageId(I)V

    .line 457
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    .end local v1    # "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    :cond_2
    return-void
.end method

.method private varargs send(Ljava/util/concurrent/ConcurrentLinkedQueue;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p2, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;[",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;>;"
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 467
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/lang/Iterable;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 469
    :cond_0
    return-void
.end method

.method private declared-synchronized setConnectionState(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V
    .locals 2
    .param p1, "state"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$CommunicationManager$ConnectionState:[I

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 306
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionState() isn\'t checking state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->notifyOnConnect()V

    .line 311
    :goto_1
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mState:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 294
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->notifyNewFirmwareAccessoryConnected()V

    goto :goto_1

    .line 297
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->notifyOldFirmwareAccessoryConnected()V

    goto :goto_1

    .line 300
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->notifyOnReady()V

    goto :goto_1

    .line 303
    :pswitch_4
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->notifyOnDisconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private startReader()V
    .locals 2

    .prologue
    .line 649
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    .line 682
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 683
    return-void
.end method

.method private write(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;)V
    .locals 18
    .param p1, "queue"    # Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 784
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v14}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 785
    .local v9, "out":Ljava/io/OutputStream;
    if-nez v9, :cond_0

    .line 786
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Output stream is null."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 789
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mOutBuffer:[B

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 790
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 791
    .local v8, "messagesWritten":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .line 792
    .local v7, "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;->getPacked(Lcom/sonymobile/smartconnect/hostapp/protocol/Proto;)[[B

    move-result-object v12

    .line 793
    .local v12, "parts":[[B
    if-eqz v12, :cond_1

    .line 794
    const/4 v13, 0x0

    .line 795
    .local v13, "totalLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v14, v12

    if-ge v3, v14, :cond_2

    .line 796
    aget-object v14, v12, v3

    array-length v14, v14

    add-int/2addr v13, v14

    .line 795
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 800
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    if-le v14, v13, :cond_5

    .line 801
    const/4 v11, 0x0

    .line 802
    .local v11, "partIndex":I
    move-object v1, v12

    .local v1, "arr$":[[B
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v10, v1, v5

    .line 803
    .local v10, "part":[B
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 805
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 806
    const-string v14, "Wrote %s part %d/%d (%d bytes) to buffer from %s."

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v17, v11, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    array-length v0, v12

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    array-length v0, v10

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->category()Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 802
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 811
    .end local v10    # "part":[B
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 818
    .end local v1    # "arr$":[[B
    .end local v3    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .end local v11    # "partIndex":I
    .end local v12    # "parts":[[B
    .end local v13    # "totalLength":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v8, :cond_6

    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .line 820
    .restart local v7    # "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    if-nez v7, :cond_8

    .line 831
    .end local v7    # "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mOutBuffer:[B

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v14, v15, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 833
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "Wrote %d msgs (total %d bytes) from %s to output stream."

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->category()Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    :cond_7
    return-void

    .line 825
    .restart local v7    # "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :cond_8
    instance-of v14, v7, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    if-eqz v14, :cond_9

    .line 827
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mResourceTracker:Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    check-cast v7, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;

    .end local v7    # "message":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;->category()Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->track(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)V

    .line 818
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized addCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_0
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeConnections()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->closeActiveConnection()V

    .line 241
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->connect(Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public declared-synchronized getAccessoryFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTheirFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mTheirFirmwareVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->ctxt:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->getWatchFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_0
    monitor-exit p0

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectionManager()Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    return-object v0
.end method

.method public declared-synchronized getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mState:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResetFlag()Z
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mFactoryResetter:Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/costanza/FactoryResetter;->getResetFlag()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v0

    .line 332
    .local v0, "state":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$CommunicationManager$ConnectionState:[I

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 341
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string v2, "isConnected() isn\'t checking all states!"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 344
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 337
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v0

    .line 357
    .local v0, "state":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;
    sget-object v2, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$2;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$CommunicationManager$ConnectionState:[I

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 366
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const-string v2, "isReady() isn\'t checking all states!"

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;)Z

    .line 369
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 359
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->setConnectionState(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V

    .line 630
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;-><init>(I)V

    .line 631
    .local v0, "msg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;
    invoke-virtual {v0, v3}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;->setAction(I)V

    .line 632
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 635
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mSendMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$SendMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 639
    :cond_0
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CommunicationManager - onConnected - start receiving messages..."

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 642
    :cond_1
    iput v3, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    .line 645
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->startReader()V

    .line 646
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 687
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CommunicationManager - onDisconnected!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    sget-object v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->DISCONNECTED:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    invoke-direct {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->setConnectionState(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;)V

    .line 691
    :cond_1
    return-void
.end method

.method public onMessageAck(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mResourceTracker:Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->onAck(I)V

    .line 1283
    return-void
.end method

.method public onMessageNack(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mResourceTracker:Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;

    invoke-virtual {v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/ResourceSendTracker;->onNack(I)V

    .line 1287
    return-void
.end method

.method protected read()Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x4

    .line 710
    const/4 v1, 0x0

    .line 717
    .local v1, "cmsg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    :goto_0
    if-nez v1, :cond_2

    .line 718
    const/4 v3, -0x1

    .line 719
    .local v3, "readBytes":I
    const/4 v0, 0x0

    .line 720
    .local v0, "bytesLeft":I
    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    rsub-int/lit8 v5, v7, 0x4

    .line 723
    .local v5, "sizeBytes":I
    :cond_0
    :goto_1
    :try_start_0
    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    if-ge v7, v10, :cond_3

    .line 724
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mInputStream:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadBuf:[B

    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    invoke-virtual {v7, v8, v9, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 725
    if-lez v3, :cond_0

    .line 726
    sub-int/2addr v5, v3

    .line 727
    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 740
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Communications manager got an IOException during buffer read and will return null."

    invoke-static {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_1
    move-object v1, v6

    .line 756
    .end local v0    # "bytesLeft":I
    .end local v1    # "cmsg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "readBytes":I
    .end local v5    # "sizeBytes":I
    :cond_2
    :goto_2
    return-object v1

    .line 730
    .restart local v0    # "bytesLeft":I
    .restart local v1    # "cmsg":Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .restart local v3    # "readBytes":I
    .restart local v5    # "sizeBytes":I
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadBuf:[B

    const/4 v8, 0x4

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->bytesToInt([BI)I

    move-result v4

    .line 731
    .local v4, "reslen":I
    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    sub-int v0, v4, v7

    .line 732
    :cond_4
    :goto_3
    if-lez v0, :cond_5

    .line 733
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mInputStream:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadBuf:[B

    iget v9, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    invoke-virtual {v7, v8, v9, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 734
    if-lez v3, :cond_4

    .line 735
    iget v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    add-int/2addr v7, v3

    iput v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I

    .line 736
    sub-int/2addr v0, v3

    goto :goto_3

    .line 739
    :cond_5
    const/4 v7, 0x0

    iput v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadOffset:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 754
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReadBuf:[B

    invoke-virtual {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->unpack([B)Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    move-result-object v1

    .line 755
    goto :goto_0

    .line 743
    .end local v4    # "reslen":I
    :catch_1
    move-exception v2

    .line 744
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 745
    const-string v7, "Communications manager got an IndexOutOfBoundsException during buffer read. We can not recover from this, reconnecting! "

    invoke-static {v7, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->e(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 747
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v7}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->reconnect()V

    move-object v1, v6

    .line 748
    goto :goto_2
.end method

.method public receive(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReceiveMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mReceiveMessageHandler:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ReceiveMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void
.end method

.method public registerDefaultMessageListeners()V
    .locals 1

    .prologue
    .line 1048
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseVersionListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 1063
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseFotaListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseFotaListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 1079
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1IndicationFotaBatteryLevelListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1IndicationFotaBatteryLevelListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 1092
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1CostanzaResourceListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1CostanzaResourceListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 1126
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1CostanzaExtensionResponseListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1CostanzaExtensionResponseListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 1196
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1FactoryResetListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 1274
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$1ResponseNotificationListListener;-><init>(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V

    .line 1275
    return-void
.end method

.method public registerMessageListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;

    .prologue
    .line 974
    invoke-interface {p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;->getMessageTypeToListenFor()I

    move-result v1

    .line 975
    .local v1, "msgType":I
    invoke-direct {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getListeners(I)Ljava/util/List;

    move-result-object v0

    .line 976
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;>;"
    if-nez v0, :cond_0

    .line 977
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 978
    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CostanzaMessageListener;>;"
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCostanzaMessageListeners:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    return-void
.end method

.method public declared-synchronized removeCommunicationListener(Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$CommunicationListener;

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mCommunicationListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_0
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs send(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "category"    # Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;
    .param p2, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getQueue(Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue$Category;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/util/concurrent/ConcurrentLinkedQueue;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 474
    return-void
.end method

.method public send(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "messages":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;>;"
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getCurrentQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/lang/Iterable;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 496
    return-void
.end method

.method public varargs send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getCurrentQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/util/concurrent/ConcurrentLinkedQueue;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 501
    return-void
.end method

.method public sendFactoryResetMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 555
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Executing factory reset"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 556
    :cond_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;-><init>(I)V

    .line 557
    .local v0, "resetMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;
    invoke-virtual {v0, v2}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestFactoryReset;->setAction(I)V

    .line 558
    new-array v1, v2, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 559
    return-void
.end method

.method public sendForceCrashMessage()V
    .locals 3

    .prologue
    .line 562
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Executing force crash"

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 563
    :cond_0
    new-instance v0, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mMsgIdProvider:Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/costanza/db/MessageIdProvider;->getNewMessageId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;-><init>(I)V

    .line 564
    .local v0, "forceCrashMsg":Lcom/sonymobile/smartconnect/hostapp/protocol/RequestForceCrash;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 565
    return-void
.end method

.method public sendFotaMessages(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "messages":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/lang/Iterable;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 540
    return-void
.end method

.method public varargs sendFotaMessages([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/util/concurrent/ConcurrentLinkedQueue;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 545
    return-void
.end method

.method public sendFotaProgress(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->fotaProgressQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/util/concurrent/ConcurrentLinkedQueue;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 552
    :cond_0
    return-void
.end method

.method public sendPrioritized(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "messages":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;>;"
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->prioQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/lang/Iterable;Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 527
    return-void
.end method

.method public varargs sendPrioritized([Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 1
    .param p1, "messages"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->prioQ:Lcom/sonymobile/smartconnect/hostapp/connection/SendQueue;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->send(Ljava/util/concurrent/ConcurrentLinkedQueue;[Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V

    .line 532
    return-void
.end method

.method public declared-synchronized setConnectionManager(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;)V
    .locals 1
    .param p1, "connectionManager"    # Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    if-ne v0, p1, :cond_1

    .line 250
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConnectionManager.setConnectionManager(), same manager supplied. Ignoring."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->closeActiveConnection()V

    .line 256
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->stopAcceptingConnections()V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->removeConnectionListener(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;)V

    .line 258
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ConnectionManager.setConnectionManager(), ConnectionManager overriden!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    .line 263
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    .line 264
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0, p0}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->addConnectionListener(Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionListener;)V

    .line 265
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->startAcceptingConnections()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ConnectionManager.setConnectionManager() first set!"

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected write(Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    return-void
.end method

.method protected write([B)V
    .locals 3
    .param p1, "messagePart"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->mConnectionManager:Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;

    invoke-interface {v1}, Lcom/sonymobile/smartconnect/hostapp/connection/ConnectionManager;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 844
    .local v0, "out":Ljava/io/OutputStream;
    if-nez v0, :cond_0

    .line 845
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Output stream is null."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 848
    return-void
.end method

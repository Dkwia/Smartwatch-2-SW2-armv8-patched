.class public Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;
.super Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;
.source "ResourceNotification.java"


# static fields
.field public static final NOTIFICATION_KEY_BITMAP_RENDERING:I = 0x11

.field public static final NOTIFICATION_KEY_CONTACT_ICON:I = 0x5

.field public static final NOTIFICATION_KEY_DISPLAY_NAME:I = 0x1

.field public static final NOTIFICATION_KEY_DISPLAY_NAME_BOLD_IMAGE:I = 0xc

.field public static final NOTIFICATION_KEY_DISPLAY_NAME_DRAWER:I = 0xd

.field public static final NOTIFICATION_KEY_DISPLAY_NAME_WHITE_IMAGE:I = 0xb

.field public static final NOTIFICATION_KEY_IMAGE:I = 0x6

.field public static final NOTIFICATION_KEY_MESSAGE:I = 0x2

.field public static final NOTIFICATION_KEY_MESSAGE_BOLD_IMAGE:I = 0x10

.field public static final NOTIFICATION_KEY_MESSAGE_DRAWER_WHITE_IMAGE:I = 0xf

.field public static final NOTIFICATION_KEY_MESSAGE_WHITE_IMAGE:I = 0xe

.field public static final NOTIFICATION_KEY_RICH_ICON:I = 0x4

.field public static final NOTIFICATION_KEY_STATUS_BAR_ICON:I = 0x3

.field public static final NOTIFICATION_KEY_TITLE:I = 0x0

.field public static final NOTIFICATION_KEY_TITLE_BOLD_IMAGE:I = 0xa

.field public static final NOTIFICATION_KEY_TITLE_WHITE_IMAGE:I = 0x9

.field public static final NOTIFICATION_KEY_WIDGET_COLOR_ICON:I = 0x7

.field public static final NOTIFICATION_KEY_WIDGET_GRAYSCALE_ICON:I = 0x8

.field public static final NO_CID:I = -0x1


# instance fields
.field private mFields:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

.field private mLocalization:I

.field private mNotificationExtensionCid:I

.field private mOfflineMenuCid:I

.field private mOfflineMenuScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

.field private mOnlineMenuCid:I

.field private mOnlineMenuScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

.field private mPersonal:Z

.field private mReadStatus:Z

.field private mSubScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "newcid"    # I
    .param p2, "newMessageId"    # I

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;-><init>(II)V

    .line 27
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOnlineMenuCid:I

    .line 29
    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOfflineMenuCid:I

    .line 57
    const/4 v0, 0x7

    iput v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/CostanzaResource;->cidType:I

    .line 58
    return-void
.end method


# virtual methods
.method public getFields()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mFields:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

    return-object v0
.end method

.method public getLocalization()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mLocalization:I

    return v0
.end method

.method public getNotificationExtensionCid()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mNotificationExtensionCid:I

    return v0
.end method

.method public getOfflineMenuCid()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOfflineMenuCid:I

    return v0
.end method

.method public getOfflineMenuScreens()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOfflineMenuScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    return-object v0
.end method

.method public getOnlineMenuCid()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOnlineMenuCid:I

    return v0
.end method

.method public getOnlineMenuScreens()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOnlineMenuScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    return-object v0
.end method

.method public getSubScreens()[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mSubScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mTimeStamp:J

    return-wide v0
.end method

.method public isPersonal()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mPersonal:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mReadStatus:Z

    return v0
.end method

.method public setFields([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;)V
    .locals 0
    .param p1, "fields"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mFields:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotificationDataMap;

    .line 90
    return-void
.end method

.method public setLocalization(I)V
    .locals 0
    .param p1, "localization"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mLocalization:I

    .line 98
    return-void
.end method

.method public setNotificationExtensionCid(I)V
    .locals 0
    .param p1, "notificationExtensionCid"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mNotificationExtensionCid:I

    .line 106
    return-void
.end method

.method public setOfflineMenuCid(I)V
    .locals 0
    .param p1, "offlineMenuCid"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOfflineMenuCid:I

    .line 138
    return-void
.end method

.method public setOfflineMenuScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V
    .locals 0
    .param p1, "offlineMenuScreens"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOfflineMenuScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 146
    return-void
.end method

.method public setOnlineMenuCid(I)V
    .locals 0
    .param p1, "onlineMenuCid"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOnlineMenuCid:I

    .line 122
    return-void
.end method

.method public setOnlineMenuScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V
    .locals 0
    .param p1, "onlineMenuScreens"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mOnlineMenuScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 130
    return-void
.end method

.method public setPersonal(Z)V
    .locals 0
    .param p1, "personal"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mPersonal:Z

    .line 74
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mReadStatus:Z

    .line 66
    return-void
.end method

.method public setSubScreens([Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;)V
    .locals 0
    .param p1, "subScreens"    # [Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mSubScreens:[Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceSubCid;

    .line 114
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/sonymobile/smartconnect/hostapp/protocol/ResourceNotification;->mTimeStamp:J

    .line 82
    return-void
.end method

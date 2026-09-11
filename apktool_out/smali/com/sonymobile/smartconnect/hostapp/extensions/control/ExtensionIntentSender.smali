.class public Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;
.super Ljava/lang/Object;
.source "ExtensionIntentSender.java"


# instance fields
.field private final mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

.field private final mExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

.field private final mExtensionKey:Ljava/lang/String;

.field private final mExtensionPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;)V
    .locals 1
    .param p1, "ahaIntentSender"    # Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;
    .param p2, "extension"    # Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    .line 26
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mExtensionPackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->getExtensionKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mExtensionKey:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    .line 29
    return-void
.end method

.method private sendObjectClickIntent(II)V
    .locals 2
    .param p1, "clickType"    # I
    .param p2, "layoutReference"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.OBJECT_CLICK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "click_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    if-lez p2, :cond_0

    .line 144
    const-string v1, "layout_reference"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method private sendWidgetIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "instanceId"    # I

    .prologue
    .line 188
    const-string v0, "instance_id"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v0, "key"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 191
    return-void
.end method


# virtual methods
.method public sendConnectionStatusIntent(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.extras.liveware.aef.registration.ACCESSORY_CONNECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 76
    .local v0, "connectionStatus":I
    :goto_0
    const-string v2, "connnection_status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 78
    return-void

    .line 73
    .end local v0    # "connectionStatus":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendControlKeyEventIntent(IIJ)V
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "eventType"    # I
    .param p3, "timestamp"    # J

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.KEY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "event_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    const-string v1, "key_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public sendControlListItemClickIntent(Landroid/os/Bundle;II)V
    .locals 2
    .param p1, "listItem"    # Landroid/os/Bundle;
    .param p2, "clickType"    # I
    .param p3, "layoutReference"    # I

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.LIST_ITEM_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    const-string v1, "click_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    if-lez p3, :cond_0

    .line 124
    const-string v1, "list_item_layout_reference"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public sendControlListItemSelectedIntent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "listItem"    # Landroid/os/Bundle;

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.LIST_ITEM_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public sendControlListRequest(II)V
    .locals 2
    .param p1, "mLayoutReference"    # I
    .param p2, "position"    # I

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.LIST_REQUEST_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "layout_reference"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v1, "list_item_position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public sendControlPauseIntent()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.sonyericsson.extras.aef.control.PAUSE"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public sendControlResumeIntent()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "com.sonyericsson.extras.aef.control.RESUME"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public sendControlStartIntent()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "com.sonyericsson.extras.aef.control.START"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public sendControlStopIntent()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.sonyericsson.extras.aef.control.STOP"

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public sendControlSwipeEventIntent(I)V
    .locals 2
    .param p1, "swipeDirection"    # I

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.SWIPE_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public sendControlTouchEventIntent(IJII)V
    .locals 4
    .param p1, "touchAction"    # I
    .param p2, "timeStamp"    # J
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.TOUCH_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 52
    const-string v1, "x_pos"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v1, "y_pos"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public sendIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const-string v1, "extension_key"

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mExtensionKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mExtensionPackageName:Ljava/lang/String;

    .line 100
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mExtension:Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->mAhaIntentSender:Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;

    invoke-virtual {v1, v2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/Extension;->sendIntent(Lcom/sonymobile/smartconnect/hostapp/extensions/AhaIntentSender;Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public sendIntent(Ljava/lang/String;)V
    .locals 1
    .param p1, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method public sendMenuItemSelectedIntent(I)V
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.MENU_ITEM_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "menuItemId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public sendObjectLongClickIntent(I)V
    .locals 1
    .param p1, "layoutReference"    # I

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendObjectClickIntent(II)V

    .line 136
    return-void
.end method

.method public sendObjectShortClickIntent(I)V
    .locals 1
    .param p1, "layoutReference"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendObjectClickIntent(II)V

    .line 132
    return-void
.end method

.method public sendPowerSaveModeChangedIntent(Z)V
    .locals 3
    .param p1, "isActivePowerSaveModeOn"    # Z

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.control.ACTIVE_POWER_SAVE_MODE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "active_power_mode_status"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendIntent(Landroid/content/Intent;)V

    .line 87
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendWidgetClickIntent(Ljava/lang/String;III)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "clickType"    # I
    .param p4, "layoutReference"    # I

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.widget.OBJECT_CLICK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "widget_event_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v1, "layout_reference"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-direct {p0, v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 185
    return-void
.end method

.method public sendWidgetStartRequest(ILjava/lang/String;)V
    .locals 5
    .param p1, "instanceId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.widget.START_REFRESH_IMAGE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 159
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "Sent WIDGET_START_REQUEST, instanceId=%d, key=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method

.method public sendWidgetStopRequest(ILjava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.widget.STOP_REFRESH_IMAGE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0, p2, p1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method public sendWidgetTouchIntent(Ljava/lang/String;IIII)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "instanceId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "action"    # I

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.extras.aef.widget.ONTOUCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "widget_event_x_pos"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v1, "widget_event_y_pos"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v1, "widget_event_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-direct {p0, v0, p1, p2}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionIntentSender;->sendWidgetIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 177
    return-void
.end method

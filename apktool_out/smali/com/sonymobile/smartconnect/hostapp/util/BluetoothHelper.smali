.class public Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveWatchAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"
    .param p1, "address"

    .prologue
    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "sw2_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "sw2_bt_address"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getSavedWatchAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "sw2_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "sw2_bt_address"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    :cond_1
    return-object v0
.end method

.method public static saveWatchFirmwareVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"
    .param p1, "version"

    .prologue
    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "sw2_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "sw2_accessory_fw_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getWatchFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "sw2_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "sw2_accessory_fw_version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_fallback

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_fallback

    return-object v0

    :cond_fallback
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->findBondedWatchAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ret_null

    const-string v0, "1.0.B.6.40"

    return-object v0

    :cond_ret_null
    return-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public static findBondedWatchAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"

    .prologue
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "smartwatch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sw2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_3

    invoke-static {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->saveWatchAddress(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v1

    :cond_4
    return-object v0
.end method

.method public static resolveWatchAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"
    .param p1, "btAddress"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->saveWatchAddress(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->getSavedWatchAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    return-object v0

    :cond_3
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->findBondedWatchAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static startCostanzaService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"

    .prologue
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/smartconnect/hostapp/costanza/service/CostanzaService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->resolveWatchAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "Address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SERVICE_COMMAND"

    const-string v3, "REGISTER"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static checkPermissions(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"

    .prologue
    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_4

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static handleUpdateAccessory(Landroid/app/Activity;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Landroid/app/AlertDialog;)V
    .locals 5
    .param p0, "activity"
    .param p1, "comMgr"
    .param p2, "fotaController"
    .param p3, "upToDateDialog"

    .prologue
    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->READY:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_start_serv

    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->CONNECTED_TO_OLDER_FIRMWARE:Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_start_serv

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->performFota()V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->getWatchFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->getEmbeddedFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->compareFirmware(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3

    if-eqz p3, :cond_start_serv

    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    :cond_start_serv
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->resolveWatchAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "SmartWatch 2 is not connected. Please pair it in Bluetooth settings."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->startCostanzaService(Landroid/content/Context;)V

    const-string v0, "Connecting to SmartWatch 2... Please wait."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    instance-of v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->updateAccessoryVersionSummary()V

    :cond_5
    return-void
.end method

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

    const/4 v6, 0x0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fallback_first

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_has_first

    move-object v6, v7

    :cond_has_first
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "smartwatch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_found

    const-string v5, "smart watch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_found

    const-string v5, "sw2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_found

    const-string v5, "sw 2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_found

    const-string v5, "costanza"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_found

    const-string v5, "watch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_found

    const-string v5, "sony"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_found
    if-eqz v7, :cond_1

    if-eqz p0, :cond_ret_7

    invoke-static {p0, v7}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->saveWatchAddress(Landroid/content/Context;Ljava/lang/String;)V

    :cond_ret_7
    return-object v7

    :cond_fallback_first
    if-eqz v6, :cond_4

    if-eqz p0, :cond_ret_6

    invoke-static {p0, v6}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->saveWatchAddress(Landroid/content/Context;Ljava/lang/String;)V

    :cond_ret_6
    return-object v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

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

    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->findBondedWatchAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    return-object v0

    :cond_3
    invoke-static {p0}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->getSavedWatchAddress(Landroid/content/Context;)Ljava/lang/String;

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

.method public static connectRfcommSocket(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v7, 0x0

    if-nez p0, :cond_0

    return-object v7

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_try2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_try2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_try2

    :try_start_c0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c0} :catch_c0

    :catch_c0
    const/4 v0, 0x0

    :cond_try2
    if-eqz p1, :cond_try3

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_try3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v1

    if-eqz v0, :cond_try3

    :try_start_c1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c1} :catch_c1

    :catch_c1
    const/4 v0, 0x0

    :cond_try3
    :try_start_2
    const-string v1, "8E780522-3C51-11E1-8D8D-001CC4D601D8"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_try4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_2
    move-exception v1

    if-eqz v0, :cond_try4

    :try_start_c2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_c2} :catch_c2

    :catch_c2
    const/4 v0, 0x0

    :cond_try4
    :try_start_3
    const-string v1, "8E780522-3C51-11E1-8D8D-001CC4D601D8"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_try5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v1

    if-eqz v0, :cond_try5

    :try_start_c3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_c3} :catch_c3

    :catch_c3
    const/4 v0, 0x0

    :cond_try5
    :try_start_4
    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_try6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    :catch_4
    move-exception v1

    if-eqz v0, :cond_try6

    :try_start_c4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c4} :catch_c4

    :catch_c4
    const/4 v0, 0x0

    :cond_try6
    :try_start_5
    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_try7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    :catch_5
    move-exception v1

    if-eqz v0, :cond_try7

    :try_start_c5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_c5} :catch_c5

    :catch_c5
    const/4 v0, 0x0

    :cond_try7
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createInsecureRfcommSocket"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_try8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    return-object v0

    :catch_6
    move-exception v1

    if-eqz v0, :cond_try8

    :try_start_c6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_c6} :catch_c6

    :catch_c6
    const/4 v0, 0x0

    :cond_try8
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createRfcommSocket"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_try9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    return-object v0

    :catch_7
    move-exception v1

    if-eqz v0, :cond_try9

    :try_start_c7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_c7} :catch_c7

    :catch_c7
    const/4 v0, 0x0

    :cond_try9
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createInsecureRfcommSocket"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_try10

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    return-object v0

    :catch_8
    move-exception v1

    if-eqz v0, :cond_try10

    :try_start_c8
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_c8} :catch_c8

    :catch_c8
    const/4 v0, 0x0

    :cond_try10
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "createRfcommSocket"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_fail

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    return-object v0

    :catch_9
    move-exception v1

    if-eqz v0, :cond_fail

    :try_start_c9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_c9} :catch_c9

    :catch_c9
    const/4 v0, 0x0

    :cond_fail
    return-object v7
.end method

.method public static listenRfcommServerSocket(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    return-object v1
.end method

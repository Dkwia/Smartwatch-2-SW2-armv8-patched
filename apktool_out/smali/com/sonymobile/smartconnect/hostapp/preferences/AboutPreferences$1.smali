.class Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;
.super Ljava/lang/Object;
.source "AboutPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v0

    .line 72
    .local v0, "comMgr":Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;
    sget-object v1, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$5;->$SwitchMap$com$sonymobile$smartconnect$hostapp$connection$CommunicationManager$ConnectionState:[I

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;->getConnectionState()Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager$ConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 74
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;->performFota()V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

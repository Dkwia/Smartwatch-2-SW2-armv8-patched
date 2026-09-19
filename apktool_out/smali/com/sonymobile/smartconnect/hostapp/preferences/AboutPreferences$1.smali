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
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-static {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->access$000(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-static {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->access$200(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences$1;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;

    invoke-static {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;->access$100(Lcom/sonymobile/smartconnect/hostapp/preferences/AboutPreferences;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/util/BluetoothHelper;->handleUpdateAccessory(Landroid/app/Activity;Lcom/sonymobile/smartconnect/hostapp/connection/CommunicationManager;Lcom/sonymobile/smartconnect/hostapp/fota/FotaController;Landroid/app/AlertDialog;)V

    const/4 v0, 0x1

    return v0
.end method

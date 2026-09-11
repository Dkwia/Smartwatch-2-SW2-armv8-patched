.class Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$3;
.super Ljava/lang/Object;
.source "MyAppsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->showMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 253
    iget-object v2, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-virtual {v2}, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 256
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_show_preference_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

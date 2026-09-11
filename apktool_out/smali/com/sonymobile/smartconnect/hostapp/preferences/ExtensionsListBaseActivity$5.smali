.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$5;
.super Ljava/lang/Object;
.source "ExtensionsListBaseActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-virtual {v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/smartconnect/hostapp/preferences/myapps/MyAppsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$5;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-virtual {v1, v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    const/4 v1, 0x1

    return v1
.end method

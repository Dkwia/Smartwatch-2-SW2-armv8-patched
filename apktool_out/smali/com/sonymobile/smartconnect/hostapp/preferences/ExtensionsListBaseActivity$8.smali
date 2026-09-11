.class Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$8;
.super Ljava/lang/Object;
.source "ExtensionsListBaseActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->updateExtensionPreferenceLists()V
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
    .line 501
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$8;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$8;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->access$400(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$8;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->sendMarketExtensionDetailsIntent(Ljava/lang/String;)V

    .line 516
    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 507
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_1
    instance-of v0, p1, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity$8;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;->access$500(Lcom/sonymobile/smartconnect/hostapp/preferences/ExtensionsListBaseActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast p1, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/sonymobile/smartconnect/hostapp/preferences/IconPreference;->getAlternativeLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/util/MarketUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "Unexpected preference class."

    invoke-static {v0}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method

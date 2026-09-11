.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$3;
.super Ljava/lang/Object;
.source "WatchFaceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->createInformationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 188
    iget-object v1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    const-string v2, "WATCH_FACE_PREFERENCES"

    iget-object v3, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity$3;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;

    invoke-virtual {v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getApplicationContext()Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WatchFaceListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "WATCH_FACE_INFO"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 191
    return-void
.end method

.class Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$2;
.super Ljava/lang/Object;
.source "WidgetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment$2;->this$0:Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;

    invoke-virtual {v0}, Lcom/sonymobile/smartconnect/hostapp/preferences/watchfaces/WidgetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070098

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    return-void
.end method

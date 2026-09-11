.class Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;
.super Landroid/util/LruCache;
.source "ListControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemControlLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWeaklyReferencedListItems:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;


# direct methods
.method public constructor <init>(Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;I)V
    .locals 1
    .param p2, "maxSize"    # I

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;->this$0:Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl;

    .line 145
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 146
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;->mWeaklyReferencedListItems:Ljava/util/WeakHashMap;

    .line 147
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Integer;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;->mWeaklyReferencedListItems:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;->create(Ljava/lang/Integer;)Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    move-result-object v0

    return-object v0
.end method

.method protected entryRemoved(ZLjava/lang/Integer;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;)V
    .locals 1
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "oldValue"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;
    .param p4, "newValue"    # Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    .prologue
    .line 157
    if-nez p4, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;->mWeaklyReferencedListItems:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    .end local p3    # "x2":Ljava/lang/Object;
    check-cast p4, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListControl$ListItemControlLruCache;->entryRemoved(ZLjava/lang/Integer;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;Lcom/sonymobile/smartconnect/hostapp/costanza/uicontrol/ListItemControl;)V

    return-void
.end method

.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback;
.super Ljava/lang/Object;
.source "MarkModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;
    }
.end annotation


# static fields
.field public static final MARK_ALL_POSITION:I = 0x0

.field public static final UNMARK_ALL_POSITION:I = 0x1


# virtual methods
.method public abstract getActionMenu()Landroid/view/Menu;
.end method

.method public abstract notifyDataSetChanged()V
.end method

.method public abstract setMarkCallBackListener(Lcom/sonymobile/smartconnect/hostapp/preferences/menu/MarkModeCallback$MarkableListener;)V
.end method

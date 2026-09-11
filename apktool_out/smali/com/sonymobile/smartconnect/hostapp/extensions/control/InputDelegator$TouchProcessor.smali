.class public interface abstract Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator$TouchProcessor;
.super Ljava/lang/Object;
.source "InputDelegator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/hostapp/extensions/control/InputDelegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TouchProcessor"
.end annotation


# virtual methods
.method public abstract onSwipe(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationSwipe;)V
.end method

.method public abstract onTouch(Lcom/sonymobile/smartconnect/hostapp/protocol/IndicationTouch;)V
.end method

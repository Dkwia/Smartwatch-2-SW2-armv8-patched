.class public interface abstract Lcom/sonyericsson/extras/liveware/aef/registration/Registration$ApiRegistrationColumns;
.super Ljava/lang/Object;
.source "Registration.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/aef/registration/Registration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiRegistrationColumns"
.end annotation


# static fields
.field public static final CONTROL_API_VERSION:Ljava/lang/String; = "controlApiVersion"

.field public static final CONTROL_BACK_INTERCEPT:Ljava/lang/String; = "controlBackIntercept"

.field public static final EXTENSION_ID:Ljava/lang/String; = "extensionId"

.field public static final HOST_APPLICATION_PACKAGE:Ljava/lang/String; = "hostAppPackageName"

.field public static final LOW_POWER_SUPPORT:Ljava/lang/String; = "lowPowerSupport"

.field public static final SENSOR_API_VERSION:Ljava/lang/String; = "sensorApiVersion"

.field public static final WIDGET_API_VERSION:Ljava/lang/String; = "widgetApiVersion"

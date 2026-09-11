.class public interface abstract Lcom/sonyericsson/extras/liveware/aef/control/Control$Intents;
.super Ljava/lang/Object;
.source "Control.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/extras/liveware/aef/control/Control;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Intents"
.end annotation


# static fields
.field public static final ACTIVE_POWER_SAVE_MODE_OFF:I = 0x0

.field public static final ACTIVE_POWER_SAVE_MODE_ON:I = 0x1

.field public static final CLICK_TYPE_LONG:I = 0x1

.field public static final CLICK_TYPE_SHORT:I = 0x0

.field public static final CONTROL_ACTION_OFF:I = 0x1

.field public static final CONTROL_ACTION_ON:I = 0x0

.field public static final CONTROL_ACTIVE_POWER_SAVE_MODE_STATUS_CHANGED_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.ACTIVE_POWER_SAVE_MODE_STATUS_CHANGED"

.field public static final CONTROL_CLEAR_DISPLAY_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.CLEAR_DISPLAY"

.field public static final CONTROL_DISPLAY_DATA_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.DISPLAY_DATA"

.field public static final CONTROL_ERROR_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.ERROR"

.field public static final CONTROL_KEY_EVENT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.KEY_EVENT"

.field public static final CONTROL_LED_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LED"

.field public static final CONTROL_LIST_COUNT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LIST_COUNT"

.field public static final CONTROL_LIST_ITEM_CLICK_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LIST_ITEM_CLICK"

.field public static final CONTROL_LIST_ITEM_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LIST_ITEM"

.field public static final CONTROL_LIST_ITEM_SELECTED_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LIST_ITEM_SELECTED"

.field public static final CONTROL_LIST_MOVE_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LIST_MOVE"

.field public static final CONTROL_LIST_REFRESH_REQUEST_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LIST_REFERESH_REQUEST"

.field public static final CONTROL_LIST_REQUEST_ITEM_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.LIST_REQUEST_ITEM"

.field public static final CONTROL_MENU_ITEM_SELECTED:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.MENU_ITEM_SELECTED"

.field public static final CONTROL_MENU_SHOW:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.MENU_SHOW"

.field public static final CONTROL_OBJECT_CLICK_EVENT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.OBJECT_CLICK_EVENT"

.field public static final CONTROL_PAUSE_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.PAUSE"

.field public static final CONTROL_PROCESS_LAYOUT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.PROCESS_LAYOUT"

.field public static final CONTROL_RESUME_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.RESUME"

.field public static final CONTROL_SEND_IMAGE_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.SEND_IMAGE"

.field public static final CONTROL_SEND_TEXT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.SEND_TEXT"

.field public static final CONTROL_SET_SCREEN_STATE_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.SET_SCREEN_STATE"

.field public static final CONTROL_START_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.START"

.field public static final CONTROL_START_REQUEST_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.START_REQUEST"

.field public static final CONTROL_STOP_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.STOP"

.field public static final CONTROL_STOP_LED_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.STOP_LED"

.field public static final CONTROL_STOP_REQUEST_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.STOP_REQUEST"

.field public static final CONTROL_STOP_VIBRATE_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.STOP_VIBRATE"

.field public static final CONTROL_SWIPE_EVENT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.SWIPE_EVENT"

.field public static final CONTROL_TAP_EVENT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.TAP_EVENT"

.field public static final CONTROL_TOUCH_EVENT_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.TOUCH_EVENT"

.field public static final CONTROL_VIBRATE_INTENT:Ljava/lang/String; = "com.sonyericsson.extras.aef.control.VIBRATE"

.field public static final EXTRA_ACTIVE_POWER_MODE_STATUS:Ljava/lang/String; = "active_power_mode_status"

.field public static final EXTRA_AEA_PACKAGE_NAME:Ljava/lang/String; = "aea_package_name"

.field public static final EXTRA_AHA_PACKAGE_NAME:Ljava/lang/String; = "aha_package_name"

.field public static final EXTRA_CLICK_TYPE:Ljava/lang/String; = "click_type"

.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_DATA_URI:Ljava/lang/String; = "data_uri"

.field public static final EXTRA_DATA_XML_LAYOUT:Ljava/lang/String; = "data_xml_layout"

.field public static final EXTRA_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_EXTENSION_KEY:Ljava/lang/String; = "extension_key"

.field public static final EXTRA_KEY_ACTION:Ljava/lang/String; = "event_type"

.field public static final EXTRA_KEY_CODE:Ljava/lang/String; = "key_code"

.field public static final EXTRA_LAYOUT_DATA:Ljava/lang/String; = "layout_data"

.field public static final EXTRA_LAYOUT_REFERENCE:Ljava/lang/String; = "layout_reference"

.field public static final EXTRA_LED_COLOR:Ljava/lang/String; = "led_color"

.field public static final EXTRA_LED_ID:Ljava/lang/String; = "led_id"

.field public static final EXTRA_LIST_CONTENT:Ljava/lang/String; = "list_content"

.field public static final EXTRA_LIST_COUNT:Ljava/lang/String; = "list_count"

.field public static final EXTRA_LIST_ITEM_ID:Ljava/lang/String; = "list_item_id"

.field public static final EXTRA_LIST_ITEM_LAYOUT_REFERENCE:Ljava/lang/String; = "list_item_layout_reference"

.field public static final EXTRA_LIST_ITEM_POSITION:Ljava/lang/String; = "list_item_position"

.field public static final EXTRA_LIST_REFRESH_ALLOWED:Ljava/lang/String; = "list_referesh_allowed"

.field public static final EXTRA_MENU_ITEMS:Ljava/lang/String; = "menuItems"

.field public static final EXTRA_MENU_ITEM_ICON:Ljava/lang/String; = "menuItemIcon"

.field public static final EXTRA_MENU_ITEM_ID:Ljava/lang/String; = "menuItemId"

.field public static final EXTRA_MENU_ITEM_TEXT:Ljava/lang/String; = "menuItemText"

.field public static final EXTRA_OFF_DURATION:Ljava/lang/String; = "off_duration"

.field public static final EXTRA_ON_DURATION:Ljava/lang/String; = "on_duration"

.field public static final EXTRA_REPEATS:Ljava/lang/String; = "repeats"

.field public static final EXTRA_SCREEN_STATE:Ljava/lang/String; = "screen_state"

.field public static final EXTRA_SWIPE_DIRECTION:Ljava/lang/String; = "direction"

.field public static final EXTRA_TAP_ACTION:Ljava/lang/String; = "tap_action"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "text_from extension"

.field public static final EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final EXTRA_TIME_OFFSET:Ljava/lang/String; = "time_offset"

.field public static final EXTRA_TOUCH_ACTION:Ljava/lang/String; = "action"

.field public static final EXTRA_X_OFFSET:Ljava/lang/String; = "x_offset"

.field public static final EXTRA_X_POS:Ljava/lang/String; = "x_pos"

.field public static final EXTRA_Y_OFFSET:Ljava/lang/String; = "y_offset"

.field public static final EXTRA_Y_POS:Ljava/lang/String; = "y_pos"

.field public static final KEY_ACTION_PRESS:I = 0x0

.field public static final KEY_ACTION_RELEASE:I = 0x1

.field public static final KEY_ACTION_REPEAT:I = 0x2

.field public static final REPEAT_UNTIL_STOP_INTENT:I = -0x1

.field public static final SCREEN_STATE_AUTO:I = 0x3

.field public static final SCREEN_STATE_DIM:I = 0x1

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x2

.field public static final SWIPE_DIRECTION_DOWN:I = 0x1

.field public static final SWIPE_DIRECTION_LEFT:I = 0x2

.field public static final SWIPE_DIRECTION_RIGHT:I = 0x3

.field public static final SWIPE_DIRECTION_UP:I = 0x0

.field public static final TOUCH_ACTION_LONGPRESS:I = 0x1

.field public static final TOUCH_ACTION_PRESS:I = 0x0

.field public static final TOUCH_ACTION_RELEASE:I = 0x2

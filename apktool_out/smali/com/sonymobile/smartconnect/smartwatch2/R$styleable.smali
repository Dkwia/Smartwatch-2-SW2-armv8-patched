.class public final Lcom/sonymobile/smartconnect/smartwatch2/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/smartconnect/smartwatch2/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DragSortListView:[I

.field public static final DragSortListView_click_remove_id:I = 0x10

.field public static final DragSortListView_collapsed_height:I = 0x0

.field public static final DragSortListView_drag_enabled:I = 0xa

.field public static final DragSortListView_drag_handle_id:I = 0xe

.field public static final DragSortListView_drag_scroll_start:I = 0x1

.field public static final DragSortListView_drag_start_mode:I = 0xd

.field public static final DragSortListView_drop_animation_duration:I = 0x9

.field public static final DragSortListView_fling_handle_id:I = 0xf

.field public static final DragSortListView_float_alpha:I = 0x6

.field public static final DragSortListView_float_background_color:I = 0x3

.field public static final DragSortListView_max_drag_scroll_speed:I = 0x2

.field public static final DragSortListView_remove_animation_duration:I = 0x8

.field public static final DragSortListView_remove_enabled:I = 0xc

.field public static final DragSortListView_remove_mode:I = 0x4

.field public static final DragSortListView_slide_shuffle_speed:I = 0x7

.field public static final DragSortListView_sort_enabled:I = 0xb

.field public static final DragSortListView_track_drag_sort:I = 0x5

.field public static final DragSortListView_use_default_controller:I = 0x11

.field public static final IconPreference:[I

.field public static final IconPreference_altLink:I = 0x3

.field public static final IconPreference_category:I = 0x4

.field public static final IconPreference_company:I = 0x5

.field public static final IconPreference_description:I = 0x6

.field public static final IconPreference_filter:I = 0x2

.field public static final IconPreference_icon:I = 0x0

.field public static final IconPreference_stars:I = 0x1

.field public static final TimeLayout:[I

.field public static final TimeLayout_gravity:I = 0x0

.field public static final TimeLayout_timeOffset:I = 0x1

.field public static final TimeView:[I

.field public static final TimeView_fontPath:I = 0x4

.field public static final TimeView_template:I = 0x3

.field public static final TimeView_textArray:I = 0x1

.field public static final TimeView_textSize:I = 0x0

.field public static final TimeView_timeType:I = 0x2

.field public static final WatchFace:[I

.field public static final WatchFace_numColumns:I = 0x0

.field public static final WatchFace_numRows:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1982
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/smartconnect/smartwatch2/R$styleable;->DragSortListView:[I

    .line 2273
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonymobile/smartconnect/smartwatch2/R$styleable;->IconPreference:[I

    .line 2380
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonymobile/smartconnect/smartwatch2/R$styleable;->TimeLayout:[I

    .line 2442
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonymobile/smartconnect/smartwatch2/R$styleable;->TimeView:[I

    .line 2577
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonymobile/smartconnect/smartwatch2/R$styleable;->WatchFace:[I

    return-void

    .line 1982
    nop

    :array_0
    .array-data 4
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
        0x7f010020
        0x7f010021
    .end array-data

    .line 2273
    :array_1
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
    .end array-data

    .line 2380
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data

    .line 2442
    :array_3
    .array-data 4
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 2577
    :array_4
    .array-data 4
        0x7f01000e
        0x7f01000f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

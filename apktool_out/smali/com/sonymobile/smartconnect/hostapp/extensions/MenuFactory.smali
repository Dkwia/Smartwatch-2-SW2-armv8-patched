.class public Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;
.super Ljava/lang/Object;
.source "MenuFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Z)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    .locals 40
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "inflater"    # Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .param p3, "menuItems"    # [Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    .param p4, "offline"    # Z

    .prologue
    .line 43
    new-instance v30, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .local v30, "menuView":Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 46
    .local v14, "hostAppRes":Landroid/content/res/Resources;
    const/high16 v36, 0x7f0c0000

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v25

    .line 48
    .local v25, "maxWidth":I
    const v36, 0x7f0c0001

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v23

    .line 50
    .local v23, "maxHeight":I
    const/16 v24, 0x32

    .line 51
    .local v24, "maxMeasuredItemWidth":I
    const/16 v26, 0x0

    .line 53
    .local v26, "menuHasText":Z
    const/16 v27, 0x0

    .line 54
    .local v27, "menuIndex":I
    move-object/from16 v7, p3

    .local v7, "arr$":[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    array-length v0, v7

    move/from16 v22, v0

    .local v22, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v22

    if-ge v15, v0, :cond_5

    aget-object v28, v7, v15

    .line 55
    .local v28, "menuItem":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v17, "itemView":Landroid/widget/RelativeLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 57
    const v36, 0x7f0b0017

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v36

    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 59
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;->addView(Landroid/view/View;)V

    .line 61
    const/4 v11, 0x0

    .line 63
    .local v11, "contentView":Landroid/view/View;
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->isText()Z

    move-result v36

    if-eqz v36, :cond_3

    .line 64
    const/16 v26, 0x1

    .line 65
    new-instance v34, Landroid/widget/TextView;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v34, "textView":Landroid/widget/TextView;
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->getText()Ljava/lang/CharSequence;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->setSingleLine()V

    .line 68
    const/16 v36, 0x0

    const v37, 0x7f0c000d

    move/from16 v0, v37

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    if-eqz p4, :cond_2

    .line 71
    const v36, 0x7f0b0016

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :goto_1
    move-object/from16 v11, v34

    .line 97
    .end local v34    # "textView":Landroid/widget/TextView;
    :goto_2
    if-lez v27, :cond_0

    .line 98
    new-instance v8, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    .local v8, "border1":Landroid/view/View;
    const v36, 0x7f0b0018

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v36, -0x1

    const/16 v37, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v20, "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v36, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v9, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    .local v9, "border2":Landroid/view/View;
    const v36, 0x7f0b0019

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    new-instance v21, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v36, -0x1

    const/16 v37, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v21, "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v36, 0x3

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v37

    move-object/from16 v0, v21

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .end local v8    # "border1":Landroid/view/View;
    .end local v9    # "border2":Landroid/view/View;
    .end local v20    # "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "layoutParams2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v36, -0x2

    const/16 v37, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v19, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v36, 0xd

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    if-eqz v11, :cond_1

    .line 119
    const/high16 v32, -0x80000000

    .line 120
    .local v32, "mode":I
    move/from16 v0, v25

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v35

    .line 121
    .local v35, "widthMS":I
    move/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 122
    .local v13, "heightMS":I
    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 123
    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v25

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 125
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 127
    invoke-static {}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v()Z

    move-result v36

    if-eqz v36, :cond_1

    .line 128
    const-string v36, "Item width: %d."

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const-string v36, "Max measured menu item width: %d."

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Lcom/sonymobile/smartconnect/hostapp/Dbg;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .end local v13    # "heightMS":I
    .end local v32    # "mode":I
    .end local v35    # "widthMS":I
    :cond_1
    add-int/lit8 v27, v27, 0x1

    .line 54
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 73
    .end local v19    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v34    # "textView":Landroid/widget/TextView;
    :cond_2
    const v36, 0x7f0b0015

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 77
    .end local v34    # "textView":Landroid/widget/TextView;
    :cond_3
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v16, "imageView":Landroid/widget/ImageView;
    new-instance v18, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;

    invoke-direct/range {v18 .. v18}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;-><init>()V

    .line 79
    .local v18, "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    invoke-virtual/range {v28 .. v28}, Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;->getImageUri()Landroid/net/Uri;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setUri(Landroid/net/Uri;)V

    .line 84
    const/16 v36, 0x28

    const/16 v37, 0x28

    sget-object v38, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;->DOWNSCALE_KEEPING_ASPECT_RATIO:Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;

    move-object/from16 v0, v18

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->setTargetSize(IILcom/sonymobile/smartconnect/hostapp/extensions/LayoutData$ScaleOption;)V

    .line 85
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;->getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    if-eqz p4, :cond_4

    .line 89
    new-instance v10, Landroid/graphics/ColorMatrix;

    invoke-direct {v10}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 90
    .local v10, "colorMatrix":Landroid/graphics/ColorMatrix;
    sget-object v36, Lcom/sonymobile/smartconnect/hostapp/util/BitmapUtils;->GRAY_MATRIX:[F

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 91
    new-instance v12, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v12, v10}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 92
    .local v12, "filter":Landroid/graphics/ColorMatrixColorFilter;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    .end local v10    # "colorMatrix":Landroid/graphics/ColorMatrix;
    .end local v12    # "filter":Landroid/graphics/ColorMatrixColorFilter;
    :cond_4
    move-object/from16 v11, v16

    goto/16 :goto_2

    .line 135
    .end local v11    # "contentView":Landroid/view/View;
    .end local v16    # "imageView":Landroid/widget/ImageView;
    .end local v17    # "itemView":Landroid/widget/RelativeLayout;
    .end local v18    # "layoutData":Lcom/sonymobile/smartconnect/hostapp/extensions/LayoutData;
    .end local v28    # "menuItem":Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;
    :cond_5
    new-instance v33, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 136
    .local v33, "rootView":Landroid/widget/RelativeLayout;
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRight(I)V

    .line 137
    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBottom(I)V

    .line 139
    const/16 v6, 0x32

    .line 140
    .local v6, "TEXT_MENU_MARGIN":I
    const/16 v5, 0x19

    .line 141
    .local v5, "ICON_MENU_MARGIN":I
    if-eqz v26, :cond_6

    const/16 v29, 0x32

    .line 142
    .local v29, "menuMargin":I
    :goto_3
    new-instance v31, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v36, v24, v29

    move/from16 v0, v25

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    const/16 v37, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v31, "menuViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v36, 0x9

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 146
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;->layout(Landroid/view/View;)V

    .line 150
    return-object v30

    .line 141
    .end local v29    # "menuMargin":I
    .end local v31    # "menuViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/16 v29, 0x19

    goto :goto_3
.end method

.method public createOffline(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "inflater"    # Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .param p3, "menuItems"    # [Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;->create(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Z)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    move-result-object v0

    return-object v0
.end method

.method public createOnline(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "inflater"    # Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;
    .param p3, "menuItems"    # [Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/smartconnect/hostapp/extensions/MenuFactory;->create(Landroid/content/Context;Lcom/sonymobile/smartconnect/hostapp/layout/ExtensionLayoutInflater;[Lcom/sonymobile/smartconnect/hostapp/extensions/control/MenuItem;Z)Lcom/sonymobile/smartconnect/hostapp/extensions/control/ExtensionMenuLayout;

    move-result-object v0

    return-object v0
.end method

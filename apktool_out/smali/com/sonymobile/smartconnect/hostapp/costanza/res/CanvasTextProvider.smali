.class public Lcom/sonymobile/smartconnect/hostapp/costanza/res/CanvasTextProvider;
.super Ljava/lang/Object;
.source "CanvasTextProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/text/TextPaint;I)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "textPaint"    # Landroid/text/TextPaint;
    .param p6, "availableWidth"    # I

    .prologue
    .line 32
    new-instance v11, Landroid/text/TextPaint;

    move-object/from16 v0, p5

    invoke-direct {v11, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 33
    .local v11, "localTextPaint":Landroid/text/TextPaint;
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v11}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    mul-float v15, v1, v2

    .line 34
    .local v15, "pixelsToShade":F
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    .line 36
    .local v8, "characters":I
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    move/from16 v0, p6

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 37
    invoke-virtual {v11}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v12

    .line 39
    .local v12, "align":Landroid/graphics/Paint$Align;
    const/4 v4, 0x0

    .line 41
    .local v4, "shaderStopX":F
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v12, v1, :cond_1

    .line 42
    move/from16 v0, p6

    int-to-float v1, v0

    add-float v4, p3, v1

    move v13, v8

    .line 54
    .end local v8    # "characters":I
    .local v13, "characters":I
    :goto_0
    new-instance v1, Landroid/graphics/LinearGradient;

    sub-float v2, v4, v15

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move v8, v13

    .line 57
    .end local v4    # "shaderStopX":F
    .end local v12    # "align":Landroid/graphics/Paint$Align;
    .end local v13    # "characters":I
    .restart local v8    # "characters":I
    :cond_0
    const/4 v7, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 58
    return-void

    .line 43
    .restart local v4    # "shaderStopX":F
    .restart local v12    # "align":Landroid/graphics/Paint$Align;
    :cond_1
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne v12, v1, :cond_2

    .line 44
    const/4 v1, 0x1

    new-array v14, v1, [F

    .line 45
    .local v14, "measureWidth":[F
    const/4 v1, 0x1

    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v8

    .line 47
    const/4 v1, 0x0

    aget v1, v14, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float v4, p3, v1

    move v13, v8

    .line 48
    .end local v8    # "characters":I
    .restart local v13    # "characters":I
    goto :goto_0

    .line 49
    .end local v13    # "characters":I
    .end local v14    # "measureWidth":[F
    .restart local v8    # "characters":I
    :cond_2
    const/4 v1, 0x1

    new-array v14, v1, [F

    .line 50
    .restart local v14    # "measureWidth":[F
    const/4 v1, 0x1

    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v1, v2, v14}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v8

    move v13, v8

    .end local v8    # "characters":I
    .restart local v13    # "characters":I
    goto :goto_0
.end method

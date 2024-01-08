.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Length"
.end annotation


# instance fields
.field unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

.field value:F


# direct methods
.method constructor <init>(F)V
    .locals 1

    .line 1339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1329
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    .line 1330
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->px:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    .line 1340
    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    .line 1341
    sget-object p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->px:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    return-void
.end method

.method constructor <init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V
    .locals 1

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1329
    iput v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    .line 1330
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->px:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    .line 1334
    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    .line 1335
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    return-void
.end method


# virtual methods
.method floatValue()F
    .locals 1

    .line 1346
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return v0
.end method

.method floatValue(F)F
    .locals 2

    .line 1426
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVG$Unit:[I

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1444
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return p1

    .line 1439
    :pswitch_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v0, p1

    return v0

    .line 1437
    :pswitch_1
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr v0, p1

    return v0

    .line 1435
    :pswitch_2
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr v0, p1

    return v0

    .line 1433
    :pswitch_3
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr v0, p1

    return v0

    .line 1431
    :pswitch_4
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    return v0

    .line 1429
    :cond_0
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F
    .locals 5

    .line 1396
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_2

    .line 1398
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1400
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return p1

    .line 1401
    :cond_0
    iget v0, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    .line 1402
    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    cmpl-float v1, v0, p1

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_1

    .line 1404
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr p1, v0

    div-float/2addr p1, v2

    return p1

    :cond_1
    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 1405
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v3, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v0, v3

    double-to-float p1, v0

    .line 1406
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    return v0

    .line 1408
    :cond_2
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result p1

    return p1
.end method

.method floatValue(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;F)F
    .locals 2

    .line 1415
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_0

    .line 1417
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    return p1

    .line 1419
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result p1

    return p1
.end method

.method floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F
    .locals 2

    .line 1352
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$1;->$SwitchMap$com$brakefield$infinitestudio$image$svg$androidsvg$SVG$Unit:[I

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1376
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return p1

    .line 1371
    :pswitch_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1373
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return p1

    .line 1374
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->width:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    .line 1369
    :pswitch_1
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr v0, p1

    return v0

    .line 1367
    :pswitch_2
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr v0, p1

    return v0

    .line 1365
    :pswitch_3
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr v0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr v0, p1

    return v0

    .line 1363
    :pswitch_4
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr v0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr v0, p1

    return v0

    .line 1361
    :pswitch_5
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr v0, p1

    return v0

    .line 1359
    :pswitch_6
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentFontXHeight()F

    move-result p1

    mul-float/2addr v0, p1

    return v0

    .line 1357
    :pswitch_7
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result p1

    mul-float/2addr v0, p1

    return v0

    .line 1355
    :pswitch_8
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method floatValueY(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F
    .locals 2

    .line 1383
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->percent:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_1

    .line 1384
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1386
    iget p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    return p1

    .line 1387
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;->height:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    .line 1389
    :cond_1
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->floatValueX(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVGAndroidRenderer;)F

    move-result p1

    return p1
.end method

.method isNegative()Z
    .locals 2

    .line 1455
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isZero()Z
    .locals 2

    .line 1450
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->unit:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

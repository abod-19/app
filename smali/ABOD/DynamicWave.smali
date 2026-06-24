.class public LABOD/DynamicWave;
.super Landroid/view/View;
.source "DynamicWave.java"


# static fields
.field public static final ʾᵔ:I

.field public static final ʾᵢ:I


# instance fields
.field public ʾˈ:F

.field public ʾˉ:I

.field public ʾˊ:I

.field public ʾˋ:[F

.field public ʾˎ:[F

.field public ʾˏ:[F

.field public ʾˑ:I

.field public ʾי:I

.field public ʾـ:I

.field public ʾٴ:I

.field public ʾᐧ:Landroid/graphics/Paint;

.field public ʾᴵ:Landroid/graphics/Paint;

.field public ʾᵎ:Landroid/graphics/DrawFilter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#ff1565c0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, LABOD/DynamicWave;->ʾᵔ:I

    const-string v0, "#42A5F5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, LABOD/DynamicWave;->ʾᵢ:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x7

    iput p1, p0, LABOD/DynamicWave;->ʾˑ:I

    const/4 p1, 0x5

    iput p1, p0, LABOD/DynamicWave;->ʾי:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, LABOD/DynamicWave;->ʾᐧ:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, LABOD/DynamicWave;->ʾᴵ:Landroid/graphics/Paint;

    iget-object p1, p0, LABOD/DynamicWave;->ʾᐧ:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, LABOD/DynamicWave;->ʾᴵ:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, LABOD/DynamicWave;->ʾᐧ:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, LABOD/DynamicWave;->ʾᴵ:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, LABOD/DynamicWave;->ʾᐧ:Landroid/graphics/Paint;

    sget p2, LABOD/DynamicWave;->ʾᵔ:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, LABOD/DynamicWave;->ʾᴵ:Landroid/graphics/Paint;

    sget p2, LABOD/DynamicWave;->ʾᵢ:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, LABOD/DynamicWave;->ʾᵎ:Landroid/graphics/DrawFilter;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, LABOD/DynamicWave;->ʾᵎ:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, LABOD/DynamicWave;->ʾ()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LABOD/DynamicWave;->ʾˉ:I

    if-ge v1, v2, :cond_0

    int-to-float v2, v1

    iget v3, p0, LABOD/DynamicWave;->ʾˊ:I

    int-to-float v4, v3

    iget-object v5, p0, LABOD/DynamicWave;->ʾˎ:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    const/high16 v9, 0x41a00000    # 20.0f

    sub-float v5, v4, v9

    int-to-float v7, v3

    iget-object v8, p0, LABOD/DynamicWave;->ʾᐧ:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v2

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v3, p0, LABOD/DynamicWave;->ʾˊ:I

    int-to-float v4, v3

    iget-object v5, p0, LABOD/DynamicWave;->ʾˏ:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    sub-float v5, v4, v9

    int-to-float v7, v3

    iget-object v8, p0, LABOD/DynamicWave;->ʾᴵ:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, LABOD/DynamicWave;->ʾـ:I

    iget v1, p0, LABOD/DynamicWave;->ʾˑ:I

    add-int/2addr p1, v1

    iput p1, p0, LABOD/DynamicWave;->ʾـ:I

    iget p1, p0, LABOD/DynamicWave;->ʾٴ:I

    iget v1, p0, LABOD/DynamicWave;->ʾי:I

    add-int/2addr p1, v1

    iput p1, p0, LABOD/DynamicWave;->ʾٴ:I

    iget p1, p0, LABOD/DynamicWave;->ʾـ:I

    if-lt p1, v2, :cond_1

    iput v0, p0, LABOD/DynamicWave;->ʾـ:I

    :cond_1
    iget p1, p0, LABOD/DynamicWave;->ʾٴ:I

    iget v1, p0, LABOD/DynamicWave;->ʾˉ:I

    if-le p1, v1, :cond_2

    iput v0, p0, LABOD/DynamicWave;->ʾٴ:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, LABOD/DynamicWave;->ʾˉ:I

    iput p2, p0, LABOD/DynamicWave;->ʾˊ:I

    iget p1, p0, LABOD/DynamicWave;->ʾˉ:I

    new-array p2, p1, [F

    iput-object p2, p0, LABOD/DynamicWave;->ʾˋ:[F

    new-array p2, p1, [F

    iput-object p2, p0, LABOD/DynamicWave;->ʾˎ:[F

    new-array p2, p1, [F

    iput-object p2, p0, LABOD/DynamicWave;->ʾˏ:[F

    int-to-double p1, p1

    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    double-to-float p1, p3

    iput p1, p0, LABOD/DynamicWave;->ʾˈ:F

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, LABOD/DynamicWave;->ʾˉ:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, LABOD/DynamicWave;->ʾˋ:[F

    const-wide/high16 p3, 0x4024000000000000L    # 10.0

    iget v0, p0, LABOD/DynamicWave;->ʾˈ:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p3

    const-wide/16 p3, 0x0

    add-double/2addr v0, p3

    double-to-float p3, v0

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʾ()V
    .locals 5

    iget-object v0, p0, LABOD/DynamicWave;->ʾˋ:[F

    array-length v1, v0

    iget v2, p0, LABOD/DynamicWave;->ʾـ:I

    sub-int/2addr v1, v2

    iget-object v3, p0, LABOD/DynamicWave;->ʾˎ:[F

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LABOD/DynamicWave;->ʾˋ:[F

    iget-object v2, p0, LABOD/DynamicWave;->ʾˎ:[F

    iget v3, p0, LABOD/DynamicWave;->ʾـ:I

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LABOD/DynamicWave;->ʾˋ:[F

    array-length v1, v0

    iget v2, p0, LABOD/DynamicWave;->ʾٴ:I

    sub-int/2addr v1, v2

    iget-object v3, p0, LABOD/DynamicWave;->ʾˏ:[F

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LABOD/DynamicWave;->ʾˋ:[F

    iget-object v2, p0, LABOD/DynamicWave;->ʾˏ:[F

    iget v3, p0, LABOD/DynamicWave;->ʾٴ:I

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

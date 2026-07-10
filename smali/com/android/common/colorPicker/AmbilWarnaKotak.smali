.class public Lcom/android/common/colorPicker/AmbilWarnaKotak;
.super Landroid/view/View;
.source "AmbilWarnaKotak.java"


# instance fields
.field dalam:Landroid/graphics/Shader;

.field hue:F

.field luar:Landroid/graphics/Shader;

.field paint:Landroid/graphics/Paint;

.field satudp:F

.field tmp00:[F

.field ukuranUiDp:F

.field ukuranUiPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/colorPicker/AmbilWarnaKotak;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/colorPicker/AmbilWarnaKotak;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->ukuranUiDp:F

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->tmp00:[F

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->satudp:F

    .line 32
    iget v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->ukuranUiDp:F

    iget v1, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->satudp:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->ukuranUiPx:F

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 39
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->ukuranUiPx:F

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->luar:Landroid/graphics/Shader;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->tmp00:[F

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->tmp00:[F

    const/4 v4, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v3, v4

    aput v7, v0, v2

    .line 45
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->tmp00:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->hue:F

    aput v3, v0, v2

    .line 46
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->tmp00:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 48
    .local v6, "rgb":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->ukuranUiPx:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->dalam:Landroid/graphics/Shader;

    .line 49
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->luar:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->dalam:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 51
    .local v8, "shader":Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    iget v3, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->ukuranUiPx:F

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->ukuranUiPx:F

    iget-object v5, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method setHue(F)V
    .locals 0
    .param p1, "hue"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/android/common/colorPicker/AmbilWarnaKotak;->hue:F

    .line 58
    invoke-virtual {p0}, Lcom/android/common/colorPicker/AmbilWarnaKotak;->invalidate()V

    .line 59
    return-void
.end method

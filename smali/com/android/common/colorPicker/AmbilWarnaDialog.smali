.class public Lcom/android/common/colorPicker/AmbilWarnaDialog;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field hue:F

.field listener:Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;

.field panah:Landroid/widget/ImageView;

.field sat:F

.field satudp:F

.field tmp01:[F

.field ukuranUiDp:F

.field ukuranUiPx:F

.field val:F

.field viewHue:Landroid/view/View;

.field viewKeker:Landroid/widget/ImageView;

.field viewKotak:Lcom/android/common/colorPicker/AmbilWarnaKotak;

.field viewWarnaBaru:Landroid/view/View;

.field viewWarnaLama:Landroid/view/View;

.field warnaBaru:I

.field warnaLama:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/common/colorPicker/AmbilWarnaDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "listener"    # Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;

    .prologue
    const/4 v6, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v3, 0x43700000    # 240.0f

    iput v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiDp:F

    .line 167
    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    .line 41
    iput-object p3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->listener:Lcom/android/common/colorPicker/AmbilWarnaDialog$OnAmbilWarnaListener;

    .line 42
    iput p2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->warnaLama:I

    .line 43
    iput p2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->warnaBaru:I

    .line 44
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    invoke-static {p2, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 45
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    aget v3, v3, v6

    iput v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->hue:F

    .line 46
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->sat:F

    .line 47
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iput v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->val:F

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->satudp:F

    .line 50
    iget v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiDp:F

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->satudp:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    .line 51
    sget-object v3, Lcom/android/common/colorPicker/AmbilWarnaDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "satudp = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->satudp:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ukuranUiPx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 54
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    .line 58
    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/common/colorPicker/AmbilWarnaKotak;

    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewKotak:Lcom/android/common/colorPicker/AmbilWarnaKotak;

    .line 59
    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->panah:Landroid/widget/ImageView;

    .line 60
    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewWarnaLama:Landroid/view/View;

    .line 61
    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewWarnaBaru:Landroid/view/View;

    .line 62
    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewKeker:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p0}, Lcom/android/common/colorPicker/AmbilWarnaDialog;->letakkanPanah()V

    .line 65
    invoke-virtual {p0}, Lcom/android/common/colorPicker/AmbilWarnaDialog;->letakkanKeker()V

    .line 66
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewKotak:Lcom/android/common/colorPicker/AmbilWarnaKotak;

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->hue:F

    invoke-virtual {v3, v4}, Lcom/android/common/colorPicker/AmbilWarnaKotak;->setHue(F)V

    .line 67
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewWarnaLama:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewWarnaBaru:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    new-instance v4, Lcom/android/common/colorPicker/AmbilWarnaDialog$1;

    invoke-direct {v4, p0}, Lcom/android/common/colorPicker/AmbilWarnaDialog$1;-><init>(Lcom/android/common/colorPicker/AmbilWarnaDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewKotak:Lcom/android/common/colorPicker/AmbilWarnaKotak;

    new-instance v4, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;

    invoke-direct {v4, p0}, Lcom/android/common/colorPicker/AmbilWarnaDialog$2;-><init>(Lcom/android/common/colorPicker/AmbilWarnaDialog;)V

    invoke-virtual {v3, v4}, Lcom/android/common/colorPicker/AmbilWarnaKotak;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 126
    const v4, 0x7f0d00c5

    new-instance v5, Lcom/android/common/colorPicker/AmbilWarnaDialog$3;

    invoke-direct {v5, p0}, Lcom/android/common/colorPicker/AmbilWarnaDialog$3;-><init>(Lcom/android/common/colorPicker/AmbilWarnaDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 134
    const v4, 0x7f0d00c4

    new-instance v5, Lcom/android/common/colorPicker/AmbilWarnaDialog$4;

    invoke-direct {v5, p0}, Lcom/android/common/colorPicker/AmbilWarnaDialog$4;-><init>(Lcom/android/common/colorPicker/AmbilWarnaDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 124
    iput-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/android/common/colorPicker/AmbilWarnaDialog;)I
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/common/colorPicker/AmbilWarnaDialog;->hitungWarna()I

    move-result v0

    return v0
.end method

.method private hitungWarna()I
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->hue:F

    aput v2, v0, v1

    .line 170
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->sat:F

    aput v2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->val:F

    aput v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->tmp01:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected letakkanKeker()V
    .locals 6

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    .line 158
    iget v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->sat:F

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    mul-float v1, v3, v4

    .line 159
    .local v1, "x":F
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->val:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    mul-float v2, v3, v4

    .line 161
    .local v2, "y":F
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewKeker:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 162
    .local v0, "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    add-float v3, v1, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 163
    add-float v3, v2, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 164
    iget-object v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->viewKeker:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method

.method protected letakkanPanah()V
    .locals 5

    .prologue
    .line 148
    iget v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    iget v3, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->hue:F

    iget v4, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 149
    .local v1, "y":F
    iget v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->ukuranUiPx:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->panah:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 152
    .local v0, "layoutParams":Landroid/widget/AbsoluteLayout$LayoutParams;
    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 153
    iget-object v2, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->panah:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/common/colorPicker/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 177
    return-void
.end method

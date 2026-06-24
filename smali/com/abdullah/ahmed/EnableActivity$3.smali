.class Lcom/abdullah/ahmed/EnableActivity$3;
.super Ljava/lang/Object;
.source "EnableActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/EnableActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/EnableActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/EnableActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/EnableActivity$3;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/EnableActivity$3;)Lcom/abdullah/ahmed/EnableActivity;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15

    .prologue
    .line 204
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/abdullah/ahmed/EnableActivity$3;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 205
    iget-object v0, p0, Lcom/abdullah/ahmed/EnableActivity$3;->this$0:Lcom/abdullah/ahmed/EnableActivity;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/EnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 206
    sget v1, Lcom/abdullah/ahmed/R$layout;->ah_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 207
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    sget v0, Lcom/abdullah/ahmed/R$id;->lin_close:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 210
    sget v1, Lcom/abdullah/ahmed/R$id;->lin_background:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 211
    sget v2, Lcom/abdullah/ahmed/R$id;->lin_dark:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 212
    sget v3, Lcom/abdullah/ahmed/R$id;->lin_purple:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 213
    sget v4, Lcom/abdullah/ahmed/R$id;->lin_red:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 214
    sget v5, Lcom/abdullah/ahmed/R$id;->lin_white:I

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 215
    sget v6, Lcom/abdullah/ahmed/R$id;->lin_teal:I

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 216
    sget v7, Lcom/abdullah/ahmed/R$id;->lin_grey:I

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 217
    sget v8, Lcom/abdullah/ahmed/R$id;->lin_pink:I

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 218
    sget v9, Lcom/abdullah/ahmed/R$id;->lin_blue:I

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 219
    sget v10, Lcom/abdullah/ahmed/R$id;->lin_a:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 220
    sget v10, Lcom/abdullah/ahmed/R$id;->lin_b:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 221
    sget v10, Lcom/abdullah/ahmed/R$id;->lin_dblue:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 222
    sget v13, Lcom/abdullah/ahmed/R$id;->lin_yellow:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 223
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 224
    const-string v14, "#ffffffff"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 225
    const/high16 v14, 0x41700000    # 15.0f

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 226
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 229
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 230
    const-string v14, "#ffffffff"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 231
    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 232
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 235
    const-string v13, "#212121"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 236
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 237
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 240
    const-string v13, "#9C27B0"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 241
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 242
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 245
    const-string v13, "#FFFFFF"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 246
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 247
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 250
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 251
    const-string v13, "#F44336"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 252
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 253
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 256
    const-string v13, "#009688"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 257
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 258
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 261
    const-string v13, "#757575"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 262
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 263
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 266
    const-string v13, "#D81B60"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 267
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 268
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 271
    const-string v13, "#2196F3"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 272
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 275
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 276
    const-string v13, "#FF203040"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 277
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 278
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 281
    const-string v13, "#FFC107"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 282
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 283
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    new-instance v1, Lcom/abdullah/ahmed/EnableActivity$3$1;

    invoke-direct {v1, p0, v12}, Lcom/abdullah/ahmed/EnableActivity$3$1;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$2;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$2;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$3;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$3;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$4;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$4;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$5;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$5;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$6;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$6;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$7;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$7;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$8;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$8;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$9;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$9;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$10;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$10;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    new-instance v0, Lcom/abdullah/ahmed/EnableActivity$3$11;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/EnableActivity$3$11;-><init>(Lcom/abdullah/ahmed/EnableActivity$3;)V

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 402
    return-void
.end method

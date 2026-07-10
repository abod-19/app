.class Lcom/abdullah/ahmed/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/abdullah/ahmed/MainActivity;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity$2;->this$0:Lcom/abdullah/ahmed/MainActivity;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/MainActivity$2;)Lcom/abdullah/ahmed/MainActivity;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$2;->this$0:Lcom/abdullah/ahmed/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity$2;->this$0:Lcom/abdullah/ahmed/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 177
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$2;->this$0:Lcom/abdullah/ahmed/MainActivity;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    sget v1, Lcom/abdullah/ahmed/R$layout;->ah_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 179
    invoke-virtual {v12, v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v0, Lcom/abdullah/ahmed/R$id;->lin_close:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 182
    sget v1, Lcom/abdullah/ahmed/R$id;->lin_background:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 183
    sget v2, Lcom/abdullah/ahmed/R$id;->lin_dark:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 184
    sget v3, Lcom/abdullah/ahmed/R$id;->lin_purple:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 185
    sget v4, Lcom/abdullah/ahmed/R$id;->lin_red:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 186
    sget v5, Lcom/abdullah/ahmed/R$id;->lin_white:I

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 187
    sget v6, Lcom/abdullah/ahmed/R$id;->lin_teal:I

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 188
    sget v7, Lcom/abdullah/ahmed/R$id;->lin_grey:I

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 189
    sget v8, Lcom/abdullah/ahmed/R$id;->lin_pink:I

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 190
    sget v9, Lcom/abdullah/ahmed/R$id;->lin_blue:I

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 191
    sget v10, Lcom/abdullah/ahmed/R$id;->lin_a:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 192
    sget v10, Lcom/abdullah/ahmed/R$id;->lin_b:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 193
    sget v10, Lcom/abdullah/ahmed/R$id;->lin_dblue:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 194
    sget v13, Lcom/abdullah/ahmed/R$id;->lin_yellow:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 195
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 196
    const-string v14, "#ffffffff"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 197
    const/high16 v14, 0x41700000    # 15.0f

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 198
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const/high16 v13, 0x40a00000    # 5.0f

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 201
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 202
    const-string v14, "#ffffffff"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 203
    const/high16 v14, 0x41a00000    # 20.0f

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 204
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 207
    const-string v13, "#212121"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 208
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 212
    const-string v13, "#9C27B0"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 213
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 214
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 217
    const-string v13, "#FFFFFF"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 218
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 219
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 222
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 223
    const-string v13, "#F44336"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 224
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 225
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 228
    const-string v13, "#009688"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 229
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 230
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 233
    const-string v13, "#757575"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 234
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 235
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 237
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 238
    const-string v13, "#D81B60"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 239
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 240
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 243
    const-string v13, "#2196F3"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 244
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 245
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 247
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 248
    const-string v13, "#FF203040"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 249
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 250
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 253
    const-string v13, "#FFC107"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 254
    const/high16 v13, 0x43b40000    # 360.0f

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 255
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    new-instance v1, Lcom/abdullah/ahmed/MainActivity$2$1;

    invoke-direct {v1, p0, v12}, Lcom/abdullah/ahmed/MainActivity$2$1;-><init>(Lcom/abdullah/ahmed/MainActivity$2;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$2;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$2;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$3;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$3;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$4;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$4;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$5;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$5;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$6;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$6;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$7;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$7;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$8;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$8;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$9;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$9;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$10;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$10;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$2$11;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$2$11;-><init>(Lcom/abdullah/ahmed/MainActivity$2;)V

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 374
    return-void
.end method

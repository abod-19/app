.class Lcom/abdullah/ahmed/MainActivity$3;
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
    iput-object p1, p0, Lcom/abdullah/ahmed/MainActivity$3;->this$0:Lcom/abdullah/ahmed/MainActivity;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/MainActivity$3;)Lcom/abdullah/ahmed/MainActivity;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$3;->this$0:Lcom/abdullah/ahmed/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 380
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/abdullah/ahmed/MainActivity$3;->this$0:Lcom/abdullah/ahmed/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 381
    iget-object v0, p0, Lcom/abdullah/ahmed/MainActivity$3;->this$0:Lcom/abdullah/ahmed/MainActivity;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 382
    sget v1, Lcom/abdullah/ahmed/R$layout;->ah_about:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 383
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 384
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    sget v0, Lcom/abdullah/ahmed/R$id;->lin_close:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 386
    sget v1, Lcom/abdullah/ahmed/R$id;->lin_background:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 387
    sget v2, Lcom/abdullah/ahmed/R$id;->lin_wa:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 388
    sget v3, Lcom/abdullah/ahmed/R$id;->lin_you:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 389
    sget v4, Lcom/abdullah/ahmed/R$id;->lin_insta:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 390
    sget v7, Lcom/abdullah/ahmed/R$id;->lin_tele:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 391
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 392
    const-string v8, "#ffffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 393
    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 394
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 397
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 398
    const-string v8, "#ffffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 399
    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 400
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    new-instance v1, Lcom/abdullah/ahmed/MainActivity$3$1;

    invoke-direct {v1, p0, v6}, Lcom/abdullah/ahmed/MainActivity$3$1;-><init>(Lcom/abdullah/ahmed/MainActivity$3;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$3$2;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$3$2;-><init>(Lcom/abdullah/ahmed/MainActivity$3;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$3$3;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$3$3;-><init>(Lcom/abdullah/ahmed/MainActivity$3;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$3$4;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$3$4;-><init>(Lcom/abdullah/ahmed/MainActivity$3;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    new-instance v0, Lcom/abdullah/ahmed/MainActivity$3$5;

    invoke-direct {v0, p0}, Lcom/abdullah/ahmed/MainActivity$3$5;-><init>(Lcom/abdullah/ahmed/MainActivity$3;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 435
    return-void
.end method

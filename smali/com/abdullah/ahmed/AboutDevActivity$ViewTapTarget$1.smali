.class Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->onReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iput-object p2, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->val$runnable:Ljava/lang/Runnable;

    .line 2054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2058
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2059
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2060
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v7

    aget v4, v0, v8

    .line 2061
    aget v5, v0, v7

    iget-object v6, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v6, v6, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v0, v0, v8

    iget-object v6, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v6, v6, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v0, v6

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2060
    iput-object v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->bounds:Landroid/graphics/Rect;

    .line 2063
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2065
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2066
    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2067
    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v3, v3, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    .line 2068
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v0, v0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v1, v1, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;

    iget-object v2, v2, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2072
    return-void
.end method

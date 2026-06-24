.class Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewUtil"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isLaidOut(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1999
    const/4 v0, 0x1

    return v0
.end method

.method static onLaidOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 2002
    invoke-static {p0}, Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2020
    :goto_0
    return-void

    .line 2006
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2007
    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil$1;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .prologue
    .line 2024
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2025
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2029
    :goto_0
    return-void

    .line 2027
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static removeView(Landroid/view/ViewManager;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2031
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2035
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;
.super Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;
.source "AboutDevActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abdullah/ahmed/AboutDevActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewTapTarget"
.end annotation


# instance fields
.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2045
    invoke-direct {p0, p2, p3}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2046
    if-nez p1, :cond_0

    .line 2047
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given null view to target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2049
    :cond_0
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    .line 2050
    return-void
.end method


# virtual methods
.method public onReady(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;->view:Landroid/view/View;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;

    invoke-direct {v1, p0, p1}, Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget$1;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$ViewTapTarget;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$ViewUtil;->onLaidOut(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2074
    return-void
.end method

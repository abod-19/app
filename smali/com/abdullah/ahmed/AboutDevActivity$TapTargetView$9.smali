.class Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;
.super Ljava/lang/Object;
.source "AboutDevActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

.field private final synthetic val$boundingParent:Landroid/view/ViewGroup;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;


# direct methods
.method constructor <init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    iput-object p2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->val$target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iput-object p3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->val$context:Landroid/content/Context;

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;)Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-static {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->access$1(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->this$1:Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;

    invoke-virtual {v0}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView;->updateTextLayouts()V

    .line 1430
    iget-object v0, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->val$target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    new-instance v1, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;

    iget-object v2, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->val$target:Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;

    iget-object v3, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->val$boundingParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;->val$context:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9$1;-><init>(Lcom/abdullah/ahmed/AboutDevActivity$TapTargetView$9;Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/abdullah/ahmed/AboutDevActivity$TapTarget;->onReady(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
